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
 * Triggered when the users collapse or expand a section.
 */
data class ExpandCollapseSection(
        /**
         * From where the action is triggered.
         */
        val from: From,
        /**
         * Is expand or collapse.
         */
        val kind: Kind,
) : VectorAnalyticsEvent {

    enum class Kind(val rawValue: String) {
        /**
         * Collapse a section.
         */
        Collapse("Collapse"),

        /**
         * Expand a section.
         */
        Expand("Expand"),
    }

    enum class From(val rawValue: String) {

        /**
         * Action triggered from the room list header.
         */
        RoomListHeader("RoomListHeader"),

        /**
         * Action triggered from a section header.
         */
        SectionHeader("SectionHeader"),
    }

    override fun getName() = "ExpandCollapseSection"

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            put("from", from.rawValue)
            put("kind", kind.rawValue)
        }.takeIf { it.isNotEmpty() }
    }
}
