// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
let package = Package(
    name: "Data4LifeFHIR",
    platforms: [
        .iOS(.v13)
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
            targets: ["ModelsR4"])
    ],
    dependencies: [
        .package(name: "Data4LifeSDKUtils",
                 url: "https://github.com/d4l-data4life/d4l-utils-ios.git",
                 .upToNextMinor(from: "0.7.0"))
    ],
    targets: [
        .binaryTarget(
            name: "Data4LifeFHIRCore",
            url: "https://d4l-ios-artifact-repository.s3.eu-central-1.amazonaws.com/d4l-data4life/d4l-fhir-ios/Data4LifeFHIRCore-xcframework-enable-bitcode.zip",
            checksum: "93964d8ac1783af947dd856b43a7f45e4e4aa731ceabc215657b265058574665"
        ),
        .binaryTarget(
            name: "Data4LifeFHIR",
            url: "https://d4l-ios-artifact-repository.s3.eu-central-1.amazonaws.com/d4l-data4life/d4l-fhir-ios/Data4LifeFHIR-xcframework-enable-bitcode.zip",
            checksum: "67584d1d5aeb60e3c200d61b648cf7afef85b62fa2d6738a8ac21af33f2eb9c9"
        ),
        .binaryTarget(
            name: "ModelsR4",
            url: "https://d4l-ios-artifact-repository.s3.eu-central-1.amazonaws.com/d4l-data4life/d4l-fhir-ios/ModelsR4-xcframework-enable-bitcode.zip",
            checksum: "2f1245ed712b0fdbbfe9db964251c6231a816c7a86d431fe9717c2df3bb2b4d9"
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
                    .target(name: "Data4LifeFHIRCore")
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
