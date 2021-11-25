// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let analyticsEventClick = try? newJSONDecoder().decode(AnalyticsEventClick.self, from: jsonData)

import Foundation

/// Triggered when the user clicks/taps on a UI element.
// MARK: - AnalyticsEventClick
public struct AnalyticsEventClick: Codable {
    public let eventName: AnalyticsEventClickEventName
    /// The index of the element, if its in a list of elements.
    public let index: Int?
    /// The unique name of this element.
    public let name: AnalyticsEventElementName

    public init(eventName: AnalyticsEventClickEventName, index: Int?, name: AnalyticsEventElementName) {
        self.eventName = eventName
        self.index = index
        self.name = name
    }
}

public enum AnalyticsEventClickEventName: String, Codable {
    case click = "Click"
}

/// The unique name of this element.
public enum AnalyticsEventElementName: String, Codable {
    case sendMessageButton = "SendMessageButton"
}
