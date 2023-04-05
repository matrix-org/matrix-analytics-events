package quicktype

/**
 * Triggered when the user sends a message via the composer.
 */
data class Composer (
    val eventName: EventName,

    /**
     * Whether the user was using the composer inside of a thread.
     */
    val inThread: Boolean,

    /**
     * Whether the user's composer interaction was editing a previously sent event.
     */
    val isEditing: Boolean,

    /**
     * Whether markdown is supported in the editor. This value is not applicable (always false)
     * if isRichTextEditorFormattingEnabled is true.
     */
    val isMarkdownEnabled: Boolean,

    /**
     * Whether the user's composer interaction was a reply to a previously sent event.
     */
    val isReply: Boolean,

    /**
     * Whether this message was composed in the rich text editor (as opposed to the predating
     * markdown-based editor).
     */
    val isRichTextEditor: Boolean,

    /**
     * Whether the rich text editor is in rich or plain text mode. This value is not applicable
     * (always false) if isRichTextEditor is false.
     */
    val isRichTextEditorFormattingEnabled: Boolean,

    /**
     * Whether this message begins a new thread or not.
     */
    val startsThread: Boolean? = null
)

enum class EventName {
    Composer
}
