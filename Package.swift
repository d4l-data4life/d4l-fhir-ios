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
            name: "Data4LifeFHIRCore",
            targets: ["Data4LifeFHIRCore"]),
        .library(
            name: "Data4LifeFHIR",
            targets: ["Data4LifeFhirSPMFrameworks"]),
        .library(
            name: "ModelsR4",
            targets: ["ModelsR4SPMFrameworks"]),
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
            name: "Data4LifeFHIRCore",
            url: "https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/0.21.0/Data4LifeFHIRCore-xcframework-0.21.0.zip",
            checksum: "9d8c83105126c9beb0f76ef6aea2825def63d3464b7314242abda636e5825aef"
        ),
        .binaryTarget(
            name: "Data4LifeFHIR",
            url: "https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/0.21.0/Data4LifeFHIR-xcframework-0.21.0.zip",
            checksum: "753ee8b7d319ddca011ac039652b668fedec2a628f99229ac01317241664ca52"
        ),
        .binaryTarget(
            name: "ModelsR4",
            url: "https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/0.21.0/ModelsR4-xcframework-0.21.0.zip",
            checksum: "cb817c27563f323420abac138ebe5bd0feedebeb8319df224e16e99ae91cd36b"
        ),
        .target(name: "Data4LifeFhirSPMFrameworks",
                dependencies: [
                    .product(name: "Data4LifeSDKUtils",
                             package: "Data4LifeSDKUtils",
                             condition: .when(platforms: [.iOS])),
                    .target(name: "Data4LifeFHIR"),
                    .target(name: "Data4LifeFHIRCore")
                ],
                path: "FhirSPMFrameworks"),
        .target(name: "ModelsR4SPMFrameworks",
                dependencies: [
                    .product(name: "Data4LifeSDKUtils",
                             package: "Data4LifeSDKUtils",
                             condition: .when(platforms: [.iOS])),
                    .target(name: "ModelsR4"),
                    .target(name: "Data4LifeFHIRCore")
                ],
                path: "ModelsR4SPMFrameworks"),
        .testTarget(name: "Data4LifeFhirTests",
                    dependencies: ["Data4LifeFhirSPMFrameworks"],
                    path: "FhirStu3/Tests",
                    exclude: ["Info.plist"],
                    resources: [.process("Examples")]),
        .testTarget(name: "ModelsR4Tests",
                    dependencies: ["ModelsR4"],
                    path: "FhirR4/Tests",
                    exclude: ["Info.plist"],
                    resources: [.process("Resources")]),
        .testTarget(name: "Data4LifeFhirCoreTests",
                    dependencies: ["Data4LifeFHIRCore", "Data4LifeFHIR", "ModelsR4"],
                    path: "Data4LifeFhirCoreTests",
                    exclude: ["Info.plist"])
    ]
)
