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

/// Triggered when the user clicks/taps/activates a UI element.
extension AnalyticsEvent {
    public struct Interaction: AnalyticsEventProtocol {
        public let eventName = "Interaction"

        /// The index of the element, if its in a list of elements.
        public let index: Int?
        /// The manner with which the user activated the UI element.
        public let interactionType: InteractionType?
        /// The unique name of this element.
        public let name: Name

        public init(index: Int?, interactionType: InteractionType?, name: Name) {
            self.index = index
            self.interactionType = interactionType
            self.name = name
        }

        public enum Name: String {
            /// User accessed the room invite flow using the button at the top of the room member list in the right panel of Element Web/Desktop.
            case WebRightPanelMemberListInviteButton
            /// User accessed room member list using the 'People' button in the right panel room summary card of Element Web/Desktop.
            case WebRightPanelRoomInfoPeopleButton
            /// User accessed room settings using the 'Settings' button in the right panel room summary card of Element Web/Desktop.
            case WebRightPanelRoomInfoSettingsButton
            /// User accessed room member list using the back button in the right panel user info card of Element Web/Desktop.
            case WebRightPanelRoomUserInfoBackButton
            /// User invited someone to room by clicking invite on the right panel user info card in Element Web/Desktop.
            case WebRightPanelRoomUserInfoInviteButton
            /// User adjusted their favourites using the context menu on the header of a room in Element Web/Desktop.
            case WebRoomHeaderContextMenuFavouriteToggle
            /// User accessed the room invite flow using the context menu on the header of a room in Element Web/Desktop.
            case WebRoomHeaderContextMenuInviteItem
            /// User interacted with leave action in the context menu on the header of a room in Element Web/Desktop.
            case WebRoomHeaderContextMenuLeaveItem
            /// User accessed their room notification settings via the context menu on the header of a room in Element Web/Desktop.
            case WebRoomHeaderContextMenuNotificationsItem
            /// User accessed room member list using the context menu on the header of a room in Element Web/Desktop.
            case WebRoomHeaderContextMenuPeopleItem
            /// User accessed room settings using the context menu on the header of a room in Element Web/Desktop.
            case WebRoomHeaderContextMenuSettingsItem
            /// User adjusted their favourites using the context menu on a room tile in the room list in Element Web/Desktop.
            case WebRoomListRoomTileContextMenuFavouriteToggle
            /// User accessed the room invite flow using the context menu on a room tile in the room list in Element Web/Desktop.
            case WebRoomListRoomTileContextMenuInviteItem
            /// User interacted with leave action in the context menu on a room tile in the room list in Element Web/Desktop.
            case WebRoomListRoomTileContextMenuLeaveItem
            /// User accessed room settings using the context menu on a room tile in the room list in Element Web/Desktop.
            case WebRoomListRoomTileContextMenuSettingsItem
            /// User accessed their room notification settings via the context menu on a room tile in the room list in Element Web/Desktop.
            case WebRoomListRoomTileNotificationsMenu
            /// User interacted with leave action in the general tab of the room settings dialog in Element Web/Desktop.
            case WebRoomSettingsLeaveButton
        }

        public enum InteractionType: String {
            case Keyboard
            case Pointer
            case Touch
        }

        public var properties: [String: Any] {
            return [
                "index": index as Any,
                "interactionType": interactionType?.rawValue as Any,
                "name": name.rawValue
            ]
        }
    }
}
