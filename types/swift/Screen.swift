// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let screen = try Screen(json)

import Foundation

/// Triggered when the user changed screen
// MARK: - Screen
struct Screen {
    let durationMS: Double?
    let eventName: EventName
    let screenName: ScreenName
}

enum EventName {
    case screen
}

enum ScreenName {
    case group
    case home
    case myGroups
    case room
    case roomDirectory
    case user
    case webCompleteSecurity
    case webE2ESetup
    case webForgotPassword
    case webLoading
    case webLogin
    case webRegister
    case webSoftLogout
    case webWelcome
}
