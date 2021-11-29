// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let syncPerformance = try SyncPerformance(json)

import Foundation

/// Used to track the performance of sync operations.
// MARK: - SyncPerformance
struct SyncPerformance {
    /// Client defined, can be used for debugging.
    let context: String?
    /// The length of the operation in milliseconds.
    let durationMS: Double
    let eventName: EventName
    /// The operation that was profiled.
    let operation: Operation
}

enum EventName {
    case syncPerformance
}

/// The operation that was profiled.
enum Operation {
    case initialSyncParsing
    case initialSyncRequest
}
