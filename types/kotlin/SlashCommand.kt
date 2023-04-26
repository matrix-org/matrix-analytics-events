package quicktype

/**
 * Triggered when the user runs a slash command in their composer.
 */
data class SlashCommand (
    /**
     * The the slash command text. e.g. /me
     */
    val command: String,

    /**
     * Whether this message was composed in legacy editor, the new the rich text editor or the
     * new plain text editor
     */
    val editor: Editor,

    val eventName: EventName
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
    SlashCommand
}
