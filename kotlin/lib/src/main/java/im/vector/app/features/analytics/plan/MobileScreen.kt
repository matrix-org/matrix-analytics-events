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

import im.vector.app.features.analytics.itf.VectorAnalyticsScreen

// GENERATED FILE, DO NOT EDIT. FOR MORE INFORMATION VISIT
// https://github.com/matrix-org/matrix-analytics-events/

/**
 * Triggered when the user changed screen on Element Android/iOS.
 */
data class MobileScreen(
        /**
         * How long the screen was displayed for in milliseconds.
         */
        val durationMs: Int? = null,
        val screenName: ScreenName,
) : VectorAnalyticsScreen {

    enum class ScreenName(val rawValue: String) {
        /**
         * The screen that displays the user's breadcrumbs.
         */
        Breadcrumbs("Breadcrumbs"),

        /**
         * The screen shown to create a poll.
         */
        CreatePollView("CreatePollView"),

        /**
         * The screen shown to create a new (non-direct) room.
         */
        CreateRoom("CreateRoom"),

        /**
         * The screen shown to create a new space.
         */
        CreateSpace("CreateSpace"),

        /**
         * The confirmation screen shown before deactivating an account.
         */
        DeactivateAccount("DeactivateAccount"),

        /**
         * The tab on mobile that displays the dialpad.
         */
        Dialpad("Dialpad"),

        /**
         * The screen shown to edit a poll.
         */
        EditPollView("EditPollView"),

        /**
         * The Favourites tab on mobile that lists your favourite people/rooms.
         */
        Favourites("Favourites"),

        /**
         * The form for the forgot password use case.
         */
        ForgotPassword("ForgotPassword"),

        /**
         * Legacy: The screen that shows information about a specific group.
         */
        Group("Group"),

        /**
         * The Home tab on iOS | possibly the same on Android?
         */
        Home("Home"),

        /**
         * The screen shown to share a link to download the app.
         */
        InviteFriends("InviteFriends"),

        /**
         * Room accessed via space bottom sheet list.
         */
        Invites("Invites"),

        /**
         * The screen shown to share location.
         */
        LocationSend("LocationSend"),

        /**
         * The screen shown to view a shared location.
         */
        LocationView("LocationView"),

        /**
         * The screen that displays the login flow (when the user already has an
         * account).
         */
        Login("Login"),

        /**
         * Legacy: The screen that shows all groups/communities you have joined.
         */
        MyGroups("MyGroups"),

        /**
         * The screen containing tests to help user to fix issues around
         * notifications.
         */
        NotificationTroubleshoot("NotificationTroubleshoot"),

        /**
         * The People tab on mobile that lists all the DM rooms you have joined.
         */
        People("People"),

        /**
         * The screen that displays the registration flow (when the user wants
         * to create an account).
         */
        Register("Register"),

        /**
         * The screen that displays the messages and events received in a room.
         */
        Room("Room"),

        /**
         * The room addresses screen shown from the Room Details screen.
         */
        RoomAddresses("RoomAddresses"),

        /**
         * The screen shown when tapping the name of a room from the Room
         * screen.
         */
        RoomDetails("RoomDetails"),

        /**
         * The screen that lists public rooms for you to discover.
         */
        RoomDirectory("RoomDirectory"),

        /**
         * The screen that lists all the user's rooms and let them filter the
         * rooms.
         */
        RoomFilter("RoomFilter"),

        /**
         * The screen that displays the list of members that are part of a room.
         */
        RoomMembers("RoomMembers"),

        /**
         * The notifications settings screen shown from the Room Details screen.
         */
        RoomNotifications("RoomNotifications"),

        /**
         * The roles permissions screen shown from the Room Details screen.
         */
        RoomPermissions("RoomPermissions"),

        /**
         * Screen that displays room preview if user hasn't joined yet.
         */
        RoomPreview("RoomPreview"),

        /**
         * The screen that allows you to search for messages/files in a specific
         * room.
         */
        RoomSearch("RoomSearch"),

        /**
         * The settings screen shown from the Room Details screen.
         */
        RoomSettings("RoomSettings"),

        /**
         * The screen that allows you to see all of the files sent in a specific
         * room.
         */
        RoomUploads("RoomUploads"),

        /**
         * The Rooms tab on mobile that lists all the (non-direct) rooms you've
         * joined.
         */
        Rooms("Rooms"),

        /**
         * The Files tab shown in the global search screen on Mobile.
         */
        SearchFiles("SearchFiles"),

        /**
         * The Messages tab shown in the global search screen on Mobile.
         */
        SearchMessages("SearchMessages"),

        /**
         * The People tab shown in the global search screen on Mobile.
         */
        SearchPeople("SearchPeople"),

        /**
         * The Rooms tab shown in the global search screen on Mobile.
         */
        SearchRooms("SearchRooms"),

        /**
         * The global settings screen shown in the app.
         */
        Settings("Settings"),

        /**
         * The advanced settings screen (developer mode, rageshake, push
         * notification rules).
         */
        SettingsAdvanced("SettingsAdvanced"),

        /**
         * The settings screen to change the default notification options.
         */
        SettingsDefaultNotifications("SettingsDefaultNotifications"),

        /**
         * The settings screen with general profile settings.
         */
        SettingsGeneral("SettingsGeneral"),

        /**
         * The Help and About screen.
         */
        SettingsHelp("SettingsHelp"),

        /**
         * The settings screen with list of the ignored users.
         */
        SettingsIgnoredUsers("SettingsIgnoredUsers"),

        /**
         * The experimental features settings screen.
         */
        SettingsLabs("SettingsLabs"),

        /**
         * The settings screen with legals information.
         */
        SettingsLegals("SettingsLegals"),

        /**
         * The settings screen to manage notification mentions and keywords.
         */
        SettingsMentionsAndKeywords("SettingsMentionsAndKeywords"),

        /**
         * The notifications settings screen.
         */
        SettingsNotifications("SettingsNotifications"),

        /**
         * The preferences screen (theme, language, editor preferences, etc.
         */
        SettingsPreferences("SettingsPreferences"),

        /**
         * The global security settings screen.
         */
        SettingsSecurity("SettingsSecurity"),

        /**
         * The calls settings screen.
         */
        SettingsVoiceVideo("SettingsVoiceVideo"),

        /**
         * The sidebar shown on mobile with spaces, settings etc.
         */
        Sidebar("Sidebar"),

        /**
         * Room accessed via space bottom sheet list.
         */
        SpaceBottomSheet("SpaceBottomSheet"),

        /**
         * Screen that displays the list of rooms and spaces of a space.
         */
        SpaceExploreRooms("SpaceExploreRooms"),

        /**
         * Screen that displays the list of members of a space.
         */
        SpaceMembers("SpaceMembers"),

        /**
         * The bottom sheet that list all space options.
         */
        SpaceMenu("SpaceMenu"),

        /**
         * The screen shown to create a new direct room.
         */
        StartChat("StartChat"),

        /**
         * The screen shown to select which room directory you'd like to use.
         */
        SwitchDirectory("SwitchDirectory"),

        /**
         * Screen that displays list of threads for a room.
         */
        ThreadList("ThreadList"),

        /**
         * A screen that shows information about a room member.
         */
        User("User"),

        /**
         * The splash screen.
         */
        Welcome("Welcome"),
    }

    override fun getName() = screenName.rawValue

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            durationMs?.let { put("durationMs", it) }
        }.takeIf { it.isNotEmpty() }
    }
}
