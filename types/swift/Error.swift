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
        /// An heuristic based on event origin_server_ts and the current device creation time (origin_server_ts - device_ts). This would be used to get the source of the event scroll-back/live/initialSync.
        public let eventLocalAgeMillis: Int?
        /// true if userDomain != senderDomain.
        public let isFederated: Bool?
        /// true if the current user is using matrix.org.
        public let isMatrixDotOrg: Bool?
        public let name: Name
        /// UTDs can be permanent or temporary. If temporary, this field will contain the time it took to decrypt the message in milliseconds. If permanent should be -1.
        public let timeToDecryptMillis: Int?
        /// true if the current user trusts their own identity (verified session) at time of decryption.
        public let userTrustsOwnIdentity: Bool?
        /// true if that unable to decrypt error was visible to the user.
        public let wasVisibleToUser: Bool?

        public init(context: String?, cryptoModule: CryptoModule?, cryptoSDK: CryptoSDK?, domain: Domain, eventLocalAgeMillis: Int?, isFederated: Bool?, isMatrixDotOrg: Bool?, name: Name, timeToDecryptMillis: Int?, userTrustsOwnIdentity: Bool?, wasVisibleToUser: Bool?) {
            self.context = context
            self.cryptoModule = cryptoModule
            self.cryptoSDK = cryptoSDK
            self.domain = domain
            self.eventLocalAgeMillis = eventLocalAgeMillis
            self.isFederated = isFederated
            self.isMatrixDotOrg = isMatrixDotOrg
            self.name = name
            self.timeToDecryptMillis = timeToDecryptMillis
            self.userTrustsOwnIdentity = userTrustsOwnIdentity
            self.wasVisibleToUser = wasVisibleToUser
        }

        public enum Domain: String {
            case E2EE
            case TO_DEVICE
            case VOIP
        }

        public enum Name: String {
            /// E2EE domain error. Decryption failed for a message sent before you were in the room (shared history visibility and support for sharing past keys is not available/supported).
            case ExpectedDueToMembership
            /// E2EE domain error. Decryption failed for a message sent before the device logged in, and key backup is not enabled.
            case HistoricalMessage
            /// E2EE domain error. The room key is known but is ratcheted (index > 0).
            case OlmIndexError
            /// E2EE domain error. Generic unknown inbound group session error.
            case OlmKeysNotSentError
            /// E2EE domain error. Any other decryption error (missing field, format errors...).
            case OlmUnspecifiedError
            /// TO_DEVICE domain error. The to-device message failed to decrypt.
            case ToDeviceFailedToDecrypt
            /// E2EE domain error. Decryption failed due to unknown error.
            case UnknownError
            /// VOIP domain error. ICE negotiation failed.
            case VoipIceFailed
            /// VOIP domain error. ICE negotiation timed out.
            case VoipIceTimeout
            /// VOIP domain error. The call invite timed out.
            case VoipInviteTimeout
            /// VOIP domain error. The user hung up the call.
            case VoipUserHangup
            /// VOIP domain error. The user's media failed to start.
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
                "eventLocalAgeMillis": eventLocalAgeMillis as Any,
                "isFederated": isFederated as Any,
                "isMatrixDotOrg": isMatrixDotOrg as Any,
                "name": name.rawValue,
                "timeToDecryptMillis": timeToDecryptMillis as Any,
                "userTrustsOwnIdentity": userTrustsOwnIdentity as Any,
                "wasVisibleToUser": wasVisibleToUser as Any
            ]
        }
    }
}
