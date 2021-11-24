// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sendMessage = try SendMessage(json)

import Foundation

/// Triggered when the user sends a message
// MARK: - SendMessage
struct SendMessage {
    let eventName: EventName?
    let format: String?
    let isEdit, isReply: Bool?
    let localEchoDurationMS: Double?
    let msgType: String?
    let roomID: String
    let threadID: String?
}

enum EventName {
    case sendMessage
}
