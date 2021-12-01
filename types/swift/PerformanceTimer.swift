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

/// Triggered after timing an operation in the app.
extension AnalyticsEvent {
    public struct PerformanceTimer: AnalyticsEventProtocol {
        public let eventName = "PerformanceTimer"

        /// Client defined, can be used for debugging.
        public let context: String?
        /// Client defined, an optional value to indicate how many items were handled during the operation.
        public let itemCount: Int?
        /// The timer that is being reported.
        public let name: Name
        /// The time reported by the timer in milliseconds.
        public let timeMs: Int

        public init(context: String?, itemCount: Int?, name: Name, timeMs: Int) {
            self.context = context
            self.itemCount = itemCount
            self.name = name
            self.timeMs = timeMs
        }

        public enum Name: String {
            case InitialSyncParsing
            case InitialSyncRequest
            case NotificationsOpenEvent
            case StartupIncrementalSync
            case StartupInitialSync
            case StartupLaunchScreen
            case StartupStorePreload
            case StartupStoreReady
        }

        public var properties: [String: Any] {
            return [
                "context": context as Any,
                "itemCount": itemCount as Any,
                "name": name.rawValue,
                "timeMs": timeMs
            ]
        }
    }
}
