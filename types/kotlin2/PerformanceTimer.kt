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
 * Triggered after timing an operation in the app.
 */
data class PerformanceTimer(
    /**
     * Client defined, can be used for debugging.
     */
    val context: String? = null,
    /**
     * Client defined, an optional value to indicate how many items were handled during the operation.
     */
    val itemCount: Int? = null,
    /**
     * The timer that is being reported.
     */
    val name: Name,
    /**
     * The time reported by the timer in milliseconds.
     */
    val timeMs: Int,
) : VectorAnalyticsEvent {

    enum class Name {
        InitialSyncParsing,
        InitialSyncRequest,
        NotificationsOpenEvent,
        StartupIncrementalSync,
        StartupInitialSync,
        StartupLaunchScreen,
        StartupStorePreload,
        StartupStoreReady,
    }

    override fun getName() = "PerformanceTimer"

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            context?.let { put("context", it) }
            itemCount?.let { put("itemCount", it) }
            put("name", name.name)
            put("timeMs", timeMs)
        }.takeIf { it.isNotEmpty() }
    }
}
