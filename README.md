# d4l-fhir-ios
Minimal FHIR standard models and data types for iOS

[![CocoaPods Compatible](https://img.shields.io/badge/pod-v0.21.1-blue.svg)](https://github.com/CocoaPods/CocoaPods)
[![Swift Package Manager compatible](https://img.shields.io/badge/SPM-compatible-brightgreen.svg?style=flat&colorA=28a745&&colorB=4E4E4E)](https://github.com/apple/swift-package-manager)
[![License](https://img.shields.io/badge/license-PRIVATE-blue.svg)](https://github.com/d4l-data4life/d4l-fhir-ios/blob/main/LICENSE)


### Description
[fastlane](https://fastlane.tools/) is used to manage fhir-parser and integrate generated models into Xcode project

[fhir-parser](https://github.com/gesundheitscloud/fhir-parser) is used to generate Swift models from JSON examples for latest FHIR standard

[Swift-FHIR](https://github.com/smart-on-fhir/Swift-FHIR) was used as inspiration for this project

[Apple-FHIR](https://github.com/apple/FHIRModels) R4 models were (tepmorarily) ported over because we needed a pod version of it

Required resources include:
* Base classes for primitive data types
* Rules and templates for mapping
* Settings with custom profiles and build targets

**Note**: Check [parser-resources](parser-resources/) for more info

## Usage
### Requirements
* Xcode 12+
* iOS 13.0+
* Swift 5.3+

* [Python 3.3 - 3.7.x](https://www.python.org/)
* [Ruby](https://www.ruby-lang.org/)
* [Bundler](http://bundler.io/)### Requirements

### Installation

#### CocoaPods

To install with [CocoaPods](https://cocoapods.org/) add the following lines (according to which model version you use) to the podfile.

```ruby
source 'https://github.com/d4l-data4life/d4l-cocoapods-specs.git'

pod 'Data4LifeFHIR', '~> 0.21.1'
pod 'ModelsR4', '~> 0.21.1'
```

**Note**: For more info check [README](https://github.com/d4l-data4life/d4l-cocoapods-specs/blob/master/README.md).

#### Swift Package Manager

To install with [Swift Package Manager](https://swift.org/package-manager/) add this package as a dependency in `Package.swift`:

```swift
.package(url: "https://github.com/d4l-data4life/d4l-fhir-ios.git", .upToNextMinor(from: "0.21.1"))
.package(url: "https://github.com/d4l-data4life/d4l-utils-ios.git", .upToNextMinor(from: "0.6.0"))
```

### Building

#### Install dependencies
```
bundler install
```

### Generating models

#### Install Sourcery

```sh
brew install sourcery
```
*Note*: For other installation methods check [README](https://github.com/krzysztofzablocki/Sourcery).

#### Static files
These directories are not generated and are not meant to be removed from the project. They include FHIR DateTime encoding/tests and helpers/tests for contained resources.
* `FhirStu3/Sources/Helpers`
* `FhirStu3/Tests/Helpers`
* `FhirStu3/Tests/PrimitiveTests`
* `FhirR4`

#### Generate stu3 models and embed into Xcode project
1. Run fastlane to generate STU3 models, R4 helpers and R4 tests  
```
fastlane generate_all
```

**Note**: It's possible to generated separately STU3 Models, R4 helpers or R4 tests, check Fastlane [README](fastlane/README.md) for more information

## Issues
### FHIR Stu3 standard
- String / Integer / Decimal / Bool / URL / Base64Binary should inherit Element
- All properties dealing with binary data are represented as base64 String
- R4 Models are currently copied and pasted from Apples framework because of incompatibilty with Cocoapods (a podspec cant distribute contained swift packages)
- R4 Models are missing keypaths and NSCopying support yet
