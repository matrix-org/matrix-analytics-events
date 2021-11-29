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

// GENERATED FILE, DO NOT EDIT

/**
 * Used to track the performance of startup operations.
 */
data class StartupPerformance(
    /**
     * Client defined, can be used for debugging.
     */
    val context: String? = null,
    /**
     * The length of the operation in milliseconds.
     */
    val durationMs: Double,
    /**
     * The operation that was profiled.
     */
    val operation: Operation,
) : VectorAnalyticsEvent {

    enum class Operation {
        IncrementalSync,
        InitialSync,
        LaunchScreen,
        MountData,
        StorePreload,
    }

    override fun getName() = "StartupPerformance"

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            context?.let { put("context", it) }
            put("durationMs", durationMs)
            put("operation", operation.name)
        }.takeIf { it.isNotEmpty() }
    }
}
