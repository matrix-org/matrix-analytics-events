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

// GENERATED FILE, DO NOT EDIT. FOR MORE INFORMATION VISIT
// https://github.com/matrix-org/matrix-analytics-events/

/**
 * Super Properties are properties associated with events that are sent with
 * every capture call, be it a $pageview, an autocaptured button click, or
 * anything else.
 */
data class SuperProperties(
        /**
         * Used by web to identify the platform (Web Platform/Electron
         * Platform).
         */
        val appPlatform: String? = null,
        /**
         * Which crypto backend is the client currently using.
         */
        val cryptoSDK: CryptoSDK? = null,
        /**
         * Version of the crypto backend.
         */
        val cryptoSDKVersion: String? = null,
        /**
         * Used as a discriminant to breakdown usage per client.
         */
        val platformCodeName: PlatformCodeName? = null,
) {

    enum class CryptoSDK(val rawValue: String) {
        /**
         * Legacy crypto backend specific to each platform.
         */
        Legacy("Legacy"),

        /**
         * Cross-platform crypto backend written in Rust.
         */
        Rust("Rust"),
    }

    enum class PlatformCodeName(val rawValue: String) {

        /**
         * Element Desktop platform code.
         */
        Desktop("Desktop"),

        /**
         * Element Android platform code.
         */
        EA("EA"),

        /**
         * Element iOS platform code.
         */
        EI("EI"),

        /**
         * Element-X Android platform code.
         */
        EXA("EXA"),

        /**
         * Element-X iOS platform code.
         */
        EXI("EXI"),

        /**
         * Other Platform code.
         */
        Other("Other"),

        /**
         * Element Web platform code.
         */
        Web("Web"),
    }

    fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            appPlatform?.let { put("appPlatform", it) }
            cryptoSDK?.let { put("cryptoSDK", it.rawValue) }
            cryptoSDKVersion?.let { put("cryptoSDKVersion", it) }
            platformCodeName?.let { put("platformCodeName", it.rawValue) }
        }.takeIf { it.isNotEmpty() }
    }
}
