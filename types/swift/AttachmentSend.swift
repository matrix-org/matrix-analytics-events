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

/// Triggered when the user sends an attachment.
extension AnalyticsEvent {
    public struct AttachmentSend: AnalyticsEventProtocol {
        public let eventName = "AttachmentSend"

        /// The number of attachments sent.
        public let count: Int
        /// Whether the user was using the composer inside of a thread.
        public let inThread: Bool
        /// Whether the user's composer interaction was a reply to a previously sent event.
        public let isReply: Bool
        /// The kind of attachment dialog opened. May refer to a module uploader kind.
        public let kind: String
        /// The types of attachment sent. If multiple are being sent, use the most common type.
        public let type: String?

        public init(count: Int, inThread: Bool, isReply: Bool, kind: String, type: String?) {
            self.count = count
            self.inThread = inThread
            self.isReply = isReply
            self.kind = kind
            self.type = type
        }

        public var properties: [String: Any] {
            return [
                "count": count,
                "inThread": inThread,
                "isReply": isReply,
                "kind": kind,
                "type": type as Any
            ]
        }
    }
}
