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

/// Triggered when the user changes a permission status.
extension AnalyticsEvent {
    public struct PermissionChanged: AnalyticsEventProtocol {
        public let eventName = "PermissionChanged"

        /// Whether the permission has been granted by the user.
        public let granted: Bool
        /// The name of the permission.
        public let permission: Permission

        public init(granted: Bool, permission: Permission) {
            self.granted = granted
            self.permission = permission
        }

        public enum Permission: String {
            /// Permissions related to sending notifications have changed.
            case Notification = "Notification"
        }

        public var properties: [String: Any] {
            return [
                "granted": granted,
                "permission": permission.rawValue
            ]
        }
    }
}
