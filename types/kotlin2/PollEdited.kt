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
 * Triggered when a poll is edited.
 */
data class PollEdited(
        /**
         * Whether this poll is anonymous.
         */
        val isAnonymous: Boolean,
        /**
         * Number of answers in the poll.
         */
        val numberOfAnswers: Int,
) : VectorAnalyticsEvent {

    override fun getName() = "PollEdited"

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            put("isAnonymous", isAnonymous)
            put("numberOfAnswers", numberOfAnswers)
        }.takeIf { it.isNotEmpty() }
    }
}
