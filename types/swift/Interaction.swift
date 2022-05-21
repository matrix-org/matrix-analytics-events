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
            /// User tapped the all filter option.
            case AllChatAllOptionActivated
            /// User activated the all spaces filter option.
            case AllChatAllSpacesActivated
            /// User activated the favourites filter option.
            case AllChatFavouritesOptionActivated
            /// User deactivated the favourites filter option.
            case AllChatFavouritesOptionDeactivated
            /// User activated the people filter option.
            case AllChatPeopleOptionActivated
            /// User deactivated the people filter option.
            case AllChatPeopleOptionDeactivated
            /// User selected pinned space filter option.
            case AllChatPinnedSpaceActivated
            /// User activated the rooms filter option.
            case AllChatRoomsOptionActivated
            /// User deactivated the rooms filter option.
            case AllChatRoomsOptionDeactivated
            /// User activated the unreads filter option.
            case AllChatUnreadsOptionActivated
            /// User deactivated the unreads filter option.
            case AllChatUnreadsOptionDeactivated
            /// User validated the home screen layout settings and selected the favourites filter.
            case EditLayoutFavouritesFilterSelected
            /// User validated the home screen layout settings and unselected the favourites filter.
            case EditLayoutFavouritesFilterUnselected
            /// User validated the home screen layout settings and selected the favourites section.
            case EditLayoutFavouritesSectionSelected
            /// User validated the home screen layout settings and unselected the favourites section.
            case EditLayoutFavouritesSectionUnselected
            /// User validated the home screen layout settings and selected the people filter.
            case EditLayoutPeopleFilterSelected
            /// User validated the home screen layout settings and unselected the people filter.
            case EditLayoutPeopleFilterUnselected
            /// User validated the home screen layout settings and selected the recents section.
            case EditLayoutRecentsSectionSelected
            /// User validated the home screen layout settings and unselected the recents section.
            case EditLayoutRecentsSectionUnselected
            /// User validated the home screen layout settings and selected the rooms filter.
            case EditLayoutRoomsFilterSelected
            /// User validated the home screen layout settings and unselected the rooms filter.
            case EditLayoutRoomsFilterUnselected
            /// User validated the home screen layout settings and selected the unreads filter.
            case EditLayoutUnreadsFilterSelected
            /// User validated the home screen layout settings and unselected the unreads filter.
            case EditLayoutUnreadsFilterUnselected
            /// User tapped on Add to Home button on Room Details screen.
            case MobileRoomAddHome
            /// User tapped on Leave Room button on Room Details screen.
            case MobileRoomLeave
            /// User tapped on Threads button on Room screen.
            case MobileRoomThreadListButton
            /// User tapped on a thread summary item on Room screen.
            case MobileRoomThreadSummaryItem
            /// User tapped on the filter button on ThreadList screen.
            case MobileThreadListFilterItem
            /// User selected a thread on ThreadList screen.
            case MobileThreadListThreadItem
            /// User tapped the already selected space from the space list.
            case SpacePanelSelectedSpace
            /// User tapped an unselected space from the space list -> space switching should occur.
            case SpacePanelSwitchSpace
            /// User clicked the create room button in the add existing room to space dialog in Element Web/Desktop.
            case WebAddExistingToSpaceDialogCreateRoomButton
            /// User clicked the create DM button in the home page of Element Web/Desktop.
            case WebHomeCreateChatButton
            /// User clicked the create room button in the home page of Element Web/Desktop.
            case WebHomeCreateRoomButton
            /// User clicked the explore rooms button in the home page of Element Web/Desktop.
            case WebHomeExploreRoomsButton
            /// User clicked on the mini avatar uploader in the home page of Element Web/Desktop.
            case WebHomeMiniAvatarUploadButton
            /// User clicked the explore rooms button next to the search field at the top of the left panel in Element Web/Desktop.
            case WebLeftPanelExploreRoomsButton
            /// User interacted with pin to sidebar checkboxes in the quick settings menu of Element Web/Desktop.
            case WebQuickSettingsPinToSidebarCheckbox
            /// User interacted with the theme dropdown in the quick settings menu of Element Web/Desktop.
            case WebQuickSettingsThemeDropdown
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
            /// User clicked the threads 'show' filter dropdown in the threads panel in Element Web/Desktop.
            case WebRightPanelThreadPanelFilterDropdown
            /// User clicked the create room button in the room directory of Element Web/Desktop.
            case WebRoomDirectoryCreateRoomButton
            /// User clicked the Threads button in the top right of a room in Element Web/Desktop.
            case WebRoomHeaderButtonsThreadsButton
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
            /// User clicked the create DM button in the + context menu of the room list header in Element Web/Desktop.
            case WebRoomListHeaderPlusMenuCreateChatItem
            /// User clicked the create room button in the + context menu of the room list header in Element Web/Desktop.
            case WebRoomListHeaderPlusMenuCreateRoomItem
            /// User clicked the explore rooms button in the + context menu of the room list header in Element Web/Desktop.
            case WebRoomListHeaderPlusMenuExploreRoomsItem
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
            /// User clicked the create DM button in the + context menu of the rooms sublist in Element Web/Desktop.
            case WebRoomListRoomsSublistPlusMenuCreateChatItem
            /// User clicked the create room button in the + context menu of the rooms sublist in Element Web/Desktop.
            case WebRoomListRoomsSublistPlusMenuCreateRoomItem
            /// User clicked the explore rooms button in the + context menu of the rooms sublist in Element Web/Desktop.
            case WebRoomListRoomsSublistPlusMenuExploreRoomsItem
            /// User interacted with leave action in the general tab of the room settings dialog in Element Web/Desktop.
            case WebRoomSettingsLeaveButton
            /// User interacted with the prompt to create a new room when adjusting security settings in an existing room in Element Web/Desktop.
            case WebRoomSettingsSecurityTabCreateNewRoomButton
            /// User clicked a thread summary in the timeline of a room in Element Web/Desktop.
            case WebRoomTimelineThreadSummaryButton
            /// User interacted with the theme radio selector in the Appearance tab of Settings in Element Web/Desktop.
            case WebSettingsAppearanceTabThemeSelector
            /// User interacted with the pre-built space checkboxes in the Sidebar tab of Settings in Element Web/Desktop.
            case WebSettingsSidebarTabSpacesCheckbox
            /// User clicked the explore rooms button in the context menu of a space in Element Web/Desktop.
            case WebSpaceContextMenuExploreRoomsItem
            /// User clicked the home button in the context menu of a space in Element Web/Desktop.
            case WebSpaceContextMenuHomeItem
            /// User clicked the new room button in the context menu of a space in Element Web/Desktop.
            case WebSpaceContextMenuNewRoomItem
            /// User clicked the new room button in the context menu on the space home in Element Web/Desktop.
            case WebSpaceHomeCreateRoomButton
            /// User clicked the back button on a Thread view going back to the Threads Panel of Element Web/Desktop.
            case WebThreadViewBackButton
            /// User selected a thread in the Threads panel in Element Web/Desktop.
            case WebThreadsPanelThreadItem
            /// User clicked the theme toggle button in the user menu of Element Web/Desktop.
            case WebUserMenuThemeToggleButton
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
