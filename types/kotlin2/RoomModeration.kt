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
 * Triggered when a moderation action is performed within a room.
 */
data class RoomModeration(
        /**
         * The action that was performed.
         */
        val action: Action,
) : VectorAnalyticsEvent {

    enum class Action {
        /**
         * Banned a room member.
         */
        BanMember,

        /**
         * Changed a room member's role to administrator.
         */
        ChangeMemberRoleAdmin,

        /**
         * Changed a room member's role to moderator.
         */
        ChangeMemberRoleModerator,

        /**
         * Changed a room member's role to user.
         */
        ChangeMemberRoleUser,

        /**
         * Changed the permissions for banning room members.
         */
        ChangePermissionsBanMembers,

        /**
         * Changed the permissions for inviting users to the room.
         */
        ChangePermissionsInviteUsers,

        /**
         * Changed the permissions for kicking room members.
         */
        ChangePermissionsKickMembers,

        /**
         * Changed the permissions for redacting messages in the room.
         */
        ChangePermissionsRedactMessages,

        /**
         * Changed the permissions for setting the room's avatar.
         */
        ChangePermissionsRoomAvatar,

        /**
         * Changed the permissions for setting the room's name.
         */
        ChangePermissionsRoomName,

        /**
         * Changed the permissions for setting the room's topic.
         */
        ChangePermissionsRoomTopic,

        /**
         * Changed the permissions for sending messages in the room.
         */
        ChangePermissionsSendMessages,

        /**
         * Kicked a room member.
         */
        KickMember,

        /**
         * Reset the all of the room permissions back to their default values.
         */
        ResetPermissions,

        /**
         * Unbanned a room member.
         */
        UnbanMember,
    }

    override fun getName() = "RoomModeration"

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            put("action", action.name)
        }.takeIf { it.isNotEmpty() }
    }
}
