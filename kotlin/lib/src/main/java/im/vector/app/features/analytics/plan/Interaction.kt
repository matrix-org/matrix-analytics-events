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
         * User disabled the Optimised Media Uploads setting.
         */
        MobileSettingsOptimizeMediaUploadsDisabled("MobileSettingsOptimizeMediaUploadsDisabled"),

        /**
         * User enabled the Optimised Media Uploads setting.
         */
        MobileSettingsOptimizeMediaUploadsEnabled("MobileSettingsOptimizeMediaUploadsEnabled"),

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
