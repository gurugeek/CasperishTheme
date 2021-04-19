// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CasperishTheme",
    products: [
        .library(
            name: "CasperishTheme",
            targets: ["CasperishTheme"]),
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.6.0"),
        .package(name: "ReadingTimePublishPlugin", url: "https://github.com/alexito4/ReadingTimePublishPlugin", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "CasperishTheme",
            dependencies: ["Publish", "ReadingTimePublishPlugin"]),
        .testTarget(
            name: "CasperishThemeTests",
            dependencies: ["CasperishTheme"]),
    ]
)
