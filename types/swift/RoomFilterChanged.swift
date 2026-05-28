//
// Copyright 2026 Element Creations Ltd.
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

/// Triggered when the user changes the room list filters.
extension AnalyticsEvent {
    public struct RoomFilterChanged: AnalyticsEventProtocol {
        public let eventName = "RoomFilterChanged"

        /// The set of filters that are now active after this change. This helps track which filter combinations users prefer.
        public let activeFilters: [String]
        /// The filter that was toggled by the user.
        public let changedFilter: ChangedFilter
        /// Whether the filter was enabled (true) or disabled (false).
        public let isEnabled: Bool

        public init(activeFilters: [String], changedFilter: ChangedFilter, isEnabled: Bool) {
            self.activeFilters = activeFilters
            self.changedFilter = changedFilter
            self.isEnabled = isEnabled
        }

        public enum ChangedFilter: String {
            /// Filter for favourites.
            case Favourites = "Favourites"
            /// Filter for invites.
            case Invites = "Invites"
            /// Filter for low priority messages.
            case LowPriority = "LowPriority"
            /// Filter for mentions.
            case Mentions = "Mentions"
            /// Filter for people/DMs.
            case People = "People"
            /// Filter for rooms.
            case Rooms = "Rooms"
            /// Filter for unread messages.
            case Unreads = "Unreads"
        }

        public var properties: [String: Any] {
            return [
                "activeFilters": activeFilters,
                "changedFilter": changedFilter.rawValue,
                "isEnabled": isEnabled
            ]
        }
    }
}
