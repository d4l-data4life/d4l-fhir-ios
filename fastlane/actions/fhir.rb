require "fileutils"
require 'xcodeproj'
require 'zip'

module Fastlane
  module Actions
    class FhirAction < Action
      def self.run(params)
        xcode_embed = params[:xcode]
        generate_fhir_models
        integrate_json_examples(xcode_embed)
        integrate_fhir_models(xcode_embed)
        clean_tmp_files
      end

      def self.generate_fhir_models
          fhir_parser = './fhir-parser'
          resources_path = './parser-resources'
          fhir_parser_repo = "https://github.com/gesundheitscloud/fhir-parser.git"

          # Setup the parser
          sh "rm -rf #{fhir_parser}"
          sh "git clone -b python-3.7.x #{fhir_parser_repo} #{fhir_parser}"

          # Configure our mappings
          FileUtils.copy("#{resources_path}/mappings.py", "#{fhir_parser}/mappings.py")
          FileUtils.copy("#{resources_path}/settings.py", "#{fhir_parser}/settings.py")

          # Create a cache for the FHIR JSON models
          cache_src = File.join(resources_path, "hl7.org", "fhir", "STU3")
          cache_dst = File.join(fhir_parser, "downloads")
          FileUtils.mkdir(cache_dst)
          FileUtils.copy(File.join(cache_src, "version.info"), cache_dst)
          Zip::File.open(File.join(cache_src, "examples-json.zip")) do |zipfile|
            zipfile.each do |f|
              zipfile.extract(f, File.join(cache_dst, f.name))
            end
          end

          # Generate files
          Dir.chdir("#{fhir_parser}") do
            sh "test -d venv || python3 -m venv venv"
            sh "venv/bin/pip install -Ur requirements.txt"
            sh "venv/bin/python generate.py"
          end

          UI.success "Done generating FHIR models ✅"
      end

      def self.fetch_group(main_group, group)
        return main_group.find_subpath(group, true) || main_group.new_group(group)
      end

      def self.integrate_fhir_models(xcode_embed)
          # Define filenames to include
          primitive_datetypes = ["FHIRAbstractBase", "FHIRAbstractResource", "FHIRPrimitive", "Base64Binary", "DateAndTime"]
          complex_datatypes = ["Ratio", "Period", "Range", "Attachment", "Identifier", "HumanName", "Annotation", "Address", "ContactPoint", "SampledData", "Money", "Count", "Duration", "Quantity", "Distance", "Age", "CodeableConcept", "Signature", "Coding", "Timing", "Element"]
          special_datatypes = ["Reference", "Narrative", "Extension", "Resource", "Meta"]
          enums = ["CodeSystems"]
          models = ["BackboneElement", "DocumentReference", "DomainResource", "Observation", "DiagnosticReport", "Organization", "Practitioner", "Procedure", "ProcedureRequest", "Specimen", "FamilyMemberHistory", "Provenance", "Substance", "Condition", "CarePlan", "Medication", "MedicationRequest", "Patient", "Dosage", "CareTeam", "Goal", "Questionnaire", "QuestionnaireResponse", "ContactDetail", "UsageContext", "ReferralRequest", "ValueSet", "StructureDefinition", "ElementDefinition"]
          tests = ["DocumentReferenceTests", "ObservationTests", "DiagnosticReportTests", "OrganizationTests", "PractitionerTests", "ProcedureTests", "ProcedureRequestTests", "SpecimenTests", "FamilyMemberHistoryTests", "ProvenanceTests", "SubstanceTests", "ConditionTests", "CarePlanTests", "MedicationTests", "MedicationRequestTests", "PatientTests", "DosageTests", "CareTeamTests", "GoalTests", "QuestionnaireTests", "QuestionnaireResponseTests", "ReferralRequestTests", "ValueSetTests", "StructureDefinitionTests", "ElementDefinitionTests"]

          # Setup project
          project_file = './Data4LifeFHIR' + '.xcodeproj'
          project = Xcodeproj::Project.open(project_file)

          # Create new groups
          sources_group = project.main_group.find_subpath(File.join('FhirStu3/Sources'), true)
          tests_group = project.main_group.find_subpath(File.join('FhirStu3/Tests'), true).new_group('ModelTests')

          complex_group = fetch_group(sources_group ,'Complex')
          primitive_group = fetch_group(sources_group ,'Primitive')
          special_group = fetch_group(sources_group ,'Special')
          enum_group = fetch_group(sources_group ,'Enums')
          models_group = fetch_group(sources_group ,'Models')

          # Define whitelisted classnames for specific group
          include_data = {
            primitive_group => primitive_datetypes,
            complex_group => complex_datatypes,
            special_group => special_datatypes,
            enum_group => enums,
            models_group => models,
            tests_group => tests
          }

          generated_files_path = "./generated"
          generated_tests_path = "./generated_tests"

          # Include files into targets
          project.targets.each do |target|
            if target.name == 'Data4LifeFHIR'
              include_data.each do |group, whitelisted_classes|
                  addfiles("#{generated_files_path}/*", whitelisted_classes, group, target, xcode_embed)
              end
            elsif target.name == 'Data4LifeFHIRTests'
              include_data.each do |group, whitelisted_classes|
                addfiles("#{generated_tests_path}/*", whitelisted_classes, group, target, xcode_embed)
              end
            end
          end

          project.save(project_file)

          UI.success "Done organizing FHIR models ✅"
          if xcode_embed
            UI.success "FHIR models were embded into Xcodeproj ✅"
          end
      end

      def self.clean_tmp_files
        fhir_parser_path = './fhir-parser'
        generated_files_path = "./generated"
        generated_tests_path = "./generated_tests"

        sh "rm -rf #{fhir_parser_path}"
        sh "rm -rf #{generated_files_path}"
        sh "rm -rf #{generated_tests_path}"

        UI.success "Done cleaning temporary files ✅"
      end

      def self.addfiles(dir, whitelist, group, target, xcode_embed)
          # Create group directory
          group_path = group.real_path + group.display_name
          FileUtils.mkdir_p(group_path)

          # Move whitelisted classes and embed into the project
          UI.message("Adding files into " + group.display_name + " group")
          Dir.glob(dir) do |item|
            next if item == '.' or item == '.DS_Store'
            file_type = ".swift"
              if item.include? file_type
                classname =  File.basename(item, file_type)
                if whitelist.include? classname
                  # Move file
                  filename = classname + file_type
                  FileUtils.mv(item, group_path, force: true)
                  moved_file_path = group_path + filename

                  # Embed into project
                  if xcode_embed
                    group_file = group.new_file(moved_file_path)
                    target.add_file_references([group_file])
                  end
                end
              end
          end
      end

      def self.integrate_json_examples(xcode_embed)
        examples = ["condition", "provenance", "substance", "procedure", "procedurerequest", "familymemberhistory", "specimen", "practitioner", "organization", "observation", "diagnosticreport", "documentreference", "careplan", "medication", "medicationrequest", "patient", "dosage", "careteam", "goal", "questionnaire", "questionnaireresponse", "referralrequest", "valueset", "structuredefinition"]
        examples_dir  = Dir["./fhir-parser/downloads/*.json"]
        destination_dir = "./FhirStu3/Tests/Examples"

        # Setup project
        project_file = './Data4LifeFHIR' + '.xcodeproj'
        project = Xcodeproj::Project.open(project_file)

        # Create target group
        examples_group = project.main_group.find_subpath(File.join('FhirStu3/Tests'), true).new_group('Examples')
        test_target = project.targets.select { |target| target.name == "Data4LifeFHIRTests" }.first

        unless File.directory?(destination_dir)
          FileUtils.mkdir_p(destination_dir)
        end

        #Avoid adding duplicated json files
        includedPaths = Array[]

        examples_dir.each do |filename|
          examples.each do |example_name|
            basename = File.basename(filename)

            # Move JSON example and embed into the project
            if basename.include?(example_name) && basename.include?("example")
              full_path = destination_dir + "/" + basename
              full_path = File.expand_path(full_path)
              FileUtils.cp(filename, full_path)

              if xcode_embed
                unless includedPaths.include?(full_path)
                  includedPaths.push(full_path)
                  resource_reference = examples_group.new_file(full_path)
                  test_target.add_resources([resource_reference])
                end
              end
            end
          end
        end

        project.save(project_file)
        UI.success "Done copying FHIR JSON examples ✅"

        if xcode_embed
          UI.success "FHIR JSON examples were embded into Xcodeproj ✅"
        end
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Generates and integrates custom FHIR models for Swift from the JSON examples"
      end

      def self.output
        []
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :xcode,
                                       description: "Should FHIR models be integrated intro Xcodeproj? default=false",
                                       optional: true,
                                       default_value: false,
                                       is_string: false)
        ]
      end

      def self.authors
        # So no one will ever forget your contribution to fastlane :) You are awesome btw!
        ["nikriek", "ztepsa", "alessioborraccino"]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
