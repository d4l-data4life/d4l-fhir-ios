Pod::Spec.new do |s|
  s.name             = "Data4LifeFHIR"
  s.version          = "0.21.1"
  s.summary          = "Minimal FHIR standard models and data types for iOS"
  s.homepage         = "https://github.com/d4l-data4life/d4l-fhir-ios/"
  s.license          = { :type => 'LICENSE', :file => "LICENSE" }
  s.author           = { "D4L data4life gGmbH" => "contact@data4life.care" }

  s.source           = { :http => 'https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/' + s.version.to_s + '/XCFrameworks-' + s.version.to_s + '.zip' }
  s.swift_version    = '5.3'
  s.platform         = :ios, '13.0'
  s.requires_arc     = true
  s.cocoapods_version = '>= 1.10.0'

  s.vendored_frameworks = 'Data4LifeFHIR.xcframework'
  s.preserve_paths      = 'Data4LifeFHIR.xcframework'
  s.dependency 'Data4LifeSDKUtils', '0.6.0'
  s.dependency 'Data4LifeFHIRCore', s.version.to_s
end
