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
 * Triggered when the user joins a room.
 */
data class JoinedRoom(
        /**
         * Whether the room is a DM.
         */
        val isDM: Boolean,
        /**
         * Whether the room is a Space.
         */
        val isSpace: Boolean,
        /**
         * The size of the room.
         */
        val roomSize: RoomSize,
        /**
         * The trigger for a room being joined if known.
         */
        val trigger: Trigger? = null,
) : VectorAnalyticsEvent {

    enum class Trigger(val rawValue: String) {
        /**
         * Room joined via an invite.
         */
        Invite("Invite"),

        /**
         * Room joined via link.
         */
        MobilePermalink("MobilePermalink"),

        /**
         * Room joined via a push/desktop notification.
         */
        Notification("Notification"),

        /**
         * Room joined via the public rooms directory.
         */
        RoomDirectory("RoomDirectory"),

        /**
         * Room joined via its preview.
         */
        RoomPreview("RoomPreview"),

        /**
         * Room joined via the /join slash command.
         */
        SlashCommand("SlashCommand"),

        /**
         * Room joined via the space hierarchy view.
         */
        SpaceHierarchy("SpaceHierarchy"),

        /**
         * Room joined via a timeline pill or link in another room.
         */
        Timeline("Timeline"),
    }

    enum class RoomSize(val rawValue: String) {
        ElevenToOneHundred("ElevenToOneHundred"),
        MoreThanAThousand("MoreThanAThousand"),
        One("One"),
        OneHundredAndOneToAThousand("OneHundredAndOneToAThousand"),
        ThreeToTen("ThreeToTen"),
        Two("Two"),
    }

    override fun getName() = "JoinedRoom"

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            put("isDM", isDM)
            put("isSpace", isSpace)
            put("roomSize", roomSize.rawValue)
            trigger?.let { put("trigger", it.rawValue) }
        }.takeIf { it.isNotEmpty() }
    }
}
