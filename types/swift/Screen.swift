// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let analyticsEventScreen = try? newJSONDecoder().decode(AnalyticsEventScreen.self, from: jsonData)

import Foundation

/// Triggered when the user changed screen
// MARK: - AnalyticsEventScreen
public struct AnalyticsEventScreen: Codable {
    public let durationMs: Double?
    public let eventName: AnalyticsEventEventNameScreen
    public let screenName: AnalyticsEventScreenName

    public init(durationMs: Double?, eventName: AnalyticsEventEventNameScreen, screenName: AnalyticsEventScreenName) {
        self.durationMs = durationMs
        self.eventName = eventName
        self.screenName = screenName
    }
}

public enum AnalyticsEventEventNameScreen: String, Codable {
    case screen = "Screen"
}

public enum AnalyticsEventScreenName: String, Codable {
    case group = "Group"
    case home = "Home"
    case myGroups = "MyGroups"
    case room = "Room"
    case roomDirectory = "RoomDirectory"
    case user = "User"
    case webCompleteSecurity = "WebCompleteSecurity"
    case webE2ESetup = "WebE2ESetup"
    case webForgotPassword = "WebForgotPassword"
    case webLoading = "WebLoading"
    case webLogin = "WebLogin"
    case webRegister = "WebRegister"
    case webSoftLogout = "WebSoftLogout"
    case webWelcome = "WebWelcome"
}
