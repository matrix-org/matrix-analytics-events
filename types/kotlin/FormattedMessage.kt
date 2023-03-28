package quicktype

/**
 * Triggered when the user formats the message content within the composer.
 */
data class FormattedMessage (
    val eventName: EventName,

    /**
     * The format action taken.
     */
    val formatAction: String,

    /**
     * Whether this message was composed in the rich text editor (as opposed to the predating
     * markdown-based editor).
     */
    val isRichTextEditor: Boolean
)

enum class EventName {
    FormattedMessage
}
