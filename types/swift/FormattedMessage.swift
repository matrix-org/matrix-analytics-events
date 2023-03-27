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

/// Triggered when the user formats the message content within the composer.
extension AnalyticsEvent {
    public struct FormattedMessage: AnalyticsEventProtocol {
        public let eventName = "FormattedMessage"

        /// The format action taken.
        public let formatAction: FormatAction
        /// Whether this message was composed in the rich text editor(as opposed to the predateding markdown-based edtior).
        public let isRichTextEditor: Bool

        public init(formatAction: FormatAction, isRichTextEditor: Bool) {
            self.formatAction = formatAction
            self.isRichTextEditor = isRichTextEditor
        }

        public enum FormatAction: String {
            /// Bold
            case Bold
            /// Code block
            case CodeBlock
            /// Inline code
            case InlineCode
            /// Italic
            case Italic
            /// Link
            case Link
            /// Ordered list
            case OrderedList
            /// Quote
            case Quote
            /// Strikethrough
            case Strikethrough
            /// Underline
            case Underline
            /// Unordered list
            case UnorderedList
        }

        public var properties: [String: Any] {
            return [
                "formatAction": formatAction.rawValue,
                "isRichTextEditor": isRichTextEditor
            ]
        }
    }
}
