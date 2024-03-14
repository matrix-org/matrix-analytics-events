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

/// Triggered when an error occurred.
extension AnalyticsEvent {
    public struct Error: AnalyticsEventProtocol {
        public let eventName = "Error"

        /// Context - client defined, can be used for debugging.
        public let context: String?
        /// DEPRECATED: Which crypto module is the client currently using.
        public let cryptoModule: CryptoModule?
        /// Which crypto backend is the client currently using.
        public let cryptoSDK: CryptoSDK?
        public let domain: Domain
        public let name: Name
        /// UTDs can be permanent or temporary. If temporary, this field will contain the time it took to decrypt the message in milliseconds. If permanent should be -1
        public let timeToDecryptMillis: Int?

        public init(context: String?, cryptoModule: CryptoModule?, cryptoSDK: CryptoSDK?, domain: Domain, name: Name, timeToDecryptMillis: Int?) {
            self.context = context
            self.cryptoModule = cryptoModule
            self.cryptoSDK = cryptoSDK
            self.domain = domain
            self.name = name
            self.timeToDecryptMillis = timeToDecryptMillis
        }

        public enum Domain: String {
            case E2EE
            case TO_DEVICE
            case VOIP
        }

        public enum Name: String {
            case OlmIndexError
            case OlmKeysNotSentError
            case OlmUnspecifiedError
            case ToDeviceFailedToDecrypt
            case UnknownError
            case VoipIceFailed
            case VoipIceTimeout
            case VoipInviteTimeout
            case VoipUserHangup
            case VoipUserMediaFailed
        }

        public enum CryptoSDK: String {
            /// Legacy crypto backend specific to each platform.
            case Legacy
            /// Cross-platform crypto backend written in Rust.
            case Rust
        }

        public enum CryptoModule: String {
            /// Native / legacy crypto module specific to each platform.
            case Native
            /// Shared / cross-platform crypto module written in Rust.
            case Rust
        }

        public var properties: [String: Any] {
            return [
                "context": context as Any,
                "cryptoModule": cryptoModule?.rawValue as Any,
                "cryptoSDK": cryptoSDK?.rawValue as Any,
                "domain": domain.rawValue,
                "name": name.rawValue,
                "timeToDecryptMillis": timeToDecryptMillis as Any
            ]
        }
    }
}
