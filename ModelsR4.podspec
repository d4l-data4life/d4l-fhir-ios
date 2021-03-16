Pod::Spec.new do |s|
  s.name             = "ModelsR4"
  s.version          = "0.19.0"
  s.summary          = "Apple Models for FHIRR4"
  s.homepage         = "https://github.com/d4l-data4life/d4l-fhir-ios/"
  s.license          = 'Private License'
  s.author           = { "D4L data4life gGmbH" => "contact@data4life.care" }

  s.source           = { :http => 'https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/0.19.0/XCFrameworks-0.19.0.zip' }
  s.swift_version    = '5.3'
  s.platform         = :ios, '12.0'
  s.requires_arc     = true
  s.cocoapods_version = '>= 1.10.0'

  s.vendored_frameworks = 'ModelsR4.xcframework'
  s.preserve_paths      = 'ModelsR4.xcframework', 'ModelsR4.dSYMs/ModelsR4.framework.ios-arm64.dSYM', 'ModelsR4.dSYMs/ModelsR4.framework.ios-arm64_x86_64-simulator.dSYM'
end
