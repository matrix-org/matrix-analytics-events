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

/// Triggered when the user pin or unpin a message.
extension AnalyticsEvent {
    public struct PinUnpinAction: AnalyticsEventProtocol {
        public let eventName = "PinUnpinAction"

        /// From where the action is triggered.
        public let from: From
        /// Is pin or unpin.
        public let kind: Kind

        public init(from: From, kind: Kind) {
            self.from = from
            self.kind = kind
        }

        public enum Kind: String {
            /// Pin a message.
            case Pin = "Pin"
            /// Unpin a message.
            case Unpin = "Unpin"
        }

        public enum From: String {
            /// Action triggered from the menu item in message pinning list.
            case MessagePinningList = "MessagePinningList"
            /// Action triggered from the timeline.
            case Timeline = "Timeline"
            /// Action triggered from the Unpin all button in message pinning list.
            case UnpinAll = "UnpinAll"
        }

        public var properties: [String: Any] {
            return [
                "from": from.rawValue,
                "kind": kind.rawValue
            ]
        }
    }
}
