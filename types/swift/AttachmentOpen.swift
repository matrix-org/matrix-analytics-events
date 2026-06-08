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

/// Triggered when the user opens the attachment dialog.
extension AnalyticsEvent {
    public struct AttachmentOpen: AnalyticsEventProtocol {
        public let eventName = "AttachmentOpen"

        /// Whether the user's attachment is going to be included in a thread.
        public let inThread: Bool
        /// Whether the user's attachment is going to be a reply to a previously sent event.
        public let isReply: Bool
        /// The kind of attachment dialog opened. May refer to a module uploader kind.
        public let kind: String

        public init(inThread: Bool, isReply: Bool, kind: String) {
            self.inThread = inThread
            self.isReply = isReply
            self.kind = kind
        }

        public var properties: [String: Any] {
            return [
                "inThread": inThread,
                "isReply": isReply,
                "kind": kind
            ]
        }
    }
}
