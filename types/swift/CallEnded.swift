// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let analyticsEventCallEnded = try? newJSONDecoder().decode(AnalyticsEventCallEnded.self, from: jsonData)

import Foundation

/// Triggered when a call has ended.
// MARK: - AnalyticsEventCallEnded
public struct AnalyticsEventCallEnded: Codable {
    /// The duration of the call in milliseconds.
    public let durationMs: Int
    public let eventName: AnalyticsEventEventName
    /// Whether its a video call or not.
    public let isVideo: Bool
    /// Number of participants in the call.
    public let numParticipants: Int
    /// Whether this user placed it.
    public let placed: Bool

    public init(durationMs: Int, eventName: AnalyticsEventEventName, isVideo: Bool, numParticipants: Int, placed: Bool) {
        self.durationMs = durationMs
        self.eventName = eventName
        self.isVideo = isVideo
        self.numParticipants = numParticipants
        self.placed = placed
    }
}

public enum AnalyticsEventEventName: String, Codable {
    case callEnded = "CallEnded"
}
