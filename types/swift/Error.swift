// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let error = try Error(json)

import Foundation

/// Triggered when an error occurred
// MARK: - Error
struct Error {
    /// Context - client defined, can be used for debugging
    let context: String?
    let domain: Domain
    let eventName: EventName
    let name: Name
}

enum Domain {
    case e2Ee
    case voip
}

enum EventName {
    case error
}

enum Name {
    case olmIndexError
    case olmKeysNotSentError
    case olmUnspecifiedError
    case unknownError
    case voipIceFailed
    case voipIceTimeout
    case voipInviteTimeout
    case voipUserHangup
    case voipUserMediaFailed
}
