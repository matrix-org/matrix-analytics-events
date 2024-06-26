//
// Copyright 2021 New Vector Ltd
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

// GENERATED FILE, DO NOT EDIT. FOR MORE INFORMATION VISIT
// https://github.com/matrix-org/matrix-analytics-events/

/// The user properties to apply when identifying. This is not an event definition. These properties must all be device independent.
extension AnalyticsEvent {
    public struct UserProperties {

        /// The active filter in the All Chats screen.
        public let allChatsActiveFilter: AllChatsActiveFilter?
        /// The selected messaging use case during the onboarding flow.
        public let ftueUseCaseSelection: FtueUseCaseSelection?
        /// Number of joined rooms the user has favourited.
        public let numFavouriteRooms: Int?
        /// Number of spaces (and sub-spaces) the user is joined to.
        public let numSpaces: Int?
        /// Describe the current session recovery state, that if 4S is setup, complete (all secrets cached) or not.
        public let recoveryState: RecoveryState?
        /// Describe the current session verification state, that is if the session is verified or not.
        public let verificationState: VerificationState?

        public init(allChatsActiveFilter: AllChatsActiveFilter?, ftueUseCaseSelection: FtueUseCaseSelection?, numFavouriteRooms: Int?, numSpaces: Int?, recoveryState: RecoveryState?, verificationState: VerificationState?) {
            self.allChatsActiveFilter = allChatsActiveFilter
            self.ftueUseCaseSelection = ftueUseCaseSelection
            self.numFavouriteRooms = numFavouriteRooms
            self.numSpaces = numSpaces
            self.recoveryState = recoveryState
            self.verificationState = verificationState
        }

        public enum FtueUseCaseSelection: String {
            /// The third option, Communities.
            case CommunityMessaging = "CommunityMessaging"
            /// The first option, Friends and family.
            case PersonalMessaging = "PersonalMessaging"
            /// The footer option to skip the question.
            case Skip = "Skip"
            /// The second option, Teams.
            case WorkMessaging = "WorkMessaging"
        }

        public enum AllChatsActiveFilter: String {
            /// Filters are activated and All is selected.
            case All = "All"
            /// Filters are activated and Favourites is selected.
            case Favourites = "Favourites"
            /// Filters are activated and People is selected.
            case People = "People"
            /// Filters are activated and Unreads is selected.
            case Unreads = "Unreads"
        }

        public enum VerificationState: String {
            /// The device is unverified.
            case NotVerified = "NotVerified"
            /// The device is considered to be verified, it has been signed by its user identity.
            case Verified = "Verified"
        }

        public enum RecoveryState: String {
            /// No default secret storage key exists or it is disabled explicitly using the account data event.
            case Disabled = "Disabled"
            /// Secret storage is set up and we have all the secrets locally.
            case Enabled = "Enabled"
            /// Secret storage is set up but we're missing some secrets.
            case Incomplete = "Incomplete"
        }

        public var properties: [String: Any?] {
            return [
                "allChatsActiveFilter": allChatsActiveFilter?.rawValue,
                "ftueUseCaseSelection": ftueUseCaseSelection?.rawValue,
                "numFavouriteRooms": numFavouriteRooms,
                "numSpaces": numSpaces,
                "recoveryState": recoveryState?.rawValue,
                "verificationState": verificationState?.rawValue
            ]
        }
    }
}
