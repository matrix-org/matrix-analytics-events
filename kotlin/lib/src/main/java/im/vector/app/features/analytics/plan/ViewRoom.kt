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
 * Triggered when the user changes rooms.
 */
data class ViewRoom(
        /**
         * active space when user navigated to the room.
         */
        val activeSpace: ActiveSpace? = null,
        /**
         * Whether the room is a DM.
         */
        val isDM: Boolean? = null,
        /**
         * Whether the room is a Space.
         */
        val isSpace: Boolean? = null,
        /**
         * The reason for the room change if known.
         */
        val trigger: Trigger? = null,
        /**
         * Whether the interaction was performed via the keyboard input.
         */
        val viaKeyboard: Boolean? = null,
) : VectorAnalyticsEvent {

    enum class Trigger(val rawValue: String) {
        /**
         * Room accessed due to being just created.
         */
        Created("Created"),

        /**
         * Room switched due to user interacting with a message search result.
         */
        MessageSearch("MessageSearch"),

        /**
         * Room switched due to user selecting a user to go to a DM with.
         */
        MessageUser("MessageUser"),

        /**
         * Room accessed via space explore.
         */
        MobileExploreRooms("MobileExploreRooms"),

        /**
         * Room switched due to user interacting with a file search result.
         */
        MobileFileSearch("MobileFileSearch"),

        /**
         * Room accessed via interacting with the incall screen.
         */
        MobileInCall("MobileInCall"),

        /**
         * Room accessed during external sharing.
         */
        MobileLinkShare("MobileLinkShare"),

        /**
         * Room accessed via link.
         */
        MobilePermalink("MobilePermalink"),

        /**
         * Room accessed via interacting with direct chat item in the room
         * contact detail screen.
         */
        MobileRoomMemberDetail("MobileRoomMemberDetail"),

        /**
         * Room accessed via preview.
         */
        MobileRoomPreview("MobileRoomPreview"),

        /**
         * Room switched due to user interacting with a room search result.
         */
        MobileRoomSearch("MobileRoomSearch"),

        /**
         * Room accessed via interacting with direct chat item in the search
         * contact detail screen.
         */
        MobileSearchContactDetail("MobileSearchContactDetail"),

        /**
         * Room accessed via space bottom sheet list.
         */
        MobileSpaceBottomSheet("MobileSpaceBottomSheet"),

        /**
         * Room accessed via interacting with direct chat item in the space
         * contact detail screen.
         */
        MobileSpaceMemberDetail("MobileSpaceMemberDetail"),

        /**
         * Room accessed via space members list.
         */
        MobileSpaceMembers("MobileSpaceMembers"),

        /**
         * Space accessed via interacting with the space menu.
         */
        MobileSpaceMenu("MobileSpaceMenu"),

        /**
         * Space accessed via interacting with a space settings menu item.
         */
        MobileSpaceSettings("MobileSpaceSettings"),

        /**
         * Room accessed via a push/desktop notification.
         */
        Notification("Notification"),

        /**
         * Room accessed via the predecessor link at the top of the upgraded
         * room.
         */
        Predecessor("Predecessor"),

        /**
         * Room accessed via the public rooms directory.
         */
        RoomDirectory("RoomDirectory"),

        /**
         * Room accessed via the room list.
         */
        RoomList("RoomList"),

        /**
         * Room accessed via a shortcut.
         */
        Shortcut("Shortcut"),

        /**
         * Room accessed via a slash command in Element Web/Desktop like /goto.
         */
        SlashCommand("SlashCommand"),

        /**
         * Room accessed via the space hierarchy view.
         */
        SpaceHierarchy("SpaceHierarchy"),

        /**
         * Room accessed via a timeline pill or link in another room.
         */
        Timeline("Timeline"),

        /**
         * Room accessed via a tombstone at the bottom of a predecessor room.
         */
        Tombstone("Tombstone"),

        /**
         * Room switched due to user interacting with incoming verification
         * request.
         */
        VerificationRequest("VerificationRequest"),

        /**
         * Room switched due to accepting a call in a different room in Element
         * Web/Desktop.
         */
        WebAcceptCall("WebAcceptCall"),

        /**
         * Room switched due to making a call via the dial pad in Element
         * Web/Desktop.
         */
        WebDialPad("WebDialPad"),

        /**
         * Room accessed via interacting with the floating call or Jitsi PIP in
         * Element Web/Desktop.
         */
        WebFloatingCallWindow("WebFloatingCallWindow"),

        /**
         * Room accessed via the shortcut in Element Web/Desktop's forward
         * modal.
         */
        WebForwardShortcut("WebForwardShortcut"),

        /**
         * Room accessed via the Element Web/Desktop horizontal breadcrumbs at
         * the top of the room list.
         */
        WebHorizontalBreadcrumbs("WebHorizontalBreadcrumbs"),

        /**
         * Room accessed via an Element Web/Desktop keyboard shortcut like go to
         * next room with unread messages.
         */
        WebKeyboardShortcut("WebKeyboardShortcut"),

        /**
         * Room accessed via Element Web/Desktop's notification panel.
         */
        WebNotificationPanel("WebNotificationPanel"),

        /**
         * Room accessed via the predecessor link in Settings > Advanced in
         * Element Web/Desktop.
         */
        WebPredecessorSettings("WebPredecessorSettings"),

        /**
         * Room accessed via clicking on a notifications badge on a room list
         * sublist in Element Web/Desktop.
         */
        WebRoomListNotificationBadge("WebRoomListNotificationBadge"),

        /**
         * Room switched due to the user changing space in Element Web/Desktop.
         */
        WebSpaceContextSwitch("WebSpaceContextSwitch"),

        /**
         * Room accessed via clicking on the notifications badge on the
         * currently selected space in Element Web/Desktop.
         */
        WebSpacePanelNotificationBadge("WebSpacePanelNotificationBadge"),

        /**
         * Room accessed via interacting with the Threads Activity Centre in
         * Element Web/Desktop.
         */
        WebThreadsActivityCentre("WebThreadsActivityCentre"),

        /**
         * Room accessed via Element Web/Desktop's Unified Search modal.
         */
        WebUnifiedSearch("WebUnifiedSearch"),

        /**
         * Room accessed via the Element Web/Desktop vertical breadcrumb hover
         * menu.
         */
        WebVerticalBreadcrumbs("WebVerticalBreadcrumbs"),

        /**
         * Room switched due to widget interaction.
         */
        Widget("Widget"),
    }

    enum class ActiveSpace(val rawValue: String) {

        /**
         * Active space is Home.
         */
        Home("Home"),

        /**
         * Active space is a meta space.
         */
        Meta("Meta"),

        /**
         * Active space is a private space.
         */
        Private("Private"),

        /**
         * Active space is a public space.
         */
        Public("Public"),
    }

    override fun getName() = "ViewRoom"

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            activeSpace?.let { put("activeSpace", it.rawValue) }
            isDM?.let { put("isDM", it) }
            isSpace?.let { put("isSpace", it) }
            trigger?.let { put("trigger", it.rawValue) }
            viaKeyboard?.let { put("viaKeyboard", it) }
        }.takeIf { it.isNotEmpty() }
    }
}
