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

/// Triggered when the user runs a slash command in their composer.
extension AnalyticsEvent {
    public struct SlashCommand: AnalyticsEventProtocol {
        public let eventName = "SlashCommand"

        /// The name of this command.
        public let command: Command
        /// Whether this message was composed in legacy editor, the new the rich text editor or the new plain text editor
        public let editor: Editor

        public init(command: Command, editor: Editor) {
            self.command = command
            self.editor = editor
        }

        public enum Command: String {
            case AddWidget
            case Ban
            case Confetti
            case ConvertToDM
            case ConvertToRoom
            case Deop
            case DevTools
            case DiscardSession
            case Fireworks
            case Hearts
            case Help
            case HoldCall
            case Html
            case Ignore
            case Invite
            case Join
            case JumpToDate
            case Lenny
            case Me
            case Msg
            case MyAvatar
            case MyRoomAvatar
            case MyRoomNick
            case Nick
            case Op
            case Part
            case Plain
            case Query
            case Rageshake
            case Rainbow
            case RainbowMe
            case Rainfall
            case RemakeOlm
            case Remove
            case RoomAvatar
            case RoomName
            case Shrug
            case Snowfall
            case SpaceInvaders
            case Spoiler
            case TableFlip
            case ToVirtual
            case Topic
            case Unban
            case Unflip
            case UnholdCall
            case Unignore
            case UpgradeRoom
            case Verify
            case Whois
        }

        public enum Editor: String {
            case Legacy
            case RteFormatting
            case RtePlain
        }

        public var properties: [String: Any] {
            return [
                "command": command.rawValue,
                "editor": editor.rawValue
            ]
        }
    }
}
