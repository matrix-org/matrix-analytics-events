/*
 * Copyright (c) 2026 Element Creations Ltd.
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
 * Triggered when the user changes the room list filters.
 */
data class RoomFilterChanged(
        /**
         * The set of filters that are now active after this change. This helps
         * track which filter combinations users prefer.
         */
        val activeFilters: List<String>,
        /**
         * The filter that was toggled by the user.
         */
        val changedFilter: ChangedFilter,
        /**
         * Whether the filter was enabled (true) or disabled (false).
         */
        val isEnabled: Boolean,
) : VectorAnalyticsEvent {

    enum class ChangedFilter(val rawValue: String) {
        /**
         * Filter for favourites.
         */
        Favourites("Favourites"),

        /**
         * Filter for invites.
         */
        Invites("Invites"),

        /**
         * Filter for low priority messages.
         */
        LowPriority("LowPriority"),

        /**
         * Filter for mentions.
         */
        Mentions("Mentions"),

        /**
         * Filter for people/DMs.
         */
        People("People"),

        /**
         * Filter for rooms.
         */
        Rooms("Rooms"),

        /**
         * Filter for unread messages.
         */
        Unreads("Unreads"),
    }

    override fun getName() = "RoomFilterChanged"

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            put("activeFilters", activeFilters)
            put("changedFilter", changedFilter.rawValue)
            put("isEnabled", isEnabled)
        }.takeIf { it.isNotEmpty() }
    }
}
