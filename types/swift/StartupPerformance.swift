// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let startupPerformance = try StartupPerformance(json)

import Foundation

/// Used to track the performance of startup operations.
// MARK: - StartupPerformance
struct StartupPerformance {
    /// Client defined, can be used for debugging.
    let context: String?
    /// The length of the operation in milliseconds.
    let durationMS: Double
    let eventName: EventName
    /// The operation that was profiled.
    let operation: Operation
}

enum EventName {
    case startupPerformance
}

/// The operation that was profiled.
enum Operation {
    case incrementalSync
    case initialSync
    case launchScreen
    case mountData
    case storePreload
}
