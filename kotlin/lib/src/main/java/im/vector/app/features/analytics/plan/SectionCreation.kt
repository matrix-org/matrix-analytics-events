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
 * Triggered when the users create a section.
 */
data class SectionCreation(
        /**
         * From where the action is triggered.
         */
        val from: From,
) : VectorAnalyticsEvent {

    enum class From(val rawValue: String) {
        /**
         * Action triggered from the room list header.
         */
        RoomListHeader("RoomListHeader"),

        /**
         * Action triggered from the room list item overflow menu.
         */
        RoomListItemOverflowMenu("RoomListItemOverflowMenu"),
    }

    override fun getName() = "SectionCreation"

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            put("from", from.rawValue)
        }.takeIf { it.isNotEmpty() }
    }
}
