Pod::Spec.new do |s|
  s.name             = "Data4LifeFHIRCore"
  s.version          = "0.21.1"
  s.summary          = "FHIR helpers for common fhir models"
  s.homepage         = "https://github.com/d4l-data4life/d4l-fhir-ios/"
  s.license          = { :type => 'LICENSE', :file => "LICENSE" }
  s.author           = { "D4L data4life gGmbH" => "contact@data4life.care" }

  s.source           = { :http => 'https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/' + s.version.to_s + '/XCFrameworks-' + s.version.to_s + '.zip' }
  s.swift_version    = '5.3'
  s.platform         = :ios, '13.0'
  s.requires_arc     = true
  s.cocoapods_version = '>= 1.10.1'

  s.vendored_frameworks = 'Data4LifeFHIRCore.xcframework'
  s.preserve_paths      = 'Data4LifeFHIRCore.xcframework'

end
