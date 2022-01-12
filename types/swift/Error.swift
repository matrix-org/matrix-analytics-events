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

/// Triggered when an error occurred
extension AnalyticsEvent {
    public struct Error: AnalyticsEventProtocol {
        public let eventName = "Error"

        /// Context - client defined, can be used for debugging
        public let context: String?
        public let domain: Domain
        public let name: Name

        public init(context: String?, domain: Domain, name: Name) {
            self.context = context
            self.domain = domain
            self.name = name
        }

        public enum Domain: String {
            case E2EE
            case VOIP
        }

        public enum Name: String {
            case OlmIndexError
            case OlmKeysNotSentError
            case OlmUnspecifiedError
            case UnknownError
            case VoipIceFailed
            case VoipIceTimeout
            case VoipInviteTimeout
            case VoipUserHangup
            case VoipUserMediaFailed
        }

        public var properties: [String: Any] {
            return [
                "context": context as Any,
                "domain": domain.rawValue,
                "name": name.rawValue
            ]
        }
    }
}