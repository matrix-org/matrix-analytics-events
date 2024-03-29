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

/// Triggered when a poll vote has been cast.
extension AnalyticsEvent {
    public struct PollVote: AnalyticsEventProtocol {
        public let eventName = "PollVote"

        /// Do not use this. Remove this property when the kotlin type generator can properly generate types without properties other than the event name.
        public let doNotUse: Bool?

        public init(doNotUse: Bool?) {
            self.doNotUse = doNotUse
        }

        public var properties: [String: Any] {
            return [
                "doNotUse": doNotUse as Any
            ]
        }
    }
}
