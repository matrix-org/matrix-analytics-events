package quicktype

/**
 * Triggered when the user runs a slash command in their composer.
 */
data class SlashCommand (
    /**
     * The name of this command.
     */
    val command: Command,

    /**
     * Whether this message was composed in legacy editor, the new the rich text editor or the
     * new plain text editor
     */
    val editor: Editor,

    val eventName: EventName
)

/**
 * The name of this command.
 */
enum class Command {
    Invite,
    Part
}

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
