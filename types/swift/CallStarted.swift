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

/// Triggered when a call is started.
extension AnalyticsEvent {
    public struct CallStarted: AnalyticsEventProtocol {
        public let eventName = "CallStarted"

        /// Whether its a video call or not.
        public let isVideo: Bool
        /// Number of participants in the call.
        public let numParticipants: Int
        /// Whether this user placed it.
        public let placed: Bool

        public init(isVideo: Bool, numParticipants: Int, placed: Bool) {
            self.isVideo = isVideo
            self.numParticipants = numParticipants
            self.placed = placed
        }

        public var properties: [String: Any?] {
            return [
                "isVideo": isVideo,
                "numParticipants": numParticipants,
                "placed": placed
            ]
        }
    }
}
