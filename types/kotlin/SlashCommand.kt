package quicktype

/**
 * Triggered when the user runs a slash command in their composer.
 */
data class SlashCommand (
    /**
     * The name of this command.
     */
    val command: Command,

    val eventName: EventName
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
