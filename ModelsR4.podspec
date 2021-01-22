Pod::Spec.new do |s|
  s.name             = "ModelsR4"
  s.version          = "0.18.0"
  s.summary          = "Apple Models for FHIRR4"
  s.homepage         = "https://github.com/d4l-data4life/d4l-fhir-ios/"
  s.license          = 'Private License'
  s.author           = { "D4L data4life gGmbH" => "contact@data4life.care" }
  s.source           = { :git => "https://github.com/d4l-data4life/d4l-fhir-ios.git", :tag => s.version }
  s.swift_version    = '5.3'

  s.platform         = :ios, '12.0'
  s.requires_arc     = true
  s.source_files     = 'FhirR4/Sources/**/*.{swift,h,m}'
end
