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
         * Changed the rights to ban room members.
         */
        ChangePermissionsBanMembers,

        /**
         * Changed the rights to invite users to the room.
         */
        ChangePermissionsInviteUsers,

        /**
         * Changed the rights to kick room members.
         */
        ChangePermissionsKickMembers,

        /**
         * Changed the rights to redact messages in the room.
         */
        ChangePermissionsRedactMessages,

        /**
         * Changed the rights to set the room's avatar.
         */
        ChangePermissionsRoomAvatar,

        /**
         * Changed the rights to set the room's name.
         */
        ChangePermissionsRoomName,

        /**
         * Changed the rights to set the room's topic.
         */
        ChangePermissionsRoomTopic,

        /**
         * Changed the rights to send messages in the room.
         */
        ChangePermissionsSendMessages,

        /**
         * Kicked a room member.
         */
        KickMember,

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
