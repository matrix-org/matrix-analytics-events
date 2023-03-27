package quicktype

/**
 * Triggered when the user runs a slash command in their composer.
 */
data class SlashCommand (
    /**
     * The name of this command.
     */
    val command: Command,

    val eventName: EventName,

    /**
     * Whether this message was composed in the WYSIWYG-style rich text editor.
     */
    val isRichTextEditor: Boolean
)

/**
 * The name of this command.
 */
enum class Command {
    Invite,
    Part
}

enum class EventName {
    SlashCommand
}
