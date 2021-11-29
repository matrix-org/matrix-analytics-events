// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let analyticsEventCallError = try? newJSONDecoder().decode(AnalyticsEventCallError.self, from: jsonData)

import Foundation

/// Triggered when an error occurred in a call.
// MARK: - AnalyticsEventCallError
public struct AnalyticsEventCallError: Codable {
    public let eventName: AnalyticsEventEventName
    /// Whether its a video call or not.
    public let isVideo: Bool
    /// Number of participants in the call.
    public let numParticipants: Int
    /// Whether this user placed it.
    public let placed: Bool

    public init(eventName: AnalyticsEventEventName, isVideo: Bool, numParticipants: Int, placed: Bool) {
        self.eventName = eventName
        self.isVideo = isVideo
        self.numParticipants = numParticipants
        self.placed = placed
    }
}

public enum AnalyticsEventEventName: String, Codable {
    case callError = "CallError"
}
