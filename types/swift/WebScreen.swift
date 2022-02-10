//
// Copyright 2021 New Vector Ltd
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

// GENERATED FILE, DO NOT EDIT. FOR MORE INFORMATION VISIT
// https://github.com/matrix-org/matrix-analytics-events/

/// Triggered when the user changed screen on Element Web/Desktop
extension AnalyticsEvent {
    public struct WebScreen: AnalyticsEventProtocol {
        public let eventName = "$pageview"

        public let $current_url: $current_url
        /// How long the screen took to load, if applicable.
        public let durationMs: Int?

        public init($current_url: $current_url, durationMs: Int?) {
            self.$current_url = $current_url
            self.durationMs = durationMs
        }

        public enum $current_url: String {
            /// Screen showing flow to trust this new device with cross-signing.
            case CompleteSecurity
            /// The screen shown to create a new (non-direct) room.
            case CreateRoom
            /// The confirmation screen shown before deactivating an account.
            case DeactivateAccount
            /// Screen showing flow to setup SSSS / cross-signing on this account.
            case E2ESetup
            /// The form for the forgot password use case
            case ForgotPassword
            /// Legacy: The screen that shows information about a specific group.
            case Group
            /// Home page.
            case Home
            /// Screen showing loading spinner.
            case Loading
            /// The screen that displays the login flow (when the user already has an account).
            case Login
            /// Legacy: The screen that shows all groups/communities you have joined.
            case MyGroups
            /// The screen that displays the registration flow (when the user wants to create an account)
            case Register
            /// The screen that displays the messages and events received in a room.
            case Room
            /// The screen shown when tapping the name of a room from the Room screen.
            case RoomDetails
            /// The screen that lists public rooms for you to discover.
            case RoomDirectory
            /// The screen that lists all the user's rooms and let them filter the rooms.
            case RoomFilter
            /// The screen that displays the list of members that are part of a room.
            case RoomMembers
            /// The notifications settings screen shown from the Room Details screen.
            case RoomNotifications
            /// The screen that allows you to search for messages/files in a specific room.
            case RoomSearch
            /// The settings screen shown from the Room Details screen.
            case RoomSettings
            /// The screen that allows you to see all of the files sent in a specific room.
            case RoomUploads
            /// Screen showing device has been soft logged out by the server.
            case SoftLogout
            /// Screen that displays the list of rooms and spaces of a space
            case SpaceExploreRooms
            /// The screen shown to create a new direct room.
            case StartChat
            /// A screen that shows information about a room member.
            case User
            /// Legacy: screen showing User Settings Flair Tab.
            case UserSettingFlair
            /// Screen showing User Settings Mjolnir (labs) Tab.
            case UserSettingMjolnir
            /// Screen showing User Settings Appearance Tab.
            case UserSettingsAppearance
            /// Screen showing User Settings General Tab.
            case UserSettingsGeneral
            /// Screen showing User Settings Help & About Tab.
            case UserSettingsHelpAbout
            /// Screen showing User Settings Ignored Users Tab.
            case UserSettingsIgnoredUsers
            /// Screen showing User Settings Keyboard Tab.
            case UserSettingsKeyboard
            /// Screen showing User Settings Labs Tab.
            case UserSettingsLabs
            /// Screen showing User Settings Notifications Tab.
            case UserSettingsNotifications
            /// Screen showing User Settings Preferences Tab.
            case UserSettingsPreferences
            /// Screen showing User Settings Security & Privacy Tab.
            case UserSettingsSecurityPrivacy
            /// Screen showing User Settings Sidebar Tab.
            case UserSettingsSidebar
            /// Screen showing User Settings Voice & Video Tab.
            case UserSettingsVoiceVideo
            /// The splash screen.
            case Welcome
        }

        public var properties: [String: Any] {
            return [
                "$current_url": $current_url.rawValue,
                "durationMs": durationMs as Any
            ]
        }
    }
}
