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

/// Triggered when the user becomes unauthenticated without actually clicking sign out(E.g. Due to expiry of an access token without a way to refresh).
extension AnalyticsEvent {
    public struct UnauthenticatedError: AnalyticsEventProtocol {
        public let eventName = "UnauthenticatedError"

        /// The error code as defined in matrix spec.
        public let errorCode: String?
        /// The reason for the error.
        public let errorReason: String?
        /// Whether the auth mechanism is refresh-token-based.
        public let refreshTokenAuth: Bool
        /// Whether a soft logout or hard logout was triggered.
        public let softLogout: Bool

        public init(errorCode: String?, errorReason: String?, refreshTokenAuth: Bool, softLogout: Bool) {
            self.errorCode = errorCode
            self.errorReason = errorReason
            self.refreshTokenAuth = refreshTokenAuth
            self.softLogout = softLogout
        }

        public var properties: [String: Any] {
            return [
                "errorCode": errorCode as Any,
                "errorReason": errorReason as Any,
                "refreshTokenAuth": refreshTokenAuth,
                "softLogout": softLogout
            ]
        }
    }
}
