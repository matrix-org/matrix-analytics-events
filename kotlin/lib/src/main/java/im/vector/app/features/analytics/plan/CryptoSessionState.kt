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
 * Describe the current session crypto state, that is if the session is verified
 * or not, if recovery is correctly setup.
 */
data class CryptoSessionState(
        val recoveryState: RecoveryState,
        val verificationState: VerificationState,
) : VectorAnalyticsEvent {

    enum class VerificationState {
        /**
         * The device is unverified.
         */
        NotVerified,

        /**
         * The device is considered to be verified, it has been signed by its
         * user identity.
         */
        Verified,
    }

    enum class RecoveryState {

        /**
         * No default secret storage key exists or it is disabled explicitly
         * using the account data event.
         */
        Disabled,

        /**
         * Secret storage is set up and we have all the secrets locally.
         */
        Enabled,

        /**
         * Secret storage is set up but we're missing some secrets.
         */
        Incomplete,
    }

    override fun getName() = "CryptoSessionState"

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            put("recoveryState", recoveryState.name)
            put("verificationState", verificationState.name)
        }.takeIf { it.isNotEmpty() }
    }
}
