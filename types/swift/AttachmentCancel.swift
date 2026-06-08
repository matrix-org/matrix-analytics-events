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

/// Triggered when the user cancels sending an attachment.
extension AnalyticsEvent {
    public struct AttachmentCancel: AnalyticsEventProtocol {
        public let eventName = "AttachmentCancel"

        /// Whether the user was using the composer inside of a thread.
        public let inThread: Bool
        /// Whether the user's composer interaction was a reply to a previously sent event.
        public let isReply: Bool
        /// The kind of attachment dialog opened. May refer to a module uploader kind.
        public let kind: String
        /// Where did the user perform the cancellation.
        public let stage: Stage

        public init(inThread: Bool, isReply: Bool, kind: String, stage: Stage) {
            self.inThread = inThread
            self.isReply = isReply
            self.kind = kind
            self.stage = stage
        }

        public enum Stage: String {
            case Confirmation = "Confirmation"
            case Picker = "Picker"
        }

        public var properties: [String: Any] {
            return [
                "inThread": inThread,
                "isReply": isReply,
                "kind": kind,
                "stage": stage.rawValue
            ]
        }
    }
}
