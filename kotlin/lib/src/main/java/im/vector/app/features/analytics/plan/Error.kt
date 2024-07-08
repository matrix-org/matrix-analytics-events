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
 * Triggered when an error occurred.
 */
data class Error(
        /**
         * Context - client defined, can be used for debugging.
         */
        val context: String? = null,
        /**
         * DEPRECATED: Which crypto module is the client currently using.
         */
        val cryptoModule: CryptoModule? = null,
        /**
         * Which crypto backend is the client currently using.
         */
        val cryptoSDK: CryptoSDK? = null,
        val domain: Domain,
        /**
         * An heuristic based on event origin_server_ts and the current device
         * creation time (origin_server_ts - device_ts). This would be used to
         * get the source of the event scroll-back/live/initialSync.
         */
        val eventLocalAgeMillis: Int? = null,
        /**
         * true if userDomain != senderDomain.
         */
        val isFederated: Boolean? = null,
        /**
         * true if the current user is using matrix.org.
         */
        val isMatrixDotOrg: Boolean? = null,
        val name: Name,
        /**
         * UTDs can be permanent or temporary. If temporary, this field will
         * contain the time it took to decrypt the message in milliseconds. If
         * permanent should be -1.
         */
        val timeToDecryptMillis: Int? = null,
        /**
         * true if the current user trusts their own identity (verified session)
         * at time of decryption.
         */
        val userTrustsOwnIdentity: Boolean? = null,
        /**
         * true if that unable to decrypt error was visible to the user.
         */
        val wasVisibleToUser: Boolean? = null,
) : VectorAnalyticsEvent {

    enum class Domain(val rawValue: String) {
        E2EE("E2EE"),
        TO_DEVICE("TO_DEVICE"),
        VOIP("VOIP"),
    }

    enum class Name(val rawValue: String) {

        /**
         * E2EE domain error. Decryption failed for a message sent before you
         * were in the room (shared history visibility and support for sharing
         * past keys is not available/supported).
         */
        ExpectedDueToMembership("ExpectedDueToMembership"),

        /**
         * E2EE domain error. Decryption failed for a message sent before the
         * device logged in, and key backup is not enabled.
         */
        HistoricalMessage("HistoricalMessage"),

        /**
         * E2EE domain error. The room key is known but is ratcheted (index >
         * 0).
         */
        OlmIndexError("OlmIndexError"),

        /**
         * E2EE domain error. Generic unknown inbound group session error.
         */
        OlmKeysNotSentError("OlmKeysNotSentError"),

        /**
         * E2EE domain error. Any other decryption error (missing field, format
         * errors...).
         */
        OlmUnspecifiedError("OlmUnspecifiedError"),

        /**
         * E2EE domain error. The sender withheld the keys for this message.
         */
        RoomKeysWithheld("RoomKeysWithheld"),

        /**
         * TO_DEVICE domain error. The to-device message failed to decrypt.
         */
        ToDeviceFailedToDecrypt("ToDeviceFailedToDecrypt"),

        /**
         * E2EE domain error. Decryption failed due to unknown error.
         */
        UnknownError("UnknownError"),

        /**
         * VOIP domain error. ICE negotiation failed.
         */
        VoipIceFailed("VoipIceFailed"),

        /**
         * VOIP domain error. ICE negotiation timed out.
         */
        VoipIceTimeout("VoipIceTimeout"),

        /**
         * VOIP domain error. The call invite timed out.
         */
        VoipInviteTimeout("VoipInviteTimeout"),

        /**
         * VOIP domain error. The user hung up the call.
         */
        VoipUserHangup("VoipUserHangup"),

        /**
         * VOIP domain error. The user's media failed to start.
         */
        VoipUserMediaFailed("VoipUserMediaFailed"),
    }

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

    enum class CryptoModule(val rawValue: String) {

        /**
         * Native / legacy crypto module specific to each platform.
         */
        Native("Native"),

        /**
         * Shared / cross-platform crypto module written in Rust.
         */
        Rust("Rust"),
    }

    override fun getName() = "Error"

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            context?.let { put("context", it) }
            cryptoModule?.let { put("cryptoModule", it.rawValue) }
            cryptoSDK?.let { put("cryptoSDK", it.rawValue) }
            put("domain", domain.rawValue)
            eventLocalAgeMillis?.let { put("eventLocalAgeMillis", it) }
            isFederated?.let { put("isFederated", it) }
            isMatrixDotOrg?.let { put("isMatrixDotOrg", it) }
            put("name", name.rawValue)
            timeToDecryptMillis?.let { put("timeToDecryptMillis", it) }
            userTrustsOwnIdentity?.let { put("userTrustsOwnIdentity", it) }
            wasVisibleToUser?.let { put("wasVisibleToUser", it) }
        }.takeIf { it.isNotEmpty() }
    }
}
