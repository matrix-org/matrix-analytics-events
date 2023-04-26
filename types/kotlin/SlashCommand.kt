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
    AddWidget,
    Ban,
    Confetti,
    ConvertToDM,
    ConvertToRoom,
    Deop,
    DevTools,
    DiscardSession,
    Fireworks,
    HTML,
    Hearts,
    Help,
    HoldCall,
    Ignore,
    Invite,
    Join,
    JumpToDate,
    Lenny,
    Me,
    Msg,
    MyAvatar,
    MyRoomAvatar,
    MyRoomNick,
    Nick,
    Op,
    Part,
    Plain,
    Query,
    Rageshake,
    Rainbow,
    RainbowMe,
    Rainfall,
    RemakeOlm,
    Remove,
    RoomAvatar,
    RoomName,
    Shrug,
    Snowfall,
    SpaceInvaders,
    Spoiler,
    TableFlip,
    ToVirtual,
    Topic,
    Unban,
    Unflip,
    UnholdCall,
    Unignore,
    UpgradeRoom,
    Verify,
    Whois
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
