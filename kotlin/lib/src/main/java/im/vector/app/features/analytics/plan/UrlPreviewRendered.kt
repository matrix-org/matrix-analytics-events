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

// GENERATED FILE, DO NOT EDIT. FOR MORE INFORMATION VISIT
// https://github.com/matrix-org/matrix-analytics-events/

/**
 * Triggered when the URL preview shows for a user. Should only be sent per
 * event.
 */
data class UrlPreviewRendered(
        /**
         * Is the URL being previewed in an encrypted room.
         */
        val encryptedRoom: Boolean,
        /**
         * Do the preview(s) contain at least one thumbnail.
         */
        val hasThumbnail: Boolean,
        /**
         * How many URLs are being previewed.
         */
        val previewCount: Int,
        /**
         * The kind of preview being rendered.
         */
        val previewKind: PreviewKind,
) {

    enum class PreviewKind(val rawValue: String) {
        LegacyCard("LegacyCard"),
    }

    fun getProperties(): Map<String, Any>? {
        return mutableMapOf<String, Any>().apply {
            put("encryptedRoom", encryptedRoom)
            put("hasThumbnail", hasThumbnail)
            put("previewCount", previewCount)
            put("previewKind", previewKind.rawValue)
        }.takeIf { it.isNotEmpty() }
    }
}
