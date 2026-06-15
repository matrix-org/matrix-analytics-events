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
 * Triggered when the user cancels sending an attachment.
 */
data class AttachmentCancel(
        /**
         * Whether the user's attachment is going to be included in a thread.
         */
        val inThread: Boolean,
        /**
         * Whether the user's attachment is going to be a reply to a previously
         * sent event.
         */
        val isReply: Boolean,
        /**
         * The kind of attachment dialog opened. May refer to a module uploader
         * kind.
         */
        val kind: String,
        /**
         * Where did the user perform the cancellation.
         */
        val stage: Stage,
) : VectorAnalyticsEvent {

    enum class Stage(val rawValue: String) {
        Confirmation("Confirmation"),
        Picker("Picker"),
    }

    override fun getName() = "AttachmentCancel"

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            put("inThread", inThread)
            put("isReply", isReply)
            put("kind", kind)
            put("stage", stage.rawValue)
        }.takeIf { it.isNotEmpty() }
    }
}
