require "fileutils"
require 'xcodeproj'
require 'zip'
require 'json'

module Fastlane
  module Actions
    class FhirR4TestsAction < Action
      def self.run(params)
        generate_fhir_tests
      end

      def self.generate_fhir_tests
          resources_path = './parser-resources'
          cache_src = File.join(resources_path, "hl7.org", "fhir", "R4")
          cache_dst = File.join(resources_path, "hl7.org", "fhir", "R4", "cache")
          cache_dst_json = File.join(resources_path, "hl7.org", "fhir", "R4", "cache", "examples-json")
          xcode_resources_path = './FhirR4/Tests/Resources'
          xcode_tests_path = './FhirR4/Tests/Generated'
          resources_map = Hash.new
          # Setup the parser
          sh "rm -rf #{cache_dst}"
          sh "rm -rf #{xcode_resources_path}"
          sh "rm -rf #{xcode_tests_path}"
          # Create a cache for the FHIR JSON models

          FileUtils.mkdir(cache_dst)
          Zip::File.open(File.join(cache_src, "examples-json.zip")) do |zipfile|
            zipfile.each do |f|
              f_path=File.join(cache_dst, f.name)
              FileUtils.mkdir_p(File.dirname(f_path))
              zipfile.extract(f, f_path) unless File.exist?(f_path)
            end
          end

          Dir.mkdir("#{xcode_resources_path}") unless Dir.exist?("#{xcode_resources_path}")
          Dir.chdir("#{cache_dst_json}") do
             Dir.glob('*.json').each do|fileName|
               puts fileName
               jsonExampleData= File.read(fileName)
               resourceType = JSON.parse(jsonExampleData)["resourceType"]
               if !(resourceType.include? "Bundle")
                 resources_map[resourceType] = fileName
               end
             end
          end

          # Generate files
          Dir.mkdir("#{xcode_tests_path}") unless Dir.exist?("#{xcode_tests_path}")
          resources_map.each do |resourceType, fileName|
            FileUtils.mv("#{cache_dst_json}/#{fileName}", File.join(xcode_resources_path, fileName))
            fileData = makeFileData(resourceType, fileName)
            File.open("#{xcode_tests_path}/#{makeCamelCaseName(fileName)}+Test.swift", "w") { |f| f.write fileData }
          end

          sh "rm -rf #{cache_dst}"

          project_file = './Data4LifeFHIR' + '.xcodeproj'
          project = Xcodeproj::Project.open(project_file)
          target = project.native_targets
                 .select { |target| target.name == 'ModelsR4Tests' }
                 .first

          old_tests_group =project.main_group.find_subpath(File.join('FhirR4/Tests/Generated'), false)
          if old_tests_group
            target.source_build_phase.files.each do |sourceFile|
               next if sourceFile == 'ModelsR4Tests.swift' or sourceFile == 'ModelsR4Bundle.swift'
            end
             old_tests_group.clear
             old_tests_group.remove_from_project
          end

          old_test_resources_group = project.main_group.find_subpath(File.join('FhirR4/Tests/Resources'), false)
          if old_test_resources_group
              target.resources_build_phase.files.each do |resourceFile|
              end
             old_test_resources_group.clear
             old_test_resources_group.remove_from_project
          end

          tests_group = project.main_group.find_subpath(File.join('FhirR4/Tests'), true).new_group('Generated')
          test_resources_group = project.main_group.find_subpath(File.join('FhirR4/Tests'), true).new_group('Resources')
          addfiles("#{xcode_tests_path}/*", tests_group, target)
          addfiles("#{xcode_resources_path}/*", test_resources_group, target)

          project.save(project_file)
          UI.success "Done generating FHIR models ✅"
      end

      def self.addfiles(dir, group, target)
          # Move whitelisted classes and embed into the project
          UI.message("Adding files into " + group.display_name + " group")
          Dir.glob(dir) do |fileName|
              next if fileName == '.' or fileName == '.DS_Store'
              sourcefile_extension = ".swift"

                  unpathedFile =  File.basename(fileName)
                  group_path = group.real_path + group.display_name
                  puts group_path
                  group_file = group.new_file(group.display_name + "/" + unpathedFile)
                  puts group_file
                  if fileName.include? sourcefile_extension
                  target.add_file_references([group_file])
                else
                  target.add_resources([group_file])
                end

          end
      end

      def self.makeCamelCaseName(fileName)
        return fileName.split('-').collect(&:capitalize).join.split(".").first()
      end

      def self.makeFileData(resourceType, fileName)
        fileData = "
// Copyright (c) 2020 D4L data4life gGmbH
// All rights reserved.

// D4L owns all legal rights, title and interest in and to the Software Development Kit (\"SDK\"),
// including any intellectual property rights that subsist in the SDK.

// The SDK and its documentation may be accessed and used for viewing/review purposes only.
// Any usage of the SDK for other purposes, including usage for the development of
// applications/third-party applications shall require the conclusion of a license agreement
// between you and D4L.

// If you are interested in licensing the SDK for your own applications/third-party
// applications and/or if you’d like to contribute to the development of the SDK, please
// contact D4L by email to help@data4life.care.

import XCTest
@testable import ModelsR4


extension ModelsR4Tests {
    func test#{makeCamelCaseName(fileName)}() {
        do {
            let data = try bundle.loadJSONData(named: \"#{fileName}\")
            let instance = try decoder.decode(#{resourceType}.self, from: data)
            try runEncodableAndEqualityChecks(instance)
            try runCopyCheck(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}"

        return fileData
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
      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Generates and integrates FHIR R4 Tests for Swift from the JSON examples"
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
