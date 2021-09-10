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
        .binaryTarget(
            name: "Data4LifeFHIRCore",
            url: "https://d4l-ios-artifact-repository.s3.eu-central-1.amazonaws.com/d4l-data4life/d4l-fhir-ios/Data4LifeFHIRCore-xcframework-v0.22.1.zip",
            checksum: "cf74007fe21d39414f80bdc986aaffb1b70a85a15aa1525d3524dbc34ec13f94"
        ),
        .binaryTarget(
            name: "Data4LifeFHIR",
            url: "https://d4l-ios-artifact-repository.s3.eu-central-1.amazonaws.com/d4l-data4life/d4l-fhir-ios/Data4LifeFHIR-xcframework-v0.22.1.zip",
            checksum: "9ae680cfa89867f6062beb571c3ec4181c469ecc3ae95cada0b9cf5610464789"
        ),
        .binaryTarget(
            name: "ModelsR4",
            url: "https://d4l-ios-artifact-repository.s3.eu-central-1.amazonaws.com/d4l-data4life/d4l-fhir-ios/ModelsR4-xcframework-v0.22.1.zip",
            checksum: "d965d9b1fceac60d1b01e6a44f193065692bc1177c22d1ed8da564367027b82e"
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
