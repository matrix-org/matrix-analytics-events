/*
 * Copyright (c) 2021 New Vector Ltd
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package im.vector.app.features.analytics.plan

import im.vector.app.features.analytics.itf.VectorAnalyticsEvent

// GENERATED FILE, DO NOT EDIT. FOR MORE INFORMATION VISIT
// https://github.com/matrix-org/matrix-analytics-events/

/**
 * Triggered when the user clicks/taps/activates a UI element.
 */
data class Interaction(
        /**
         * The index of the element, if its in a list of elements.
         */
        val index: Int? = null,
        /**
         * The manner with which the user activated the UI element.
         */
        val interactionType: InteractionType? = null,
        /**
         * The unique name of this element.
         */
        val name: Name,
) : VectorAnalyticsEvent {

    enum class Name(val rawValue: String) {
        /**
         * User tapped the All filter in the All Chats filter tab.
         */
        MobileAllChatsFilterAll("MobileAllChatsFilterAll"),

        /**
         * User tapped the Favourites filter in the All Chats filter tab.
         */
        MobileAllChatsFilterFavourites("MobileAllChatsFilterFavourites"),

        /**
         * User tapped the People filter in the All Chats filter tab.
         */
        MobileAllChatsFilterPeople("MobileAllChatsFilterPeople"),

        /**
         * User tapped the Unreads filter in the All Chats filter tab.
         */
        MobileAllChatsFilterUnreads("MobileAllChatsFilterUnreads"),

        /**
         * User disabled filters from the all chats layout settings.
         */
        MobileAllChatsFiltersDisabled("MobileAllChatsFiltersDisabled"),

        /**
         * User enabled filters from the all chats layout settings.
         */
        MobileAllChatsFiltersEnabled("MobileAllChatsFiltersEnabled"),

        /**
         * User disabled recents from the all chats layout settings.
         */
        MobileAllChatsRecentsDisabled("MobileAllChatsRecentsDisabled"),

        /**
         * User enabled recents from the all chats layout settings.
         */
        MobileAllChatsRecentsEnabled("MobileAllChatsRecentsEnabled"),

        /**
         * User tapped on Add to Home button on Room Details screen.
         */
        MobileRoomAddHome("MobileRoomAddHome"),

        /**
         * The user tapped the room's call button.
         */
        MobileRoomCallButton("MobileRoomCallButton"),

        /**
         * The user enabled the formatting options on the message composer.
         */
        MobileRoomComposerFormattingEnabled("MobileRoomComposerFormattingEnabled"),

        /**
         * User switched the favourite toggle on Room Details screen.
         */
        MobileRoomFavouriteToggle("MobileRoomFavouriteToggle"),

        /**
         * User tapped on Leave Room button on Room Details screen.
         */
        MobileRoomLeave("MobileRoomLeave"),

        /**
         * User adjusted their favourite rooms using the context menu on a room
         * in the room list.
         */
        MobileRoomListRoomContextMenuFavouriteToggle("MobileRoomListRoomContextMenuFavouriteToggle"),

        /**
         * User adjusted their unread rooms using the context menu on a room in
         * the room list.
         */
        MobileRoomListRoomContextMenuUnreadToggle("MobileRoomListRoomContextMenuUnreadToggle"),

        /**
         * User tapped on Threads button on Room screen.
         */
        MobileRoomThreadListButton("MobileRoomThreadListButton"),

        /**
         * User tapped on a thread summary item on Room screen.
         */
        MobileRoomThreadSummaryItem("MobileRoomThreadSummaryItem"),

        /**
         * User validated the creation of a new space.
         */
        MobileSpaceCreationValidated("MobileSpaceCreationValidated"),

        /**
         * User tapped on the filter button on ThreadList screen.
         */
        MobileThreadListFilterItem("MobileThreadListFilterItem"),

        /**
         * User selected a thread on ThreadList screen.
         */
        MobileThreadListThreadItem("MobileThreadListThreadItem"),

        /**
         * User clicked on the pinned message banner on Mobile and Element
         * Web/Desktop.
         */
        PinnedMessageBannerClick("PinnedMessageBannerClick"),

        /**
         * User clicked on the Close list button in the pinned message banner on
         * Mobile and Element Web/Desktop.
         */
        PinnedMessageBannerCloseListButton("PinnedMessageBannerCloseListButton"),

        /**
         * User clicked on the View all button in the pinned message banner on
         * Mobile and Element Web/Desktop.
         */
        PinnedMessageBannerViewAllButton("PinnedMessageBannerViewAllButton"),

        /**
         * User clicked on the View in timeline button in the pinned message
         * list on Mobile and Element Web/Desktop.
         */
        PinnedMessageListViewTimeline("PinnedMessageListViewTimeline"),

        /**
         * User clicked on the Pinned messages menu item from the Room Info on
         * Mobile and Element Web/Desktop.
         */
        PinnedMessageRoomInfoButton("PinnedMessageRoomInfoButton"),

        /**
         * User clicked on the Pinned messages state event in the timeline on
         * Mobile and Element Web/Desktop.
         */
        PinnedMessageStateEventClick("PinnedMessageStateEventClick"),

        /**
         * User tapped the already selected space from the space list.
         */
        SpacePanelSelectedSpace("SpacePanelSelectedSpace"),

        /**
         * User tapped an unselected space from the space list -> space
         * switching should occur.
         */
        SpacePanelSwitchSpace("SpacePanelSwitchSpace"),

        /**
         * User tapped an unselected sub space from the space list -> space
         * switching should occur.
         */
        SpacePanelSwitchSubSpace("SpacePanelSwitchSubSpace"),

        /**
         * User clicked the create room button in the add existing room to space
         * dialog in Element Web/Desktop.
         */
        WebAddExistingToSpaceDialogCreateRoomButton("WebAddExistingToSpaceDialogCreateRoomButton"),

        /**
         * User clicked the create DM button in the home page of Element
         * Web/Desktop.
         */
        WebHomeCreateChatButton("WebHomeCreateChatButton"),

        /**
         * User clicked the create room button in the home page of Element
         * Web/Desktop.
         */
        WebHomeCreateRoomButton("WebHomeCreateRoomButton"),

        /**
         * User clicked the explore rooms button in the home page of Element
         * Web/Desktop.
         */
        WebHomeExploreRoomsButton("WebHomeExploreRoomsButton"),

        /**
         * User clicked on the mini avatar uploader in the home page of Element
         * Web/Desktop.
         */
        WebHomeMiniAvatarUploadButton("WebHomeMiniAvatarUploadButton"),

        /**
         * User clicked the explore rooms button next to the search field at the
         * top of the left panel in Element Web/Desktop.
         */
        WebLeftPanelExploreRoomsButton("WebLeftPanelExploreRoomsButton"),

        /**
         * User clicked on the avatar uploader in the profile settings of
         * Element Web/Desktop.
         */
        WebProfileSettingsAvatarUploadButton("WebProfileSettingsAvatarUploadButton"),

        /**
         * User interacted with pin to sidebar checkboxes in the quick settings
         * menu of Element Web/Desktop.
         */
        WebQuickSettingsPinToSidebarCheckbox("WebQuickSettingsPinToSidebarCheckbox"),

        /**
         * User interacted with the theme dropdown in the quick settings menu of
         * Element Web/Desktop.
         */
        WebQuickSettingsThemeDropdown("WebQuickSettingsThemeDropdown"),

        /**
         * User accessed the room invite flow using the button at the top of the
         * room member list in the right panel of Element Web/Desktop.
         */
        WebRightPanelMemberListInviteButton("WebRightPanelMemberListInviteButton"),

        /**
         * User accessed room member list using the 'People' button in the right
         * panel room summary card of Element Web/Desktop.
         */
        WebRightPanelRoomInfoPeopleButton("WebRightPanelRoomInfoPeopleButton"),

        /**
         * User accessed room settings using the 'Settings' button in the right
         * panel room summary card of Element Web/Desktop.
         */
        WebRightPanelRoomInfoSettingsButton("WebRightPanelRoomInfoSettingsButton"),

        /**
         * User accessed room member list using the back button in the right
         * panel user info card of Element Web/Desktop.
         */
        WebRightPanelRoomUserInfoBackButton("WebRightPanelRoomUserInfoBackButton"),

        /**
         * User invited someone to room by clicking invite on the right panel
         * user info card in Element Web/Desktop.
         */
        WebRightPanelRoomUserInfoInviteButton("WebRightPanelRoomUserInfoInviteButton"),

        /**
         * User clicked the threads 'show' filter dropdown in the threads panel
         * in Element Web/Desktop.
         */
        WebRightPanelThreadPanelFilterDropdown("WebRightPanelThreadPanelFilterDropdown"),

        /**
         * User clicked the create room button in the room directory of Element
         * Web/Desktop.
         */
        WebRoomDirectoryCreateRoomButton("WebRoomDirectoryCreateRoomButton"),

        /**
         * User clicked the Threads button in the top right of a room in Element
         * Web/Desktop.
         */
        WebRoomHeaderButtonsThreadsButton("WebRoomHeaderButtonsThreadsButton"),

        /**
         * User adjusted their favourites using the context menu on the header
         * of a room in Element Web/Desktop.
         */
        WebRoomHeaderContextMenuFavouriteToggle("WebRoomHeaderContextMenuFavouriteToggle"),

        /**
         * User accessed the room invite flow using the context menu on the
         * header of a room in Element Web/Desktop.
         */
        WebRoomHeaderContextMenuInviteItem("WebRoomHeaderContextMenuInviteItem"),

        /**
         * User interacted with leave action in the context menu on the header
         * of a room in Element Web/Desktop.
         */
        WebRoomHeaderContextMenuLeaveItem("WebRoomHeaderContextMenuLeaveItem"),

        /**
         * User accessed their room notification settings via the context menu
         * on the header of a room in Element Web/Desktop.
         */
        WebRoomHeaderContextMenuNotificationsItem("WebRoomHeaderContextMenuNotificationsItem"),

        /**
         * User accessed room member list using the context menu on the header
         * of a room in Element Web/Desktop.
         */
        WebRoomHeaderContextMenuPeopleItem("WebRoomHeaderContextMenuPeopleItem"),

        /**
         * User accessed room settings using the context menu on the header of a
         * room in Element Web/Desktop.
         */
        WebRoomHeaderContextMenuSettingsItem("WebRoomHeaderContextMenuSettingsItem"),

        /**
         * User clicked the create DM button in the + context menu of the room
         * list header in Element Web/Desktop.
         */
        WebRoomListHeaderPlusMenuCreateChatItem("WebRoomListHeaderPlusMenuCreateChatItem"),

        /**
         * User clicked the create room button in the + context menu of the room
         * list header in Element Web/Desktop.
         */
        WebRoomListHeaderPlusMenuCreateRoomItem("WebRoomListHeaderPlusMenuCreateRoomItem"),

        /**
         * User clicked the explore rooms button in the + context menu of the
         * room list header in Element Web/Desktop.
         */
        WebRoomListHeaderPlusMenuExploreRoomsItem("WebRoomListHeaderPlusMenuExploreRoomsItem"),

        /**
         * User adjusted their favourites using the context menu on a room tile
         * in the room list in Element Web/Desktop.
         */
        WebRoomListRoomTileContextMenuFavouriteToggle("WebRoomListRoomTileContextMenuFavouriteToggle"),

        /**
         * User accessed the room invite flow using the context menu on a room
         * tile in the room list in Element Web/Desktop.
         */
        WebRoomListRoomTileContextMenuInviteItem("WebRoomListRoomTileContextMenuInviteItem"),

        /**
         * User interacted with leave action in the context menu on a room tile
         * in the room list in Element Web/Desktop.
         */
        WebRoomListRoomTileContextMenuLeaveItem("WebRoomListRoomTileContextMenuLeaveItem"),

        /**
         * User marked a message as read using the context menu on a room tile
         * in the room list in Element Web/Desktop.
         */
        WebRoomListRoomTileContextMenuMarkRead("WebRoomListRoomTileContextMenuMarkRead"),

        /**
         * User marked a room as unread using the context menu on a room tile in
         * the room list in Element Web/Desktop.
         */
        WebRoomListRoomTileContextMenuMarkUnread("WebRoomListRoomTileContextMenuMarkUnread"),

        /**
         * User accessed room settings using the context menu on a room tile in
         * the room list in Element Web/Desktop.
         */
        WebRoomListRoomTileContextMenuSettingsItem("WebRoomListRoomTileContextMenuSettingsItem"),

        /**
         * User accessed their room notification settings via the context menu
         * on a room tile in the room list in Element Web/Desktop.
         */
        WebRoomListRoomTileNotificationsMenu("WebRoomListRoomTileNotificationsMenu"),

        /**
         * User clicked the create DM button in the + context menu of the rooms
         * sublist in Element Web/Desktop.
         */
        WebRoomListRoomsSublistPlusMenuCreateChatItem("WebRoomListRoomsSublistPlusMenuCreateChatItem"),

        /**
         * User clicked the create room button in the + context menu of the
         * rooms sublist in Element Web/Desktop.
         */
        WebRoomListRoomsSublistPlusMenuCreateRoomItem("WebRoomListRoomsSublistPlusMenuCreateRoomItem"),

        /**
         * User clicked the explore rooms button in the + context menu of the
         * rooms sublist in Element Web/Desktop.
         */
        WebRoomListRoomsSublistPlusMenuExploreRoomsItem("WebRoomListRoomsSublistPlusMenuExploreRoomsItem"),

        /**
         * User clicked on the button to return to the user onboarding list in
         * the room list in Element Web/Desktop.
         */
        WebRoomListUserOnboardingButton("WebRoomListUserOnboardingButton"),

        /**
         * User clicked on the button to close the user onboarding button in the
         * room list in Element Web/Desktop.
         */
        WebRoomListUserOnboardingIgnoreButton("WebRoomListUserOnboardingIgnoreButton"),

        /**
         * User interacted with leave action in the general tab of the room
         * settings dialog in Element Web/Desktop.
         */
        WebRoomSettingsLeaveButton("WebRoomSettingsLeaveButton"),

        /**
         * User interacted with the prompt to create a new room when adjusting
         * security settings in an existing room in Element Web/Desktop.
         */
        WebRoomSettingsSecurityTabCreateNewRoomButton("WebRoomSettingsSecurityTabCreateNewRoomButton"),

        /**
         * User clicked a thread summary in the timeline of a room in Element
         * Web/Desktop.
         */
        WebRoomTimelineThreadSummaryButton("WebRoomTimelineThreadSummaryButton"),

        /**
         * User interacted with the theme radio selector in the Appearance tab
         * of Settings in Element Web/Desktop.
         */
        WebSettingsAppearanceTabThemeSelector("WebSettingsAppearanceTabThemeSelector"),

        /**
         * User toggled the 'Notifications.showbold' in Element Web/Desktop.
         */
        WebSettingsNotificationsShowBoldToggle("WebSettingsNotificationsShowBoldToggle"),

        /**
         * User toggled the 'Notifications.tac_only_notifications' in Element
         * Web/Desktop.
         */
        WebSettingsNotificationsTACOnlyNotificationsToggle("WebSettingsNotificationsTACOnlyNotificationsToggle"),

        /**
         * User interacted with the pre-built space checkboxes in the Sidebar
         * tab of Settings in Element Web/Desktop.
         */
        WebSettingsSidebarTabSpacesCheckbox("WebSettingsSidebarTabSpacesCheckbox"),

        /**
         * User clicked the explore rooms button in the context menu of a space
         * in Element Web/Desktop.
         */
        WebSpaceContextMenuExploreRoomsItem("WebSpaceContextMenuExploreRoomsItem"),

        /**
         * User clicked the home button in the context menu of a space in
         * Element Web/Desktop.
         */
        WebSpaceContextMenuHomeItem("WebSpaceContextMenuHomeItem"),

        /**
         * User clicked the new room button in the context menu of a space in
         * Element Web/Desktop.
         */
        WebSpaceContextMenuNewRoomItem("WebSpaceContextMenuNewRoomItem"),

        /**
         * User clicked the new room button in the context menu on the space
         * home in Element Web/Desktop.
         */
        WebSpaceHomeCreateRoomButton("WebSpaceHomeCreateRoomButton"),

        /**
         * User clicked the back button on a Thread view going back to the
         * Threads Panel of Element Web/Desktop.
         */
        WebThreadViewBackButton("WebThreadViewBackButton"),

        /**
         * User clicked on the Threads Activity Centre button of Element
         * Web/Desktop.
         */
        WebThreadsActivityCentreButton("WebThreadsActivityCentreButton"),

        /**
         * User clicked on a room in the Threads Activity Centre of Element
         * Web/Desktop.
         */
        WebThreadsActivityCentreRoomItem("WebThreadsActivityCentreRoomItem"),

        /**
         * User clicked on the button to mark all threads in a room as read in
         * Element Web/Desktop.
         */
        WebThreadsMarkAllReadButton("WebThreadsMarkAllReadButton"),

        /**
         * User selected a thread in the Threads panel in Element Web/Desktop.
         */
        WebThreadsPanelThreadItem("WebThreadsPanelThreadItem"),

        /**
         * User clicked the theme toggle button in the user menu of Element
         * Web/Desktop.
         */
        WebUserMenuThemeToggleButton("WebUserMenuThemeToggleButton"),

        /**
         * User clicked on the send DM CTA in the header of the new user
         * onboarding page in Element Web/Desktop.
         */
        WebUserOnboardingHeaderSendDm("WebUserOnboardingHeaderSendDm"),

        /**
         * User clicked on the action of the download apps task on the new user
         * onboarding page in Element Web/Desktop.
         */
        WebUserOnboardingTaskDownloadApps("WebUserOnboardingTaskDownloadApps"),

        /**
         * User clicked on the action of the enable notifications task on the
         * new user onboarding page in Element Web/Desktop.
         */
        WebUserOnboardingTaskEnableNotifications("WebUserOnboardingTaskEnableNotifications"),

        /**
         * User clicked on the action of the find people task on the new user
         * onboarding page in Element Web/Desktop.
         */
        WebUserOnboardingTaskSendDm("WebUserOnboardingTaskSendDm"),

        /**
         * User clicked on the action of the your profile task on the new user
         * onboarding page in Element Web/Desktop.
         */
        WebUserOnboardingTaskSetupProfile("WebUserOnboardingTaskSetupProfile"),
    }

    enum class InteractionType(val rawValue: String) {
        Keyboard("Keyboard"),
        Pointer("Pointer"),
        Touch("Touch"),
    }

    override fun getName() = "Interaction"

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            index?.let { put("index", it) }
            interactionType?.let { put("interactionType", it.rawValue) }
            put("name", name.rawValue)
        }.takeIf { it.isNotEmpty() }
    }
}
