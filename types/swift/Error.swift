// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let analyticsEventError = try? newJSONDecoder().decode(AnalyticsEventError.self, from: jsonData)

import Foundation

/// Triggered when an error occurred
// MARK: - AnalyticsEventError
public struct AnalyticsEventError: Codable {
    /// Context - client defined, can be used for debugging
    public let context: String?
    public let domain: AnalyticsEventErrorDomain
    public let eventName: AnalyticsEventErrorEventName
    public let name: AnalyticsEventErrorName

    public init(context: String?, domain: AnalyticsEventErrorDomain, eventName: AnalyticsEventErrorEventName, name: AnalyticsEventErrorName) {
        self.context = context
        self.domain = domain
        self.eventName = eventName
        self.name = name
    }
}

public enum AnalyticsEventErrorDomain: String, Codable {
    case e2Ee = "E2EE"
    case voip = "VOIP"
}

public enum AnalyticsEventErrorEventName: String, Codable {
    case error = "Error"
}

public enum AnalyticsEventErrorName: String, Codable {
    case olmIndexError = "OlmIndexError"
    case olmKeysNotSentError = "OlmKeysNotSentError"
    case olmUnspecifiedError = "OlmUnspecifiedError"
    case unknownError = "UnknownError"
    case voipIceFailed = "VoipIceFailed"
    case voipIceTimeout = "VoipIceTimeout"
    case voipInviteTimeout = "VoipInviteTimeout"
    case voipUserHangup = "VoipUserHangup"
    case voipUserMediaFailed = "VoipUserMediaFailed"
}
