# d4l-fhir-ios
Minimal FHIR standard models and data types for iOS

[![CocoaPods Compatible](https://img.shields.io/badge/pod-v0.17.0-blue.svg)](https://github.com/CocoaPods/CocoaPods)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
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
* iOS 12.0+
* Swift 5.3+

* [Python 3.3 - 3.7.x](https://www.python.org/)
* [Ruby](https://www.ruby-lang.org/)
* [Bundler](http://bundler.io/)### Requirements

### Installation

#### CocoaPods

To install with [CocoaPods](https://cocoapods.org/) add the following lines (according to which model version you use) to the podfile.

```ruby
source 'https://github.com/d4l-data4life/d4l-cocoapods-specs.git'

pod 'Data4LifeFHIR', '~> 0.17.0'
pod 'ModelsR4', '~> 0.17.0'
```

**Note**: For more info check [README](https://github.com/d4l-data4life/d4l-cocoapods-specs/blob/master/README.md).

#### Carthage

To install with [Carthage](https://github.com/Carthage/Carthage) add the following line to the Cartfile:

```ruby
github "d4l-data4life/d4l-utils-ios"
```

Run `carthage` to build the framework and drag the built `Data4LifeFHIR.framework` and/or `ModelsR4.framework` into your Xcode project. Follow [build instructions](https://github.com/Carthage/Carthage#getting-started).

#### Swift Package Manager

To install with [Swift Package Manager](https://swift.org/package-manager/) add this package as a dependency in `Package.swift`:

```swift
.package(url: "https://github.com/d4l-data4life/d4l-fhir-ios.git", .upToNextMinor(from: "0.17.0"))
```

### Building

#### Install dependencies
```
bundler install
```
#### Install Carthage

```sh
brew install carthage
```
*Note*: For other installation methods check [README](https://github.com/Carthage/Carthage#installing-carthage).

#### Build frameworks
*Note*: Since from XCode 12 Carthage packaging does not work anymore, please use the script.
```sh
./wcarthage.sh bootstrap --use-ssh --platform iOS
```

### Generating models

#### Static files
These directories are not generated and are not meant to be removed from the project. They include FHIR DateTime encoding/tests and helpers/tests for contained resources.
* `FhirStu3/Sources/Helpers`
* `FhirStu3/Tests/Helpers`
* `FhirStu3/Tests/PrimitiveTests`
* `FhirR4`

#### Generate stu3 models and embed into Xcode project
1. Manually delete all of the generated models from the project
2. Run fastlane to generate models
```
fastlane generate_models
```

**Note**: It's possible to generated models without embeding into Xcode project, check Fastlane [README](fastlane/README.md) for more information

## Issues
### FHIR Stu3 standard
- String / Integer / Decimal / Bool / URL / Base64Binary should inherit Element
- All properties dealing with binary data are represented as base64 String
- R4 Models are currently copied and pasted from Apples framework because of incompatibilty with Cocoapods (a podspec cant distribute contained swift packages)
- R4 Models are missing keypaths and NSCopying support yet
