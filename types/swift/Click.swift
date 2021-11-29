// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let analyticsEventClick = try? newJSONDecoder().decode(AnalyticsEventClick.self, from: jsonData)

import Foundation

/// Triggered when the user clicks/taps on a UI element.
// MARK: - AnalyticsEventClick
public struct AnalyticsEventClick: Codable {
    public let eventName: AnalyticsEventEventName
    /// The index of the element, if its in a list of elements.
    public let index: Int?
    /// The unique name of this element.
    public let name: AnalyticsEventName

    public init(eventName: AnalyticsEventEventName, index: Int?, name: AnalyticsEventName) {
        self.eventName = eventName
        self.index = index
        self.name = name
    }
}

public enum AnalyticsEventEventName: String, Codable {
    case click = "Click"
}

/// The unique name of this element.
public enum AnalyticsEventName: String, Codable {
    case sendMessageButton = "SendMessageButton"
}
