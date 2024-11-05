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

/// Triggered when the user changes rooms.
extension AnalyticsEvent {
    public struct ViewRoom: AnalyticsEventProtocol {
        public let eventName = "ViewRoom"

        /// active space when user navigated to the room.
        public let activeSpace: ActiveSpace?
        /// Whether the room is a DM.
        public let isDM: Bool?
        /// Whether the room is a Space.
        public let isSpace: Bool?
        /// The reason for the room change if known.
        public let trigger: Trigger?
        /// Whether the interaction was performed via the keyboard input.
        public let viaKeyboard: Bool?

        public init(activeSpace: ActiveSpace?, isDM: Bool?, isSpace: Bool?, trigger: Trigger?, viaKeyboard: Bool?) {
            self.activeSpace = activeSpace
            self.isDM = isDM
            self.isSpace = isSpace
            self.trigger = trigger
            self.viaKeyboard = viaKeyboard
        }

        public enum Trigger: String {
            /// Room accessed due to being just created.
            case Created = "Created"
            /// Room switched due to user interacting with a message search result.
            case MessageSearch = "MessageSearch"
            /// Room switched due to user selecting a user to go to a DM with.
            case MessageUser = "MessageUser"
            /// Room accessed via space explore.
            case MobileExploreRooms = "MobileExploreRooms"
            /// Room switched due to user interacting with a file search result.
            case MobileFileSearch = "MobileFileSearch"
            /// Room accessed via interacting with the incall screen.
            case MobileInCall = "MobileInCall"
            /// Room accessed during external sharing.
            case MobileLinkShare = "MobileLinkShare"
            /// Room accessed via link.
            case MobilePermalink = "MobilePermalink"
            /// Room accessed via interacting with direct chat item in the room contact detail screen.
            case MobileRoomMemberDetail = "MobileRoomMemberDetail"
            /// Room accessed via preview.
            case MobileRoomPreview = "MobileRoomPreview"
            /// Room switched due to user interacting with a room search result.
            case MobileRoomSearch = "MobileRoomSearch"
            /// Room accessed via interacting with direct chat item in the search contact detail screen.
            case MobileSearchContactDetail = "MobileSearchContactDetail"
            /// Room accessed via space bottom sheet list.
            case MobileSpaceBottomSheet = "MobileSpaceBottomSheet"
            /// Room accessed via interacting with direct chat item in the space contact detail screen.
            case MobileSpaceMemberDetail = "MobileSpaceMemberDetail"
            /// Room accessed via space members list.
            case MobileSpaceMembers = "MobileSpaceMembers"
            /// Space accessed via interacting with the space menu.
            case MobileSpaceMenu = "MobileSpaceMenu"
            /// Space accessed via interacting with a space settings menu item.
            case MobileSpaceSettings = "MobileSpaceSettings"
            /// Room accessed via a push/desktop notification.
            case Notification = "Notification"
            /// Room accessed via the predecessor link at the top of the upgraded room.
            case Predecessor = "Predecessor"
            /// Room accessed via the public rooms directory.
            case RoomDirectory = "RoomDirectory"
            /// Room accessed via the room list.
            case RoomList = "RoomList"
            /// Room accessed via a shortcut.
            case Shortcut = "Shortcut"
            /// Room accessed via a slash command in Element Web/Desktop like /goto.
            case SlashCommand = "SlashCommand"
            /// Room accessed via the space hierarchy view.
            case SpaceHierarchy = "SpaceHierarchy"
            /// Room accessed via a timeline pill or link in another room.
            case Timeline = "Timeline"
            /// Room accessed via a tombstone at the bottom of a predecessor room.
            case Tombstone = "Tombstone"
            /// Room switched due to user interacting with incoming verification request.
            case VerificationRequest = "VerificationRequest"
            /// Room switched due to widget interaction.
            case Widget = "Widget"
        }

        public enum ActiveSpace: String {
            /// Active space is Home.
            case Home = "Home"
            /// Active space is a meta space.
            case Meta = "Meta"
            /// Active space is a private space.
            case Private = "Private"
            /// Active space is a public space.
            case Public = "Public"
        }

        public var properties: [String: Any] {
            return [
                "activeSpace": activeSpace?.rawValue as Any,
                "isDM": isDM as Any,
                "isSpace": isSpace as Any,
                "trigger": trigger?.rawValue as Any,
                "viaKeyboard": viaKeyboard as Any
            ]
        }
    }
}
