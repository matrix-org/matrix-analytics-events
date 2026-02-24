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

/// Triggered when the URL preview shows for a user. Should only be sent per event.
extension AnalyticsEvent {
    public struct UrlPreviewRendered {

        /// Is the URL being previewed in an encrypted room.
        public let encryptedRoom: Bool
        /// Do the preview(s) contain at least one thumbnail.
        public let hasThumbnail: Bool
        /// How many URLs are being previewed.
        public let previewCount: Int
        /// The kind of preview being rendered.
        public let previewKind: PreviewKind

        public init(encryptedRoom: Bool, hasThumbnail: Bool, previewCount: Int, previewKind: PreviewKind) {
            self.encryptedRoom = encryptedRoom
            self.hasThumbnail = hasThumbnail
            self.previewCount = previewCount
            self.previewKind = previewKind
        }

        public enum PreviewKind: String {
            case LegacyCard = "LegacyCard"
        }

        public var properties: [String: Any?] {
            return [
                "encryptedRoom": encryptedRoom,
                "hasThumbnail": hasThumbnail,
                "previewCount": previewCount,
                "previewKind": previewKind.rawValue
            ]
        }
    }
}
