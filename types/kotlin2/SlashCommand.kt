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
 * Triggered when the user runs a slash command in their composer.
 */
data class SlashCommand(
        /**
         * The name of this command.
         */
        val command: Command,
        /**
         * Whether this message was composed in legacy editor, the new the rich
         * text editor or the new plain text editor
         */
        val editor: Editor,
) : VectorAnalyticsEvent {

    enum class Command {
        AddWidget,
        Ban,
        Confetti,
        ConvertToDM,
        ConvertToRoom,
        Deop,
        DevTools,
        DiscardSession,
        Fireworks,
        Hearts,
        Help,
        HoldCall,
        Html,
        Ignore,
        Invite,
        Join,
        JumpToDate,
        Lenny,
        Me,
        Msg,
        MyAvatar,
        MyRoomAvatar,
        MyRoomNick,
        Nick,
        Op,
        Part,
        Plain,
        Query,
        Rageshake,
        Rainbow,
        RainbowMe,
        Rainfall,
        RemakeOlm,
        Remove,
        RoomAvatar,
        RoomName,
        Shrug,
        Snowfall,
        SpaceInvaders,
        Spoiler,
        TableFlip,
        ToVirtual,
        Topic,
        Unban,
        Unflip,
        UnholdCall,
        Unignore,
        UpgradeRoom,
        Verify,
        Whois,
    }

    enum class Editor {
        Legacy,
        RteFormatting,
        RtePlain,
    }

    override fun getName() = "SlashCommand"

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            put("command", command.name)
            put("editor", editor.name)
        }.takeIf { it.isNotEmpty() }
    }
}
