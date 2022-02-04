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

        /// The reason for the room change if known.
        public let trigger: Trigger?
        /// Whether the interaction was performed via the keyboard input.
        public let viaKeyboard: Bool?

        public init(trigger: Trigger?, viaKeyboard: Bool?) {
            self.trigger = trigger
            self.viaKeyboard = viaKeyboard
        }

        public enum Trigger: String {
            /// Room accessed due to being just created.
            case Created
            /// Room switched due to user interacting with a message search result.
            case MessageSearch
            /// Room switched due to user selecting a user to go to a DM with.
            case MessageUser
            /// Room accessed via a push/desktop notification.
            case Notification
            /// Room accessed via the predecessor link at the top of the upgraded room.
            case Predecessor
            /// Room accessed via the public rooms directory.
            case RoomDirectory
            /// Room accessed via the room list.
            case RoomList
            /// Room accessed via a slash command in Element Web/Desktop like /goto.
            case SlashCommand
            /// Room accessed via the space hierarchy view.
            case SpaceHierarchy
            /// Room accessed via a timeline pill or link in another room.
            case Timeline
            /// Room accessed via a tombstone at the bottom of a predecessor room.
            case Tombstone
            /// Room switched due to user interacting with incoming verification request.
            case VerificationRequest
            /// Room switched due to accepting a call in a different room in Element Web/Desktop.
            case WebAcceptCall
            /// Room switched due to making a call via the dial pad in Element Web/Desktop.
            case WebDialPad
            /// Room accessed via interacting with the floating call or Jitsi PIP in Element Web/Desktop.
            case WebFloatingCallWindow
            /// Room accessed via the shortcut in Element Web/Desktop's forward modal.
            case WebForwardShortcut
            /// Room accessed via the Element Web/Desktop horizontal breadcrumbs at the top of the room list.
            case WebHorizontalBreadcrumbs
            /// Room accessed via an Element Web/Desktop keyboard shortcut like go to next room with unread messages.
            case WebKeyboardShortcut
            /// Room accessed via Element Web/Desktop's notification panel.
            case WebNotificationPanel
            /// Room accessed via the predecessor link in Settings > Advanced in Element Web/Desktop.
            case WebPredecessorSettings
            /// Room accessed via clicking on a notifications badge on a room list sublist in Element Web/Desktop.
            case WebRoomListNotificationBadge
            /// Room switched due to the user changing space in Element Web/Desktop.
            case WebSpaceContextSwitch
            /// Room accessed via clicking on the notifications badge on the currently selected space in Element Web/Desktop.
            case WebSpacePanelNotificationBadge
            /// Room accessed via Element Web/Desktop's Unified Search modal.
            case WebUnifiedSearch
            /// Room accessed via the Element Web/Desktop vertical breadcrumb hover menu.
            case WebVerticalBreadcrumbs
            /// Room switched due to widget interaction.
            case Widget
        }

        public var properties: [String: Any] {
            return [
                "trigger": trigger?.rawValue as Any,
                "viaKeyboard": viaKeyboard as Any
            ]
        }
    }
}
