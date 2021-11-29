// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let analyticsEventJoinedRoom = try? newJSONDecoder().decode(AnalyticsEventJoinedRoom.self, from: jsonData)

import Foundation

/// Triggered when the user joins a room.
// MARK: - AnalyticsEventJoinedRoom
public struct AnalyticsEventJoinedRoom: Codable {
    public let eventName: AnalyticsEventEventName
    /// Whether the room is a DM.
    public let isDM: Bool
    /// The size of the room.
    public let roomSize: AnalyticsEventRoomSize

    public init(eventName: AnalyticsEventEventName, isDM: Bool, roomSize: AnalyticsEventRoomSize) {
        self.eventName = eventName
        self.isDM = isDM
        self.roomSize = roomSize
    }
}

public enum AnalyticsEventEventName: String, Codable {
    case joinedRoom = "JoinedRoom"
}

/// The size of the room.
public enum AnalyticsEventRoomSize: String, Codable {
    case elevenToOneHundred = "ElevenToOneHundred"
    case moreThanAThousand = "MoreThanAThousand"
    case oneHundredAndOneToAThousand = "OneHundredAndOneToAThousand"
    case threeToTen = "ThreeToTen"
    case two = "Two"
}
