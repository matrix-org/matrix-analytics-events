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
 * The user properties to apply when identifying. This is not an event
 * definition. These properties must all be device independent.
 */
data class UserProperties(
        /**
         * The active filter in the All Chats screen.
         */
        val allChatsActiveFilter: AllChatsActiveFilter? = null,
        /**
         * The selected messaging use case during the onboarding flow.
         */
        val ftueUseCaseSelection: FtueUseCaseSelection? = null,
        /**
         * Number of joined rooms the user has favourited.
         */
        val numFavouriteRooms: Int? = null,
        /**
         * Number of spaces (and sub-spaces) the user is joined to.
         */
        val numSpaces: Int? = null,
        /**
         * Describe the current session recovery state, that if 4S is setup,
         * complete (all secrets cached) or not.
         */
        val recoveryState: RecoveryState? = null,
        /**
         * Describe the current session verification state, that is if the
         * session is verified or not.
         */
        val verificationState: VerificationState? = null,
) {

    enum class FtueUseCaseSelection(val rawValue: String) {
        /**
         * The third option, Communities.
         */
        CommunityMessaging("CommunityMessaging"),

        /**
         * The first option, Friends and family.
         */
        PersonalMessaging("PersonalMessaging"),

        /**
         * The footer option to skip the question.
         */
        Skip("Skip"),

        /**
         * The second option, Teams.
         */
        WorkMessaging("WorkMessaging"),
    }

    enum class AllChatsActiveFilter(val rawValue: String) {

        /**
         * Filters are activated and All is selected.
         */
        All("All"),

        /**
         * Filters are activated and Favourites is selected.
         */
        Favourites("Favourites"),

        /**
         * Filters are activated and People is selected.
         */
        People("People"),

        /**
         * Filters are activated and Unreads is selected.
         */
        Unreads("Unreads"),
    }

    enum class VerificationState(val rawValue: String) {

        /**
         * The device is unverified.
         */
        NotVerified("NotVerified"),

        /**
         * The device is considered to be verified, it has been signed by its
         * user identity.
         */
        Verified("Verified"),
    }

    enum class RecoveryState(val rawValue: String) {

        /**
         * No default secret storage key exists or it is disabled explicitly
         * using the account data event.
         */
        Disabled("Disabled"),

        /**
         * Secret storage is set up and we have all the secrets locally.
         */
        Enabled("Enabled"),

        /**
         * Secret storage is set up but we're missing some secrets.
         */
        Incomplete("Incomplete"),
    }

    fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            allChatsActiveFilter?.let { put("allChatsActiveFilter", it.rawValue) }
            ftueUseCaseSelection?.let { put("ftueUseCaseSelection", it.rawValue) }
            numFavouriteRooms?.let { put("numFavouriteRooms", it) }
            numSpaces?.let { put("numSpaces", it) }
            recoveryState?.let { put("recoveryState", it.rawValue) }
            verificationState?.let { put("verificationState", it.rawValue) }
        }.takeIf { it.isNotEmpty() }
    }
}
