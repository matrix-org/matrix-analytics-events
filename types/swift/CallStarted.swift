// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let analyticsEventCallStarted = try? newJSONDecoder().decode(AnalyticsEventCallStarted.self, from: jsonData)

import Foundation

/// Triggered when a call is started.
// MARK: - AnalyticsEventCallStarted
public struct AnalyticsEventCallStarted: Codable {
    public let eventName: AnalyticsEventCallStartedEventName
    /// Whether its a video call or not.
    public let isVideo: Bool
    /// Number of participants in the call.
    public let numParticipants: Int
    /// Whether this user placed it.
    public let placed: Bool

    public init(eventName: AnalyticsEventCallStartedEventName, isVideo: Bool, numParticipants: Int, placed: Bool) {
        self.eventName = eventName
        self.isVideo = isVideo
        self.numParticipants = numParticipants
        self.placed = placed
    }
}

public enum AnalyticsEventCallStartedEventName: String, Codable {
    case callStarted = "CallStarted"
}
