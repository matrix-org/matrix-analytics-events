// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "AnalyticsEvents",
    products: [
        .library(name: "AnalyticsEvents", targets: ["AnalyticsEvents"])
    ],
    targets: [
        .target(name: "AnalyticsEvents", path: "types/swift")
    ]
)
