// swift-tools-version: 5.6

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
