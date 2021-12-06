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
            url: "https://d4l-ios-artifact-repository.s3.eu-central-1.amazonaws.com/d4l-data4life/d4l-fhir-ios/Data4LifeFHIRCore-xcframework-v0.23.1.zip",
            checksum: "5d3c61182269c831b0523476b65127e2d255b70745ed18758aea53b78a1995ea"
        ),
        .binaryTarget(
            name: "Data4LifeFHIR",
            url: "https://d4l-ios-artifact-repository.s3.eu-central-1.amazonaws.com/d4l-data4life/d4l-fhir-ios/Data4LifeFHIR-xcframework-v0.23.1.zip",
            checksum: "fab55ab7e09ef0aa772e87ea66778311d38b4fac37327ce2385d8bbda19c1b49"
        ),
        .binaryTarget(
            name: "ModelsR4",
            url: "https://d4l-ios-artifact-repository.s3.eu-central-1.amazonaws.com/d4l-data4life/d4l-fhir-ios/ModelsR4-xcframework-v0.23.1.zip",
            checksum: "3c12a28802bcb20c645e3237bc57d269ebe0136e66fb04c00b23af122afb7b5a"
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
