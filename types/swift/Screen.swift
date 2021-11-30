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

/// Triggered when the user changed screen
extension AnalyticsEvent {
    public struct Screen: AnalyticsScreenProtocol {

        /// How long the screen was displayed for in milliseconds.
        public let durationMs: Int?
        public let screenName: ScreenName

        public init(durationMs: Int?, screenName: ScreenName) {
            self.durationMs = durationMs
            self.screenName = screenName
        }

        public enum ScreenName: String {
            case Group
            case Home
            case MyGroups
            case Room
            case RoomDirectory
            case User
            case WebCompleteSecurity
            case WebE2ESetup
            case WebForgotPassword
            case WebLoading
            case WebLogin
            case WebRegister
            case WebSoftLogout
            case WebWelcome
        }

        public var properties: [String: Any] {
            return [
                "durationMs": durationMs as Any
            ]
        }
    }
}
