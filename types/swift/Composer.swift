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

/// Triggered when the user sends a message via the composer.
extension AnalyticsEvent {
    public struct Composer: AnalyticsEventProtocol {
        public let eventName = "Composer"

        /// Whether the user was using the composer inside of a thread.
        public let inThread: Bool
        /// Whether the user's composer interaction was editing a previously sent event.
        public let isEditing: Bool
        /// Whether the user's composer interaction was a reply to a previously sent event.
        public let isReply: Bool
        /// The type of the message.
        public let messageType: MessageType
        /// Whether this message begins a new thread or not.
        public let startsThread: Bool?

        public init(inThread: Bool, isEditing: Bool, isReply: Bool, messageType: MessageType, startsThread: Bool?) {
            self.inThread = inThread
            self.isEditing = isEditing
            self.isReply = isReply
            self.messageType = messageType
            self.startsThread = startsThread
        }

        public enum MessageType: String {
            /// A pin drop location message.
            case LocationPin
            /// A user current location message.
            case LocationUser
            /// A poll message.
            case Poll
            /// A text message.
            case Text
            /// A voice message.
            case VoiceMessage
        }

        public var properties: [String: Any] {
            return [
                "inThread": inThread,
                "isEditing": isEditing,
                "isReply": isReply,
                "messageType": messageType.rawValue,
                "startsThread": startsThread as Any
            ]
        }
    }
}
