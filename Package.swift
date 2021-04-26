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
            targets: ["Data4LifeFHIRCore","Data4LifeSDKUtilsFHIR"]),
        .library(
            name: "Data4LifeFHIR",
            targets: ["Data4LifeFHIR"]),
        .library(
            name: "ModelsR4",
            targets: ["ModelsR4"]),
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
            checksum: "039b651664fc3227dc9c763740ea913992653a22ccdf8beb9d126884cd6f056c"
        ),
        .binaryTarget(
            name: "Data4LifeFHIR",
            url: "https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/0.21.1/Data4LifeFHIR-xcframework-0.21.1.zip",
            checksum: "3989145cb497142eb67fe782c5508b4f7eac8ce3a8b69eb5e0109e9e5baf7e57"
        ),
        .binaryTarget(
            name: "ModelsR4",
            url: "https://github.com/d4l-data4life/d4l-fhir-ios/releases/download/0.21.1/ModelsR4-xcframework-0.21.1.zip",
            checksum: "7df1706f5d5087cd3112db011a19fa36586080aa0eda12b8af85abd8cb8f4903"
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
