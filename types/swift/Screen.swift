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

/// Triggered when the user changed screen
extension AnalyticsEvent {
    public struct Screen: AnalyticsScreenProtocol {

        /// How long the screen was displayed for in milliseconds.
        public let durationMs: Int?
        public let screenName: ScreenName

        public init(durationMs: Int?, screenName: ScreenName) {
            self.durationMs = durationMs
            self.screenName = screenName
        }

        public enum ScreenName: String {
            /// The screen shown to create a new (non-direct) room.
            case CreateRoom
            /// The confirmation screen shown before deactivating an account.
            case DeactivateAccount
            /// The form for the forgot password use case
            case ForgotPassword
            /// Legacy: The screen that shows information about a specific group.
            case Group
            /// The screen that displays the login flow (when the user already has an account).
            case Login
            /// The screen that displays the user's breadcrumbs.
            case MobileBreadcrumbs
            /// The tab on mobile that displays the dialpad.
            case MobileDialpad
            /// The Favourites tab on mobile that lists your favourite people/rooms.
            case MobileFavourites
            /// The Home tab on iOS | possibly the same on Android?
            case MobileHome
            /// The screen shown to share a link to download the app.
            case MobileInviteFriends
            /// The People tab on mobile that lists all the DM rooms you have joined.
            case MobilePeople
            /// The Rooms tab on mobile that lists all the (non-direct) rooms you've joined.
            case MobileRooms
            /// The Files tab shown in the global search screen on Mobile.
            case MobileSearchFiles
            /// The Messages tab shown in the global search screen on Mobile.
            case MobileSearchMessages
            /// The People tab shown in the global search screen on Mobile.
            case MobileSearchPeople
            /// The Rooms tab shown in the global search screen on Mobile.
            case MobileSearchRooms
            /// The global settings screen shown in the app.
            case MobileSettings
            /// The settings screen to change the default notification options.
            case MobileSettingsDefaultNotifications
            /// The settings screen to manage notification mentions and keywords.
            case MobileSettingsMentionsAndKeywords
            /// The global security settings screen.
            case MobileSettingsSecurity
            /// The sidebar shown on mobile with spaces, settings etc.
            case MobileSidebar
            /// The screen shown to select which room directory you'd like to use.
            case MobileSwitchDirectory
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
            /// The screen shown to create a new direct room.
            case StartChat
            /// A screen that shows information about a room member.
            case User
            /// Element Web showing flow to trust this new device with cross-signing.
            case WebCompleteSecurity
            /// Element Web showing flow to setup SSSS / cross-signing on this account.
            case WebE2ESetup
            /// Element Web loading spinner.
            case WebLoading
            /// Element Web device has been soft logged out by the server.
            case WebSoftLogout
            /// Legacy: Element Web User Settings Flair Tab.
            case WebUserSettingFlair
            /// Element Web User Settings Mjolnir (labs) Tab.
            case WebUserSettingMjolnir
            /// Element Web User Settings Appearance Tab.
            case WebUserSettingsAppearance
            /// Element Web User Settings General Tab.
            case WebUserSettingsGeneral
            /// Element Web User Settings Help & About Tab.
            case WebUserSettingsHelpAbout
            /// Element Web User Settings Ignored Users Tab.
            case WebUserSettingsIgnoredUsers
            /// Element Web User Settings Keyboard Tab.
            case WebUserSettingsKeyboard
            /// Element Web User Settings Labs Tab.
            case WebUserSettingsLabs
            /// Element Web User Settings Notifications Tab.
            case WebUserSettingsNotifications
            /// Element Web User Settings Preferences Tab.
            case WebUserSettingsPreferences
            /// Element Web User Settings Security & Privacy Tab.
            case WebUserSettingsSecurityPrivacy
            /// Element Web User Settings Sidebar Tab.
            case WebUserSettingsSidebar
            /// Element Web User Settings Voice & Video Tab.
            case WebUserSettingsVoiceVideo
            /// The splash screen.
            case Welcome
        }

        public var properties: [String: Any] {
            return [
                "durationMs": durationMs as Any
            ]
        }
    }
}
