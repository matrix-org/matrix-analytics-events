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

/// Triggered once onboarding has completed, but only if the user registered a new account.
extension AnalyticsEvent {
    public struct Signup: AnalyticsEventProtocol {
        public let eventName = "Signup"

        /// The type of authentication that was used to sign up.
        public let authenticationType: AuthenticationType

        public init(authenticationType: AuthenticationType) {
            self.authenticationType = authenticationType
        }

        public enum AuthenticationType: String {
            /// Social login using Apple.
            case Apple
            /// Social login using Facebook.
            case Facebook
            /// Social login using GitHub.
            case GitHub
            /// Social login using GitLab.
            case GitLab
            /// Social login using Google.
            case Google
            /// Registration using some other mechanism such as fallback.
            case Other
            /// Registration with a username and password.
            case Password
            /// Registration using another SSO provider.
            case SSO
        }

        public var properties: [String: Any] {
            return [
                "authenticationType": authenticationType.rawValue
            ]
        }
    }
}
