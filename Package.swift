// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ImportTest",
    products: [
        .executable(name: "ImportTest", targets: ["ImportTest"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "ToImport"),
        .target(
            name: "ImportTest",
            dependencies: ["ToImport"]),
        .testTarget(
            name: "ImportTestTests",
            dependencies: ["ImportTest"]),
    ]
)
