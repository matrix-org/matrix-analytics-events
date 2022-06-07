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

        /// Whether the user has the favourites space enabled.
        public let WebMetaSpaceFavouritesEnabled: Bool?
        /// Whether the user has the home space set to all rooms.
        public let WebMetaSpaceHomeAllRooms: Bool?
        /// Whether the user has the home space enabled.
        public let WebMetaSpaceHomeEnabled: Bool?
        /// Whether the user has the other rooms space enabled.
        public let WebMetaSpaceOrphansEnabled: Bool?
        /// Whether the user has the people space enabled.
        public let WebMetaSpacePeopleEnabled: Bool?
        /// The selected messaging use case during the onboarding flow.
        public let ftueUseCaseSelection: FtueUseCaseSelection?
        /// Number of joined rooms the user has favourited.
        public let numFavouriteRooms: Int?
        /// Number of spaces (and sub-spaces) the user is joined to.
        public let numSpaces: Int?

        public init(WebMetaSpaceFavouritesEnabled: Bool?, WebMetaSpaceHomeAllRooms: Bool?, WebMetaSpaceHomeEnabled: Bool?, WebMetaSpaceOrphansEnabled: Bool?, WebMetaSpacePeopleEnabled: Bool?, ftueUseCaseSelection: FtueUseCaseSelection?, numFavouriteRooms: Int?, numSpaces: Int?) {
            self.WebMetaSpaceFavouritesEnabled = WebMetaSpaceFavouritesEnabled
            self.WebMetaSpaceHomeAllRooms = WebMetaSpaceHomeAllRooms
            self.WebMetaSpaceHomeEnabled = WebMetaSpaceHomeEnabled
            self.WebMetaSpaceOrphansEnabled = WebMetaSpaceOrphansEnabled
            self.WebMetaSpacePeopleEnabled = WebMetaSpacePeopleEnabled
            self.ftueUseCaseSelection = ftueUseCaseSelection
            self.numFavouriteRooms = numFavouriteRooms
            self.numSpaces = numSpaces
        }

        public enum FtueUseCaseSelection: String {
            /// The third option, Communities.
            case CommunityMessaging
            /// The first option, Friends and family.
            case PersonalMessaging
            /// The footer option to skip the question.
            case Skip
            /// The second option, Teams.
            case WorkMessaging
        }

        public var properties: [String: Any?] {
            return [
                "WebMetaSpaceFavouritesEnabled": WebMetaSpaceFavouritesEnabled,
                "WebMetaSpaceHomeAllRooms": WebMetaSpaceHomeAllRooms,
                "WebMetaSpaceHomeEnabled": WebMetaSpaceHomeEnabled,
                "WebMetaSpaceOrphansEnabled": WebMetaSpaceOrphansEnabled,
                "WebMetaSpacePeopleEnabled": WebMetaSpacePeopleEnabled,
                "ftueUseCaseSelection": ftueUseCaseSelection?.rawValue,
                "numFavouriteRooms": numFavouriteRooms,
                "numSpaces": numSpaces
            ]
        }
    }
}
