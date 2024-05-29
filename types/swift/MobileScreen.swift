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

/// Triggered when the user changed screen on Element Android/iOS.
extension AnalyticsEvent {
    public struct MobileScreen: AnalyticsScreenProtocol {

        /// How long the screen was displayed for in milliseconds.
        public let durationMs: Int?
        public let screenName: ScreenName

        public init(durationMs: Int?, screenName: ScreenName) {
            self.durationMs = durationMs
            self.screenName = screenName
        }

        public enum ScreenName: String {
            /// The screen that displays the user's breadcrumbs.
            case Breadcrumbs = "Breadcrumbs"
            /// The screen shown to create a poll.
            case CreatePollView = "CreatePollView"
            /// The screen shown to create a new (non-direct) room.
            case CreateRoom = "CreateRoom"
            /// The screen shown to create a new space.
            case CreateSpace = "CreateSpace"
            /// The confirmation screen shown before deactivating an account.
            case DeactivateAccount = "DeactivateAccount"
            /// The tab on mobile that displays the dialpad.
            case Dialpad = "Dialpad"
            /// The screen shown to edit a poll.
            case EditPollView = "EditPollView"
            /// The Favourites tab on mobile that lists your favourite people/rooms.
            case Favourites = "Favourites"
            /// The form for the forgot password use case.
            case ForgotPassword = "ForgotPassword"
            /// Legacy: The screen that shows information about a specific group.
            case Group = "Group"
            /// The Home tab on iOS | possibly the same on Android?
            case Home = "Home"
            /// The screen shown to share a link to download the app.
            case InviteFriends = "InviteFriends"
            /// Room accessed via space bottom sheet list.
            case Invites = "Invites"
            /// The screen shown to share location.
            case LocationSend = "LocationSend"
            /// The screen shown to view a shared location.
            case LocationView = "LocationView"
            /// The screen that displays the login flow (when the user already has an account).
            case Login = "Login"
            /// Legacy: The screen that shows all groups/communities you have joined.
            case MyGroups = "MyGroups"
            /// The screen containing tests to help user to fix issues around notifications.
            case NotificationTroubleshoot = "NotificationTroubleshoot"
            /// The People tab on mobile that lists all the DM rooms you have joined.
            case People = "People"
            /// The screen that displays the registration flow (when the user wants to create an account).
            case Register = "Register"
            /// The screen that displays the messages and events received in a room.
            case Room = "Room"
            /// The room addresses screen shown from the Room Details screen.
            case RoomAddresses = "RoomAddresses"
            /// The user has started or joined a call in a room.
            case RoomCall = "RoomCall"
            /// The screen shown when tapping the name of a room from the Room screen.
            case RoomDetails = "RoomDetails"
            /// The screen that lists public rooms for you to discover.
            case RoomDirectory = "RoomDirectory"
            /// The screen that lists all the user's rooms and let them filter the rooms.
            case RoomFilter = "RoomFilter"
            /// The screen that displays the list of members that are part of a room.
            case RoomMembers = "RoomMembers"
            /// The notifications settings screen shown from the Room Details screen.
            case RoomNotifications = "RoomNotifications"
            /// The roles permissions screen shown from the Room Details screen.
            case RoomPermissions = "RoomPermissions"
            /// Screen that displays room preview if user hasn't joined yet.
            case RoomPreview = "RoomPreview"
            /// The screen that allows you to search for messages/files in a specific room.
            case RoomSearch = "RoomSearch"
            /// The settings screen shown from the Room Details screen.
            case RoomSettings = "RoomSettings"
            /// The screen that allows you to see all of the files sent in a specific room.
            case RoomUploads = "RoomUploads"
            /// The Rooms tab on mobile that lists all the (non-direct) rooms you've joined.
            case Rooms = "Rooms"
            /// The Files tab shown in the global search screen on Mobile.
            case SearchFiles = "SearchFiles"
            /// The Messages tab shown in the global search screen on Mobile.
            case SearchMessages = "SearchMessages"
            /// The People tab shown in the global search screen on Mobile.
            case SearchPeople = "SearchPeople"
            /// The Rooms tab shown in the global search screen on Mobile.
            case SearchRooms = "SearchRooms"
            /// The global settings screen shown in the app.
            case Settings = "Settings"
            /// The advanced settings screen (developer mode, rageshake, push notification rules).
            case SettingsAdvanced = "SettingsAdvanced"
            /// The settings screen to change the default notification options.
            case SettingsDefaultNotifications = "SettingsDefaultNotifications"
            /// The settings screen with general profile settings.
            case SettingsGeneral = "SettingsGeneral"
            /// The Help and About screen.
            case SettingsHelp = "SettingsHelp"
            /// The settings screen with list of the ignored users.
            case SettingsIgnoredUsers = "SettingsIgnoredUsers"
            /// The experimental features settings screen.
            case SettingsLabs = "SettingsLabs"
            /// The settings screen with legals information.
            case SettingsLegals = "SettingsLegals"
            /// The settings screen to manage notification mentions and keywords.
            case SettingsMentionsAndKeywords = "SettingsMentionsAndKeywords"
            /// The notifications settings screen.
            case SettingsNotifications = "SettingsNotifications"
            /// The preferences screen (theme, language, editor preferences, etc.
            case SettingsPreferences = "SettingsPreferences"
            /// The global security settings screen.
            case SettingsSecurity = "SettingsSecurity"
            /// The calls settings screen.
            case SettingsVoiceVideo = "SettingsVoiceVideo"
            /// The sidebar shown on mobile with spaces, settings etc.
            case Sidebar = "Sidebar"
            /// Room accessed via space bottom sheet list.
            case SpaceBottomSheet = "SpaceBottomSheet"
            /// Screen that displays the list of rooms and spaces of a space.
            case SpaceExploreRooms = "SpaceExploreRooms"
            /// Screen that displays the list of members of a space.
            case SpaceMembers = "SpaceMembers"
            /// The bottom sheet that list all space options.
            case SpaceMenu = "SpaceMenu"
            /// The screen shown to create a new direct room.
            case StartChat = "StartChat"
            /// The screen shown to select which room directory you'd like to use.
            case SwitchDirectory = "SwitchDirectory"
            /// Screen that displays list of threads for a room.
            case ThreadList = "ThreadList"
            /// A screen that shows information about a room member.
            case User = "User"
            /// The splash screen.
            case Welcome = "Welcome"
        }

        public var properties: [String: Any] {
            return [
                "durationMs": durationMs as Any
            ]
        }
    }
}
