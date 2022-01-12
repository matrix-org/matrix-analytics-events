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

/// Triggered when the user joins a room.
extension AnalyticsEvent {
    public struct JoinedRoom: AnalyticsEventProtocol {
        public let eventName = "JoinedRoom"

        /// Whether the room is a DM.
        public let isDM: Bool
        /// The size of the room.
        public let roomSize: RoomSize

        public init(isDM: Bool, roomSize: RoomSize) {
            self.isDM = isDM
            self.roomSize = roomSize
        }

        public enum RoomSize: String {
            case ElevenToOneHundred
            case MoreThanAThousand
            case OneHundredAndOneToAThousand
            case ThreeToTen
            case Two
        }

        public var properties: [String: Any] {
            return [
                "isDM": isDM,
                "roomSize": roomSize.rawValue
            ]
        }
    }
}
