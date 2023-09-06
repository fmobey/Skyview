// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Skyview",
    products: [
        .library(
            name: "Skyview",
            targets: ["Skyview"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", .upToNextMajor(from: "5.1.0")),
    ],
    targets: [
        .target(
            name: "Skyview",
            dependencies: [
                "SnapKit",
                "SDWebImage",
            ]
        ),
        .testTarget(
            name: "SkyviewTests",
            dependencies: ["Skyview"]
        ),
    ]
)
