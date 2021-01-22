// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Data4LifeFHIR",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "Data4LifeFHIR",
            type: .dynamic,
            targets: ["Data4LifeFHIR"]),
        .library(
            name: "ModelsR4",
            type: .dynamic,
            targets: ["ModelsR4"]),
    ],
    dependencies: [
        .package(name: "Data4LifeSDKUtils", url: "git@github.com:d4l-data4life/d4l-utils-ios.git", .upToNextMinor(from: "0.3.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Data4LifeFHIR",
            dependencies: ["Data4LifeSDKUtils"],
            path: "FhirStu3/Sources",
            exclude: ["Info.plist"]),
        .target(
            name: "ModelsR4",
            dependencies: ["Data4LifeSDKUtils"],
            path: "FhirR4/Sources",
            exclude: ["Info.plist","Templates"]),
        .testTarget(
            name: "Data4LifeFHIRTests",
            dependencies: ["Data4LifeFHIR"],
            path: "FhirStu3/Tests",
            exclude: ["Info.plist"],
            resources: [.process("Examples")]),
        .testTarget(
            name: "ModelsR4Tests",
            dependencies: ["ModelsR4"],
            path: "FhirR4/Tests",
            exclude: ["Info.plist"],
            resources: [.process("Resources")]),
    ]
)
