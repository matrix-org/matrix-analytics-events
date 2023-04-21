package quicktype

/**
 * Triggered when the user formats the message content within the composer.
 */
data class FormattedMessage (
    /**
     * Whether this message was composed in legacy editor, the new the rich text editor or the
     * new plain text editor
     */
    val editor: Editor,

    val eventName: EventName,

    /**
     * The format action taken.
     */
    val formatAction: String
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
    FormattedMessage
}
