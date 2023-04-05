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

/// Triggered when the user sends a message via the composer.
extension AnalyticsEvent {
    public struct Composer: AnalyticsEventProtocol {
        public let eventName = "Composer"

        /// Whether the user was using the composer inside of a thread.
        public let inThread: Bool
        /// Whether the user's composer interaction was editing a previously sent event.
        public let isEditing: Bool
        /// Whether markdown is supported in the editor. This value is not applicable (always false) if isRichTextEditorFormattingEnabled is true.
        public let isMarkdownEnabled: Bool
        /// Whether the user's composer interaction was a reply to a previously sent event.
        public let isReply: Bool
        /// Whether this message was composed in the rich text editor (as opposed to the predating markdown-based editor).
        public let isRichTextEditor: Bool
        /// Whether the rich text editor is in rich or plain text mode. This value is not applicable (always false) if isRichTextEditor is false.
        public let isRichTextEditorFormattingEnabled: Bool
        /// Whether this message begins a new thread or not.
        public let startsThread: Bool?

        public init(inThread: Bool, isEditing: Bool, isMarkdownEnabled: Bool, isReply: Bool, isRichTextEditor: Bool, isRichTextEditorFormattingEnabled: Bool, startsThread: Bool?) {
            self.inThread = inThread
            self.isEditing = isEditing
            self.isMarkdownEnabled = isMarkdownEnabled
            self.isReply = isReply
            self.isRichTextEditor = isRichTextEditor
            self.isRichTextEditorFormattingEnabled = isRichTextEditorFormattingEnabled
            self.startsThread = startsThread
        }

        public var properties: [String: Any] {
            return [
                "inThread": inThread,
                "isEditing": isEditing,
                "isMarkdownEnabled": isMarkdownEnabled,
                "isReply": isReply,
                "isRichTextEditor": isRichTextEditor,
                "isRichTextEditorFormattingEnabled": isRichTextEditorFormattingEnabled,
                "startsThread": startsThread as Any
            ]
        }
    }
}
