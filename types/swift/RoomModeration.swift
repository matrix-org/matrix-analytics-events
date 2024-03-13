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

        public init(action: Action) {
            self.action = action
        }

        public enum Action: String {
            /// Banned a room member.
            case BanMember
            /// Changed a room member's role to administrator.
            case ChangeMemberRoleAdmin
            /// Changed a room member's role to moderator.
            case ChangeMemberRoleModerator
            /// Changed a room member's role to user.
            case ChangeMemberRoleUser
            /// Changed the rights to ban room members.
            case ChangePermissionsBanMembers
            /// Changed the rights to invite users to the room.
            case ChangePermissionsInviteUsers
            /// Changed the rights to kick room members.
            case ChangePermissionsKickMembers
            /// Changed the rights to redact messages in the room.
            case ChangePermissionsRedactMessages
            /// Changed the rights to set the room's avatar.
            case ChangePermissionsRoomAvatar
            /// Changed the rights to set the room's name.
            case ChangePermissionsRoomName
            /// Changed the rights to set the room's topic.
            case ChangePermissionsRoomTopic
            /// Changed the rights to send messages in the room.
            case ChangePermissionsSendMessages
            /// Kicked a room member.
            case KickMember
            /// Unbanned a room member.
            case UnbanMember
        }

        public var properties: [String: Any] {
            return [
                "action": action.rawValue
            ]
        }
    }
}
