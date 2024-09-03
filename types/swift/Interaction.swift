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
            /// User tapped the already selected space from the space list.
            case SpacePanelSelectedSpace = "SpacePanelSelectedSpace"
            /// User tapped an unselected space from the space list -> space switching should occur.
            case SpacePanelSwitchSpace = "SpacePanelSwitchSpace"
            /// User tapped an unselected sub space from the space list -> space switching should occur.
            case SpacePanelSwitchSubSpace = "SpacePanelSwitchSubSpace"
            /// User clicked the create room button in the add existing room to space dialog in Element Web/Desktop.
            case WebAddExistingToSpaceDialogCreateRoomButton = "WebAddExistingToSpaceDialogCreateRoomButton"
            /// User clicked the create DM button in the home page of Element Web/Desktop.
            case WebHomeCreateChatButton = "WebHomeCreateChatButton"
            /// User clicked the create room button in the home page of Element Web/Desktop.
            case WebHomeCreateRoomButton = "WebHomeCreateRoomButton"
            /// User clicked the explore rooms button in the home page of Element Web/Desktop.
            case WebHomeExploreRoomsButton = "WebHomeExploreRoomsButton"
            /// User clicked on the mini avatar uploader in the home page of Element Web/Desktop.
            case WebHomeMiniAvatarUploadButton = "WebHomeMiniAvatarUploadButton"
            /// User clicked the explore rooms button next to the search field at the top of the left panel in Element Web/Desktop.
            case WebLeftPanelExploreRoomsButton = "WebLeftPanelExploreRoomsButton"
            /// User clicked on the avatar uploader in the profile settings of Element Web/Desktop.
            case WebProfileSettingsAvatarUploadButton = "WebProfileSettingsAvatarUploadButton"
            /// User interacted with pin to sidebar checkboxes in the quick settings menu of Element Web/Desktop.
            case WebQuickSettingsPinToSidebarCheckbox = "WebQuickSettingsPinToSidebarCheckbox"
            /// User interacted with the theme dropdown in the quick settings menu of Element Web/Desktop.
            case WebQuickSettingsThemeDropdown = "WebQuickSettingsThemeDropdown"
            /// User accessed the room invite flow using the button at the top of the room member list in the right panel of Element Web/Desktop.
            case WebRightPanelMemberListInviteButton = "WebRightPanelMemberListInviteButton"
            /// User accessed room member list using the 'People' button in the right panel room summary card of Element Web/Desktop.
            case WebRightPanelRoomInfoPeopleButton = "WebRightPanelRoomInfoPeopleButton"
            /// User accessed room settings using the 'Settings' button in the right panel room summary card of Element Web/Desktop.
            case WebRightPanelRoomInfoSettingsButton = "WebRightPanelRoomInfoSettingsButton"
            /// User accessed room member list using the back button in the right panel user info card of Element Web/Desktop.
            case WebRightPanelRoomUserInfoBackButton = "WebRightPanelRoomUserInfoBackButton"
            /// User invited someone to room by clicking invite on the right panel user info card in Element Web/Desktop.
            case WebRightPanelRoomUserInfoInviteButton = "WebRightPanelRoomUserInfoInviteButton"
            /// User clicked the threads 'show' filter dropdown in the threads panel in Element Web/Desktop.
            case WebRightPanelThreadPanelFilterDropdown = "WebRightPanelThreadPanelFilterDropdown"
            /// User clicked the create room button in the room directory of Element Web/Desktop.
            case WebRoomDirectoryCreateRoomButton = "WebRoomDirectoryCreateRoomButton"
            /// User clicked the Threads button in the top right of a room in Element Web/Desktop.
            case WebRoomHeaderButtonsThreadsButton = "WebRoomHeaderButtonsThreadsButton"
            /// User adjusted their favourites using the context menu on the header of a room in Element Web/Desktop.
            case WebRoomHeaderContextMenuFavouriteToggle = "WebRoomHeaderContextMenuFavouriteToggle"
            /// User accessed the room invite flow using the context menu on the header of a room in Element Web/Desktop.
            case WebRoomHeaderContextMenuInviteItem = "WebRoomHeaderContextMenuInviteItem"
            /// User interacted with leave action in the context menu on the header of a room in Element Web/Desktop.
            case WebRoomHeaderContextMenuLeaveItem = "WebRoomHeaderContextMenuLeaveItem"
            /// User accessed their room notification settings via the context menu on the header of a room in Element Web/Desktop.
            case WebRoomHeaderContextMenuNotificationsItem = "WebRoomHeaderContextMenuNotificationsItem"
            /// User accessed room member list using the context menu on the header of a room in Element Web/Desktop.
            case WebRoomHeaderContextMenuPeopleItem = "WebRoomHeaderContextMenuPeopleItem"
            /// User accessed room settings using the context menu on the header of a room in Element Web/Desktop.
            case WebRoomHeaderContextMenuSettingsItem = "WebRoomHeaderContextMenuSettingsItem"
            /// User clicked the create DM button in the + context menu of the room list header in Element Web/Desktop.
            case WebRoomListHeaderPlusMenuCreateChatItem = "WebRoomListHeaderPlusMenuCreateChatItem"
            /// User clicked the create room button in the + context menu of the room list header in Element Web/Desktop.
            case WebRoomListHeaderPlusMenuCreateRoomItem = "WebRoomListHeaderPlusMenuCreateRoomItem"
            /// User clicked the explore rooms button in the + context menu of the room list header in Element Web/Desktop.
            case WebRoomListHeaderPlusMenuExploreRoomsItem = "WebRoomListHeaderPlusMenuExploreRoomsItem"
            /// User adjusted their favourites using the context menu on a room tile in the room list in Element Web/Desktop.
            case WebRoomListRoomTileContextMenuFavouriteToggle = "WebRoomListRoomTileContextMenuFavouriteToggle"
            /// User accessed the room invite flow using the context menu on a room tile in the room list in Element Web/Desktop.
            case WebRoomListRoomTileContextMenuInviteItem = "WebRoomListRoomTileContextMenuInviteItem"
            /// User interacted with leave action in the context menu on a room tile in the room list in Element Web/Desktop.
            case WebRoomListRoomTileContextMenuLeaveItem = "WebRoomListRoomTileContextMenuLeaveItem"
            /// User marked a message as read using the context menu on a room tile in the room list in Element Web/Desktop.
            case WebRoomListRoomTileContextMenuMarkRead = "WebRoomListRoomTileContextMenuMarkRead"
            /// User marked a room as unread using the context menu on a room tile in the room list in Element Web/Desktop.
            case WebRoomListRoomTileContextMenuMarkUnread = "WebRoomListRoomTileContextMenuMarkUnread"
            /// User accessed room settings using the context menu on a room tile in the room list in Element Web/Desktop.
            case WebRoomListRoomTileContextMenuSettingsItem = "WebRoomListRoomTileContextMenuSettingsItem"
            /// User accessed their room notification settings via the context menu on a room tile in the room list in Element Web/Desktop.
            case WebRoomListRoomTileNotificationsMenu = "WebRoomListRoomTileNotificationsMenu"
            /// User clicked the create DM button in the + context menu of the rooms sublist in Element Web/Desktop.
            case WebRoomListRoomsSublistPlusMenuCreateChatItem = "WebRoomListRoomsSublistPlusMenuCreateChatItem"
            /// User clicked the create room button in the + context menu of the rooms sublist in Element Web/Desktop.
            case WebRoomListRoomsSublistPlusMenuCreateRoomItem = "WebRoomListRoomsSublistPlusMenuCreateRoomItem"
            /// User clicked the explore rooms button in the + context menu of the rooms sublist in Element Web/Desktop.
            case WebRoomListRoomsSublistPlusMenuExploreRoomsItem = "WebRoomListRoomsSublistPlusMenuExploreRoomsItem"
            /// User clicked on the button to return to the user onboarding list in the room list in Element Web/Desktop.
            case WebRoomListUserOnboardingButton = "WebRoomListUserOnboardingButton"
            /// User clicked on the button to close the user onboarding button in the room list in Element Web/Desktop.
            case WebRoomListUserOnboardingIgnoreButton = "WebRoomListUserOnboardingIgnoreButton"
            /// User interacted with leave action in the general tab of the room settings dialog in Element Web/Desktop.
            case WebRoomSettingsLeaveButton = "WebRoomSettingsLeaveButton"
            /// User interacted with the prompt to create a new room when adjusting security settings in an existing room in Element Web/Desktop.
            case WebRoomSettingsSecurityTabCreateNewRoomButton = "WebRoomSettingsSecurityTabCreateNewRoomButton"
            /// User clicked a thread summary in the timeline of a room in Element Web/Desktop.
            case WebRoomTimelineThreadSummaryButton = "WebRoomTimelineThreadSummaryButton"
            /// User interacted with the theme radio selector in the Appearance tab of Settings in Element Web/Desktop.
            case WebSettingsAppearanceTabThemeSelector = "WebSettingsAppearanceTabThemeSelector"
            /// User toggled the 'Notifications.showbold' in Element Web/Desktop.
            case WebSettingsNotificationsShowBoldToggle = "WebSettingsNotificationsShowBoldToggle"
            /// User toggled the 'Notifications.tac_only_notifications' in Element Web/Desktop.
            case WebSettingsNotificationsTACOnlyNotificationsToggle = "WebSettingsNotificationsTACOnlyNotificationsToggle"
            /// User interacted with the pre-built space checkboxes in the Sidebar tab of Settings in Element Web/Desktop.
            case WebSettingsSidebarTabSpacesCheckbox = "WebSettingsSidebarTabSpacesCheckbox"
            /// User clicked the explore rooms button in the context menu of a space in Element Web/Desktop.
            case WebSpaceContextMenuExploreRoomsItem = "WebSpaceContextMenuExploreRoomsItem"
            /// User clicked the home button in the context menu of a space in Element Web/Desktop.
            case WebSpaceContextMenuHomeItem = "WebSpaceContextMenuHomeItem"
            /// User clicked the new room button in the context menu of a space in Element Web/Desktop.
            case WebSpaceContextMenuNewRoomItem = "WebSpaceContextMenuNewRoomItem"
            /// User clicked the new room button in the context menu on the space home in Element Web/Desktop.
            case WebSpaceHomeCreateRoomButton = "WebSpaceHomeCreateRoomButton"
            /// User clicked the back button on a Thread view going back to the Threads Panel of Element Web/Desktop.
            case WebThreadViewBackButton = "WebThreadViewBackButton"
            /// User clicked on the Threads Activity Centre button of Element Web/Desktop.
            case WebThreadsActivityCentreButton = "WebThreadsActivityCentreButton"
            /// User clicked on a room in the Threads Activity Centre of Element Web/Desktop.
            case WebThreadsActivityCentreRoomItem = "WebThreadsActivityCentreRoomItem"
            /// User clicked on the button to mark all threads in a room as read in Element Web/Desktop.
            case WebThreadsMarkAllReadButton = "WebThreadsMarkAllReadButton"
            /// User selected a thread in the Threads panel in Element Web/Desktop.
            case WebThreadsPanelThreadItem = "WebThreadsPanelThreadItem"
            /// User clicked the theme toggle button in the user menu of Element Web/Desktop.
            case WebUserMenuThemeToggleButton = "WebUserMenuThemeToggleButton"
            /// User clicked on the send DM CTA in the header of the new user onboarding page in Element Web/Desktop.
            case WebUserOnboardingHeaderSendDm = "WebUserOnboardingHeaderSendDm"
            /// User clicked on the action of the download apps task on the new user onboarding page in Element Web/Desktop.
            case WebUserOnboardingTaskDownloadApps = "WebUserOnboardingTaskDownloadApps"
            /// User clicked on the action of the enable notifications task on the new user onboarding page in Element Web/Desktop.
            case WebUserOnboardingTaskEnableNotifications = "WebUserOnboardingTaskEnableNotifications"
            /// User clicked on the action of the find people task on the new user onboarding page in Element Web/Desktop.
            case WebUserOnboardingTaskSendDm = "WebUserOnboardingTaskSendDm"
            /// User clicked on the action of the your profile task on the new user onboarding page in Element Web/Desktop.
            case WebUserOnboardingTaskSetupProfile = "WebUserOnboardingTaskSetupProfile"
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
