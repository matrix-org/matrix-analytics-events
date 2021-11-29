// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let analyticsEventCreatedRoom = try? newJSONDecoder().decode(AnalyticsEventCreatedRoom.self, from: jsonData)

import Foundation

/// Triggered when the user creates a room.
// MARK: - AnalyticsEventCreatedRoom
public struct AnalyticsEventCreatedRoom: Codable {
    public let eventName: AnalyticsEventEventName
    /// Whether the room is a DM.
    public let isDM: Bool

    public init(eventName: AnalyticsEventEventName, isDM: Bool) {
        self.eventName = eventName
        self.isDM = isDM
    }
}

public enum AnalyticsEventEventName: String, Codable {
    case createdRoom = "CreatedRoom"
}
