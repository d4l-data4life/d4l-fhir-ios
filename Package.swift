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
            targets: ["Data4LifeFHIR","Data4LifeFHIRCore","Data4LifeSDKUtils"]),
        .library(
            name: "ModelsR4",
            targets: ["ModelsR4","Data4LifeFHIRCore","Data4LifeSDKUtils"]),
    ],
    dependencies: [
        .package(name: "Data4LifeSDKUtils",
                 url: "git@github.com:d4l-data4life/d4l-utils-ios.git",
                 .upToNextMinor(from: "0.6.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "Data4LifeFHIRCore",
            url: "https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/0.21.1/Data4LifeFHIRCore-xcframework-0.21.1.zip",
            checksum: "88d44f782c360ac811fe2a35afeda496c742074073b139927ae923153e9c1899"
        ),
        .binaryTarget(
            name: "Data4LifeFHIR",
            url: "https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/0.21.1/Data4LifeFHIR-xcframework-0.21.1.zip",
            checksum: "09268a6b0856219b5aa1a5bf4caec98b847529ff0dec38db49063ad8ff556df1"
        ),
        .binaryTarget(
            name: "ModelsR4",
            url: "https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/0.21.1/ModelsR4-xcframework-0.21.1.zip",
            checksum: "1732c9c3e368fefcc6d7cba3203ec642b66ef52832901fd9c011eeaf88187697"
        ),
        .target(name: "Data4LifeSDKUtils",
                dependencies: [
                    .product(name: "Data4LifeSDKUtils",
                             package: "Data4LifeSDKUtils",
                             condition: .when(platforms: [.iOS]))
                ],
                path: "FhirSPMFrameworks"),
        .target(name: "Data4LifeFhirAllFrameworks",
                dependencies: [
                    .target(name: "Data4LifeSDKUtils")
                    .target(name: "Data4LifeFHIR"),
                    .target(name: "Data4LifeFHIRCore")
                ],
                path: "FhirSPMFrameworks"),
        .target(name: "ModelsR4AllFrameworks",
                dependencies: [
                    .target(name: "Data4LifeSDKUtils"),
                    .target(name: "ModelsR4"),
                    .target(name: "Data4LifeFHIRCore"),
                ],
                path: "ModelsR4SPMFrameworks"),
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
