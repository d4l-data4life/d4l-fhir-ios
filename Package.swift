// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Data4LifeFHIR",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "Data4LifeFHIR",
            targets: ["Data4LifeFHIRFrameworks"]),
        .library(
            name: "ModelsR4",
            targets: ["ModelsR4"]),
    ],
    dependencies: [
        .package(name: "Data4LifeSDKUtils",
                 url: "git@github.com:d4l-data4life/d4l-utils-ios.git",
                 .upToNextMinor(from: "0.4.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
          name: "Data4LifeFHIR",
          url: "https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/0.19.0/Data4LifeFHIR-xcframework-0.19.0.zip",
          checksum: "aa3d871f5dc57fb6b1e359fa4275e1e36cd8e1535786f106478d7cfbcc4ced29"
        ),
        .binaryTarget(
            name: "ModelsR4",
            url: "https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/0.19.0/ModelsR4-xcframework-0.19.0.zip",
            checksum: "fd900a118f796175f4c66f5ff3a73ac49552fcb8ec7f9eafba3b524e953eb0cc"
        ),
        .target(name: "Data4LifeFHIRFrameworks",
                dependencies: [
                    .product(name: "CryptoSwift",
                                         package: "Data4LifeSDKUtils",
                                         condition: .when(platforms: [.iOS])),
                    .product(name: "Data4LifeSDKUtils",
                             package: "Data4LifeSDKUtils",
                             condition: .when(platforms: [.iOS])),
                    .target(name: "Data4LifeFHIR")
                ],
                path: "FhirSPMFrameworks")
    ]
)
