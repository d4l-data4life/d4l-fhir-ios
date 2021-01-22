require "fileutils"
require 'xcodeproj'
require 'zip'
require 'json'

module Fastlane
  module Actions
    class FhirR4HelpersAction < Action
      def self.run(params)
        sourcesPath = './FhirR4/Sources/Generated'
        generate_fhir_helpers(sourcesPath)
        integrate_files_xcode(sourcesPath)
      end

      def self.generate_fhir_helpers(sourcesPath)
          modelsPath = "FhirR4\/Sources\/ModelsR4\/"
          templatesPath = "FhirR4\/Sources\/Templates\/"
          sh "sourcery --sources #{modelsPath} --templates #{templatesPath} --output #{sourcesPath}"
          UI.success "Done generating FHIR R4 Helpers ✅"
      end

      def self.integrate_files_xcode(sourcesPath)
        project_file = './Data4LifeFHIR' + '.xcodeproj'

        project = Xcodeproj::Project.open(project_file)
        target = project.native_targets
               .select { |target| target.name == 'ModelsR4' }
               .first

        old_helpers_group = project.main_group.find_subpath(File.join("FhirR4/Sources/Generated"), true)
        if old_helpers_group
           old_helpers_group.clear
           old_helpers_group.remove_from_project
        end

        helpers_group = project.main_group.find_subpath(File.join('FhirR4/Sources'), true).new_group('Generated')
        addfiles("#{sourcesPath}/*", helpers_group, target)
        project.save(project_file)
        UI.success "Done integrating helpers in Xcode Project ✅"
      end

      def self.addfiles(dir, group, target)
          UI.message("Adding files into " + group.display_name + " group")
          Dir.glob(dir) do |fileName|
              next if fileName == '.' or fileName == '.DS_Store'
              sourcefile_extension = ".swift"
              unpathedFile =  File.basename(fileName)
              group_path = group.real_path + group.display_name
              group_file = group.new_file(group.display_name + "/" + unpathedFile)
              if fileName.include? sourcefile_extension
                  target.add_file_references([group_file])
              else
                  target.add_resources([group_file])
              end
          end
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Generates and integrates FHIR R4 Helpers for Swift"
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
        ["alessioborraccino"]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
