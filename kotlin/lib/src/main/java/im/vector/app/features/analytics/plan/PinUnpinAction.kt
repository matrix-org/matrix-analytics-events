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
 * Triggered when the user pin or unpin a message.
 */
data class PinUnpinAction(
        /**
         * From where the action is triggered.
         */
        val from: From,
        /**
         * Is pin or unpin.
         */
        val kind: Kind,
) : VectorAnalyticsEvent {

    enum class Kind(val rawValue: String) {
        /**
         * Pin a message.
         */
        Pin("Pin"),

        /**
         * Unpin a message.
         */
        Unpin("Unpin"),
    }

    enum class From(val rawValue: String) {

        /**
         * Action triggered from the menu item in message pinning list.
         */
        MessagePinningList("MessagePinningList"),

        /**
         * Action triggered from the timeline.
         */
        Timeline("Timeline"),

        /**
         * Action triggered from the Unpin all button in message pinning list.
         */
        UnpinAll("UnpinAll"),
    }

    override fun getName() = "PinUnpinAction"

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            put("from", from.rawValue)
            put("kind", kind.rawValue)
        }.takeIf { it.isNotEmpty() }
    }
}
