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

/// Describe the current session crypto state, that is if the session is verified or not, if recovery is correctly setup.
extension AnalyticsEvent {
    public struct CryptoSessionStateChange: AnalyticsEventProtocol {
        public let eventName = "CryptoSessionState"

        public let recoveryState: RecoveryState
        public let verificationState: VerificationState

        public init(recoveryState: RecoveryState, verificationState: VerificationState) {
            self.recoveryState = recoveryState
            self.verificationState = verificationState
        }

        public enum VerificationState: String {
            /// The device is unverified.
            case NotVerified = "NotVerified"
            /// The device is considered to be verified, it has been signed by its user identity.
            case Verified = "Verified"
        }

        public enum RecoveryState: String {
            /// No default secret storage key exists or it is disabled explicitly using the account data event.
            case Disabled = "Disabled"
            /// Secret storage is set up and we have all the secrets locally.
            case Enabled = "Enabled"
            /// Secret storage is set up but we're missing some secrets.
            case Incomplete = "Incomplete"
        }

        public var properties: [String: Any] {
            return [
                "recoveryState": recoveryState.rawValue,
                "verificationState": verificationState.rawValue
            ]
        }
    }
}
