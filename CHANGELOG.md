# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.19.0] - 2021-03-24
### Changed
- Changes podspec url to public one and updates utils dependency

## [0.18.0] - 2021-22-01
Adds `NSCopying` support for Fhir R4 Models
Adds autogeneration of Copying extension and its Tests

## [0.17.0] - 2020-12-01
Open sourced

## [0.16.1] - 2020-11-06
Adds support down to iOS 12 for ModelsR4 framework

## [0.16.0] - 2020-11-05
### Changed
- Reverts carthage support
- Removes swiftPM dependecies in project
- Adds Apples FHIR R4 models Libraries
- Changes support for Swift PM to distribute 2 libraries (stu3 and R4 separately)
- Changes support for Pod to distribute 2 libraries (stu3 and R4 separately)

## [0.15.0] - 2020-09-29
### Added
- Removes carthage support
- Adds Swift PM support

## [0.14.0] - 2020-07-21
### Added
- Changes FHIR uri type mapping from URL to String for correct mapping in case uri doesnt conform to Swifts URL style

## [0.13.0] - 2020-04-07
### Added
- Adds Keypath support for accessing properties by name

## [0.12.0] - 2020-03-26
### Added
- Add `StructureDefinition` and `ElementDefinition` resources

## [0.11.2] - 2020-01-31
### Changed
- Updates utils to 0.1.6

## [0.11.1] - 2020-01-31
### Changed
- Updates utils to 0.1.5

## [0.11.0] - 2020-01-29
### Changed
- Adds Attachment Helpers with tests
- Fixes Element Helper for Reference

## [0.10.1] - 2020-01-21
### Changed
- Adds Element Helpers

## [0.10.0] - 2019-12-06
### Changed
- Updates minimum iOS version to 11.0
- Updates Swift version to 5

## [0.9.1] - 2019-11-21
### Changed
- Removes every reference to HCFHIR

## [0.9.0] - 2019-11-18
### Changed
- Renamed Framework to Data4LifeFHIR


## [0.8.0] - 2019-03-27
### Changed
- Upgrade project to Swift 4.0

## [0.7.0] - 2019-03-26
### Added
- FHIR resources: Procedure

## [0.6.0] - 2019-03-15
### Changed
- Improved resource parsing using `AnyResource`
- Improved API for containing resources

## [0.5.0] - 2019-01-17
### Added
- FHIR resources: Questionnaire, QuestionnaireResponse, ContactDetail, UsageContext, ReferralRequest, ValueSet

## [0.4.0] - 2018-11-20
### Added
- FHIR resources: CarePlan, Patient, Medication, MedicationRequest, Dosage, CareTeam, Goal
- Add NSCopying conformance to all resources

### Changed
- All of the required properties are now optional due to issues with NSCopying conformance

## [0.3.0] - 2018-09-18
### Added
- CocoaPods support

### Fixed
- Model equality checks

## [0.2.1] - 2018-04-05
### Fixed
- FHIR date types parsing

## [0.2.0] - 2018-01-26
### Added
- FHIR resources: Condition, FamilyMemberHistory, ProcedureRequest, Provenance, Specimen, Substance
- Support for contained resources
- Parsing resources using AnyResource

## [0.1.7] - 2018-01-18
### Added
- Practitioner resource

## [0.1.6] - 2018-01-16
### Added
- Attach prebuilt universal binary to release page

### Changed
- Framework release script

## [0.1.5] - 2017-12-06
### Added
- Organization model

## [0.1.4] - 2017-12-06
### Added
- Observation and DiagnosticReport models

## [0.1.3] - 2017-11-29
### Fixed
- Encoding date data types

## [0.1.2] - 2017-11-28
### Added
- Primitive date types

## [0.1.1] - 2017-11-21
### Fixed
- Missing resourceType when encoding to JSON

## [0.1.0] - 2017-11-20
### Added
- FHIR models using Codable protocol

[Unreleased]: https://github.com/d4l-data4life/d4l-fhir-ios/releases/tag/0.18.0...master
[0.18.0]: https://github.com/d4l-data4life/d4l-fhir-ios/releases/tag/0.18.0
[0.17.0]: https://github.com/d4l-data4life/d4l-fhir-ios/releases/tag/0.17.0
[0.16.1]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.16.1
[0.16.0]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.16.0
[0.15.0]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.15.0
[0.14.0]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.14.0
[0.13.0]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.13.0
[0.12.0]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.12.0
[0.11.2]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.11.2
[0.11.1]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.11.1
[0.11.0]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.11.0
[0.10.1]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.10.1
[0.10.0]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.10.0
[0.9.1]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.9.1
[0.9.0]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.9.0
[0.8.0]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.8.0
[0.7.0]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.7.0
[0.6.0]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.6.0
[0.5.0]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.5.0
[0.4.0]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.4.0
[0.3.0]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.3.0
[0.2.1]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.2.1
[0.2.0]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.2.0
[0.1.7]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.1.7
[0.1.6]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.1.6
[0.1.5]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.1.5
[0.1.4]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.1.4
[0.1.3]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.1.3
[0.1.2]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.1.2
[0.1.1]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.1.1
[0.1.0]: https://github.com/gesundheitscloud/hc-fhir-ios/releases/tag/0.1.0
