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
            /// User tapped the All filter in the All Chats filter tab.
            case MobileAllChatsFilterAll = "MobileAllChatsFilterAll"
            /// User tapped the Favourites filter in the All Chats filter tab.
            case MobileAllChatsFilterFavourites = "MobileAllChatsFilterFavourites"
            /// User tapped the People filter in the All Chats filter tab.
            case MobileAllChatsFilterPeople = "MobileAllChatsFilterPeople"
            /// User tapped the Unreads filter in the All Chats filter tab.
            case MobileAllChatsFilterUnreads = "MobileAllChatsFilterUnreads"
            /// User disabled filters from the all chats layout settings.
            case MobileAllChatsFiltersDisabled = "MobileAllChatsFiltersDisabled"
            /// User enabled filters from the all chats layout settings.
            case MobileAllChatsFiltersEnabled = "MobileAllChatsFiltersEnabled"
            /// User disabled recents from the all chats layout settings.
            case MobileAllChatsRecentsDisabled = "MobileAllChatsRecentsDisabled"
            /// User enabled recents from the all chats layout settings.
            case MobileAllChatsRecentsEnabled = "MobileAllChatsRecentsEnabled"
            /// User tapped on Add to Home button on Room Details screen.
            case MobileRoomAddHome = "MobileRoomAddHome"
            /// The user tapped the room's call button.
            case MobileRoomCallButton = "MobileRoomCallButton"
            /// The user enabled the formatting options on the message composer.
            case MobileRoomComposerFormattingEnabled = "MobileRoomComposerFormattingEnabled"
            /// User switched the favourite toggle on Room Details screen.
            case MobileRoomFavouriteToggle = "MobileRoomFavouriteToggle"
            /// User tapped on Leave Room button on Room Details screen.
            case MobileRoomLeave = "MobileRoomLeave"
            /// User adjusted their favourite rooms using the context menu on a room in the room list.
            case MobileRoomListRoomContextMenuFavouriteToggle = "MobileRoomListRoomContextMenuFavouriteToggle"
            /// User adjusted their unread rooms using the context menu on a room in the room list.
            case MobileRoomListRoomContextMenuUnreadToggle = "MobileRoomListRoomContextMenuUnreadToggle"
            /// User tapped on Threads button on Room screen.
            case MobileRoomThreadListButton = "MobileRoomThreadListButton"
            /// User tapped on a thread summary item on Room screen.
            case MobileRoomThreadSummaryItem = "MobileRoomThreadSummaryItem"
            /// User disabled the Optimised Media Uploads setting.
            case MobileSettingsOptimizeMediaUploadsDisabled = "MobileSettingsOptimizeMediaUploadsDisabled"
            /// User enabled the Optimised Media Uploads setting.
            case MobileSettingsOptimizeMediaUploadsEnabled = "MobileSettingsOptimizeMediaUploadsEnabled"
            /// User validated the creation of a new space.
            case MobileSpaceCreationValidated = "MobileSpaceCreationValidated"
            /// User tapped on the filter button on ThreadList screen.
            case MobileThreadListFilterItem = "MobileThreadListFilterItem"
            /// User selected a thread on ThreadList screen.
            case MobileThreadListThreadItem = "MobileThreadListThreadItem"
            /// User clicked on the pinned message banner on Mobile and Element Web/Desktop.
            case PinnedMessageBannerClick = "PinnedMessageBannerClick"
            /// User clicked on the Close list button in the pinned message banner on Mobile and Element Web/Desktop.
            case PinnedMessageBannerCloseListButton = "PinnedMessageBannerCloseListButton"
            /// User clicked on the View all button in the pinned message banner on Mobile and Element Web/Desktop.
            case PinnedMessageBannerViewAllButton = "PinnedMessageBannerViewAllButton"
            /// User clicked on the View in timeline button in the pinned message list on Mobile and Element Web/Desktop.
            case PinnedMessageListViewTimeline = "PinnedMessageListViewTimeline"
            /// User clicked on the Pinned messages menu item from the Room Info on Mobile and Element Web/Desktop.
            case PinnedMessageRoomInfoButton = "PinnedMessageRoomInfoButton"
            /// User clicked on the Pinned messages state event in the timeline on Mobile and Element Web/Desktop.
            case PinnedMessageStateEventClick = "PinnedMessageStateEventClick"
            /// User clicked on the button to collapse the room list filters.
            case RoomListFilterCollapse = "RoomListFilterCollapse"
            /// User clicked on the button to expand the room list filters.
            case RoomListFilterExpand = "RoomListFilterExpand"
            /// User clicked on the button to filter favourites in the room list.
            case RoomListFilterFavourites = "RoomListFilterFavourites"
            /// User clicked on the button to filter invites in the room list.
            case RoomListFilterInvites = "RoomListFilterInvites"
            /// User clicked on the button to filter low priority messages in the room list.
            case RoomListFilterLowPriority = "RoomListFilterLowPriority"
            /// User clicked on the button to filter mentions in the room list.
            case RoomListFilterMentions = "RoomListFilterMentions"
            /// User clicked on the button to filter people in the room list.
            case RoomListFilterPeople = "RoomListFilterPeople"
            /// User clicked on the button to filter rooms in the room list.
            case RoomListFilterRooms = "RoomListFilterRooms"
            /// User clicked on the button to filter unread messages in the room list.
            case RoomListFilterUnreads = "RoomListFilterUnreads"
            /// User tapped the already selected space from the space list.
            case SpacePanelSelectedSpace = "SpacePanelSelectedSpace"
            /// User tapped an unselected space from the space list -> space switching should occur.
            case SpacePanelSwitchSpace = "SpacePanelSwitchSpace"
            /// User tapped an unselected sub space from the space list -> space switching should occur.
            case SpacePanelSwitchSubSpace = "SpacePanelSwitchSubSpace"
            /// User chose to set up new key backups after being prompted.
            case ToastSetUpRecoveryClick = "ToastSetUpRecoveryClick"
            /// User declied to set up new key backups after being prompted.
            case ToastSetUpRecoveryDismiss = "ToastSetUpRecoveryDismiss"
            /// User chose to connect with an existing key backup after being prompted.
            case ToastTurnOnKeyStorageClick = "ToastTurnOnKeyStorageClick"
            /// User declined to connect with an existing key backup after being prompted.
            case ToastTurnOnKeyStorageDismiss = "ToastTurnOnKeyStorageDismiss"
        }

        public enum InteractionType: String {
            case Keyboard = "Keyboard"
            case Pointer = "Pointer"
            case Touch = "Touch"
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
