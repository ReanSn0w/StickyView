// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Sticky",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "Sticky",
            targets: ["Sticky"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Sticky",
            dependencies: []),
    ]
)
