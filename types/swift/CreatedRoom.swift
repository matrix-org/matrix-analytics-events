//
// Copyright 2026 Element Creations Ltd.
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

/// Triggered when the user creates a room.
extension AnalyticsEvent {
    public struct CreatedRoom: AnalyticsEventProtocol {
        public let eventName = "CreatedRoom"

        /// Whether the room is a DM.
        public let isDM: Bool
        public let joinRule: JoinRule

        public init(isDM: Bool, joinRule: JoinRule) {
            self.isDM = isDM
            self.joinRule = joinRule
        }

        public enum JoinRule: String {
            case Invite = "Invite"
            case Knock = "Knock"
            case KnockRestricted = "KnockRestricted"
            case Public = "Public"
            case Restricted = "Restricted"
        }

        public var properties: [String: Any] {
            return [
                "isDM": isDM,
                "joinRule": joinRule.rawValue
            ]
        }
    }
}
