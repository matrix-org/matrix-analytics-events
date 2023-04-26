package quicktype

/**
 * Triggered when the user sends a message via the composer.
 */
data class Composer (
    /**
     * Whether this message was composed in legacy editor, the new the rich text editor or the
     * new plain text editor
     */
    val editor: Editor,

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
     * if editor is RteFormatting.
     */
    val isMarkdownEnabled: Boolean,

    /**
     * Whether the user's composer interaction was a reply to a previously sent event.
     */
    val isReply: Boolean,

    /**
     * Whether this message begins a new thread or not.
     */
    val startsThread: Boolean? = null
)

/**
 * Whether this message was composed in legacy editor, the new the rich text editor or the
 * new plain text editor
 */
enum class Editor {
    Legacy,
    RTEFormatting,
    RTEPlain
}

enum class EventName {
    Composer
}
