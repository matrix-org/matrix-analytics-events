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

/// Triggered when the user mentions another user or room using the @ or # symbols respectively.
extension AnalyticsEvent {
    public struct Mention: AnalyticsEventProtocol {
        public let eventName = "Mention"

        /// Whether this message was composed in legacy editor, the new the rich text editor or the new plain text editor
        public let editor: Editor
        /// The type of object targeted by the mention.
        public let targetType: TargetType

        public init(editor: Editor, targetType: TargetType) {
            self.editor = editor
            self.targetType = targetType
        }

        public enum TargetType: String {
            case Room
            case User
        }

        public enum Editor: String {
            case Legacy
            case RteFormatting
            case RtePlain
        }

        public var properties: [String: Any] {
            return [
                "editor": editor.rawValue,
                "targetType": targetType.rawValue
            ]
        }
    }
}
