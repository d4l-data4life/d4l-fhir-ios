Pod::Spec.new do |s|
  s.name             = "Data4LifeFHIR"
  s.version          = "0.19.0"
  s.summary          = "Minimal FHIR standard models and data types for iOS"
  s.homepage         = "https://github.com/d4l-data4life/d4l-fhir-ios/"
  s.license          = { :type => 'LICENSE', :file => "LICENSE" }
  s.author           = { "D4L data4life gGmbH" => "contact@data4life.care" }

  s.source           = { :http => 'https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/0.19.0/XCFrameworks-0.19.0.zip' }
  s.swift_version    = '5.3'
  s.platform         = :ios, '12.0'
  s.requires_arc     = true
  s.cocoapods_version = '>= 1.10.0'

  s.vendored_frameworks = 'Data4LifeFHIR.xcframework'
  s.preserve_paths      = 'Data4LifeFHIR.xcframework', 'Data4LifeFHIR.dSYMs/Data4LifeFHIR.framework.ios-arm64.dSYM', 'Data4LifeFHIR.dSYMs/Data4LifeFHIR.framework.ios-arm64_x86_64-simulator.dSYM'
  s.dependency 'Data4LifeSDKUtils', '0.4.0'

end
