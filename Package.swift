// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.22.0"
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
            targets: ["Data4LifeFHIR"]),
        .library(
            name: "ModelsR4",
            targets: ["ModelsR4"]),
    ],
    dependencies: [
        .package(name: "Data4LifeSDKUtils",
                 url: "https://github.com/d4l-data4life/d4l-utils-ios.git",
                 .upToNextMinor(from: "0.6.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "Data4LifeFHIRCore",
            url: "https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/\(version)/Data4LifeFHIRCore-xcframework-\(version).zip",
            checksum: "6be5c0f68d6179ce2391614c14b2a264ad7ef63dabda87fb28a6dda7e50c4165"
        ),
        .binaryTarget(
            name: "Data4LifeFHIR",
            url: "https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/\(version)/Data4LifeFHIR-xcframework-\(version).zip",
            checksum: "b5253498cc4581eb9766d07bce7ba701cde48d659e8cf8d4c5f11251134502c4"
        ),
        .binaryTarget(
            name: "ModelsR4",
            url: "https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/\(version)/ModelsR4-xcframework-\(version).zip",
            checksum: "af66684d497583c637a6c81643c23b83298249680b444ac98745e6881c08b02d"
        ),
        .target(name: "Data4LifeSDKUtilsFHIR",
                dependencies: [
                    .product(name: "Data4LifeSDKUtils",
                             package: "Data4LifeSDKUtils",
                             condition: .when(platforms: [.iOS]))
                ],
                path: "SwiftPMDummyTargets/SDKUtilsDependency"),
        .target(name: "Data4LifeFhirAllFrameworks",
                dependencies: [
                    .target(name: "Data4LifeSDKUtilsFHIR"),
                    .target(name: "Data4LifeFHIR"),
                    .target(name: "Data4LifeFHIRCore")
                ],
                path: "SwiftPMDummyTargets/FhirAllFrameworks"),
        .target(name: "ModelsR4AllFrameworks",
                dependencies: [
                    .target(name: "Data4LifeSDKUtilsFHIR"),
                    .target(name: "ModelsR4"),
                    .target(name: "Data4LifeFHIRCore"),
                ],
                path: "SwiftPMDummyTargets/ModelsR4AllFrameworks"),
        .testTarget(name: "Data4LifeFhirTests",
                    dependencies: ["Data4LifeFhirAllFrameworks"],
                    path: "FhirStu3/Tests",
                    exclude: ["Info.plist"],
                    resources: [.process("Examples")]),
        .testTarget(name: "ModelsR4Tests",
                    dependencies: ["ModelsR4AllFrameworks"],
                    path: "FhirR4/Tests",
                    exclude: ["Info.plist"],
                    resources: [.process("Resources")]),
        .testTarget(name: "Data4LifeFhirCoreTests",
                    dependencies: ["Data4LifeFHIRCore", "Data4LifeFHIR", "ModelsR4"],
                    path: "Data4LifeFhirCoreTests",
                    exclude: ["Info.plist"])
    ]
)
