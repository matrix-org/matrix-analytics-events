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

/// Triggered when the user runs the troubleshoot notification test suite.
extension AnalyticsEvent {
    public struct NotificationTroubleshoot: AnalyticsEventProtocol {
        public let eventName = "NotificationTroubleshoot"

        /// Whether one or more tests are in error.
        public let hasError: Bool

        public init(hasError: Bool) {
            self.hasError = hasError
        }

        public var properties: [String: Any] {
            return [
                "hasError": hasError
            ]
        }
    }
}
