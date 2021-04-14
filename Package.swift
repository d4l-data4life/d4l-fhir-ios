// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Data4LifeFHIR",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "Data4LifeFHIR",
            targets: ["Data4LifeFhirSPMFrameworks"]),
        .library(
            name: "ModelsR4",
            targets: ["ModelsR4"]),
    ],
    dependencies: [
        .package(name: "Data4LifeSDKUtils",
                 url: "git@github.com:d4l-data4life/d4l-utils-ios.git",
                 .upToNextMinor(from: "0.5.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
          name: "Data4LifeFHIR",
          url: "https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/0.20.0/Data4LifeFHIR-xcframework-0.20.0.zip",
          checksum: "b3eb7e04981891017aec1050f1551621447d3a745193a40643c368ee60b84e16"
        ),
        .binaryTarget(
            name: "ModelsR4",
            url: "https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/0.20.0/ModelsR4-xcframework-0.20.0.zip",
            checksum: "af182810f0e2ab04d2b473f6929a0b1177214a0095630095e297106df09533a5"
        ),
        .target(name: "Data4LifeFhirSPMFrameworks",
                dependencies: [
                    .product(name: "Data4LifeSDKUtils",
                             package: "Data4LifeSDKUtils",
                             condition: .when(platforms: [.iOS])),
                    .target(name: "Data4LifeFHIR")
                ],
                path: "FhirSPMFrameworks"),
        .testTarget(name: "Data4LifeFhirTests",
                    dependencies: ["Data4LifeFhirSPMFrameworks"],
                    path: "FhirStu3/Tests",
                    exclude: ["Info.plist"],
                    resources: [.process("Examples")]),
        .testTarget(name: "ModelsR4Tests",
                    dependencies: ["ModelsR4"],
                    path: "FhirR4/Tests",
                    exclude: ["Info.plist"],
                    resources: [.process("Resources")])
    ]
)
