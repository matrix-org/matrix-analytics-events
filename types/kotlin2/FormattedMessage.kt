/*
 * Copyright (c) 2021 New Vector Ltd
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package im.vector.app.features.analytics.plan

import im.vector.app.features.analytics.itf.VectorAnalyticsEvent

// GENERATED FILE, DO NOT EDIT. FOR MORE INFORMATION VISIT
// https://github.com/matrix-org/matrix-analytics-events/

/**
 * Triggered when the user formats the message content within the composer.
 */
data class FormattedMessage(
        /**
         * The format action taken.
         */
        val formatAction: FormatAction,
        /**
         * Whether this message was composed in the rich text editor (as opposed
         * to the predating markdown-based editor).
         */
        val isRichTextEditor: Boolean,
) : VectorAnalyticsEvent {

    enum class FormatAction {
        /**
         * Bold
         */
        Bold,

        /**
         * Code block
         */
        CodeBlock,

        /**
         * Inline code
         */
        InlineCode,

        /**
         * Italic
         */
        Italic,

        /**
         * Link
         */
        Link,

        /**
         * Ordered list
         */
        OrderedList,

        /**
         * Quote
         */
        Quote,

        /**
         * Strikethrough
         */
        Strikethrough,

        /**
         * Underline
         */
        Underline,

        /**
         * Unordered list
         */
        UnorderedList,
    }

    override fun getName() = "FormattedMessage"

    override fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            put("formatAction", formatAction.name)
            put("isRichTextEditor", isRichTextEditor)
        }.takeIf { it.isNotEmpty() }
    }
}
