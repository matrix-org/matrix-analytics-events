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

/// Triggered when the user chooses to hide or show a URL preview.
extension AnalyticsEvent {
    public struct UrlPreviewVisibilityChanged: AnalyticsEventProtocol {
        public let eventName = "UrlPreviewVisibilityChanged"

        /// Do the preview(s) contain at least one thumbnail.
        public let hasThumbnail: Bool
        /// How many URLs are being previewed.
        public let previewCount: Int
        /// The kind of preview being rendered.
        public let previewKind: PreviewKind
        /// Has the user made the previews visible or hidden.
        public let visible: Bool

        public init(hasThumbnail: Bool, previewCount: Int, previewKind: PreviewKind, visible: Bool) {
            self.hasThumbnail = hasThumbnail
            self.previewCount = previewCount
            self.previewKind = previewKind
            self.visible = visible
        }

        public enum PreviewKind: String {
            case LegacyCard = "LegacyCard"
        }

        public var properties: [String: Any] {
            return [
                "hasThumbnail": hasThumbnail,
                "previewCount": previewCount,
                "previewKind": previewKind.rawValue,
                "visible": visible
            ]
        }
    }
}
