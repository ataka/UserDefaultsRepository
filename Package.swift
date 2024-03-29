// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UserDefaultsRepository",
    products: [
        .library(
            name: "UserDefaultsRepository",
            targets: ["UserDefaultsRepository"]),
    ],
    targets: [
        .target(
            name: "UserDefaultsRepository"),
        .testTarget(
            name: "UserDefaultsRepositoryTests",
            dependencies: ["UserDefaultsRepository"]),
    ]
)
