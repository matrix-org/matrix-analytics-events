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

/// Triggered when a moderation action is performed within a room.
extension AnalyticsEvent {
    public struct RoomModeration: AnalyticsEventProtocol {
        public let eventName = "RoomModeration"

        /// The action that was performed.
        public let action: Action
        /// When the action sets a particular power level, this is the suggested role for that the power level.
        public let role: Role?

        public init(action: Action, role: Role?) {
            self.action = action
            self.role = role
        }

        public enum Action: String {
            /// Banned a room member.
            case BanMember = "BanMember"
            /// Changed a room member's power level.
            case ChangeMemberRole = "ChangeMemberRole"
            /// Changed the power level required to ban room members.
            case ChangePermissionsBanMembers = "ChangePermissionsBanMembers"
            /// Changed the power level required to invite users to the room.
            case ChangePermissionsInviteUsers = "ChangePermissionsInviteUsers"
            /// Changed the power level required to kick room members.
            case ChangePermissionsKickMembers = "ChangePermissionsKickMembers"
            /// Changed the power level required to redact messages in the room.
            case ChangePermissionsRedactMessages = "ChangePermissionsRedactMessages"
            /// Changed the power level required to set the room's avatar.
            case ChangePermissionsRoomAvatar = "ChangePermissionsRoomAvatar"
            /// Changed the power level required to set the room's name.
            case ChangePermissionsRoomName = "ChangePermissionsRoomName"
            /// Changed the power level required to set the room's topic.
            case ChangePermissionsRoomTopic = "ChangePermissionsRoomTopic"
            /// Changed the power level required to send messages in the room.
            case ChangePermissionsSendMessages = "ChangePermissionsSendMessages"
            /// Kicked a room member.
            case KickMember = "KickMember"
            /// Reset all of the room permissions back to their default values.
            case ResetPermissions = "ResetPermissions"
            /// Unbanned a room member.
            case UnbanMember = "UnbanMember"
        }

        public enum Role: String {
            /// A power level of 100.
            case Administrator = "Administrator"
            /// A power level of 50.
            case Moderator = "Moderator"
            /// Any other power level.
            case Other = "Other"
            /// A power level of 0.
            case User = "User"
        }

        public var properties: [String: Any] {
            return [
                "action": action.rawValue,
                "role": role?.rawValue as Any
            ]
        }
    }
}
