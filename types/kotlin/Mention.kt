package quicktype

/**
 * Triggered when the user mentions another user or room using the @ or # symbols
 * respectively.
 */
data class Mention (
    /**
     * Whether this message was composed in legacy editor, the new the rich text editor or the
     * new plain text editor
     */
    val editor: Editor,

    val eventName: EventName,

    /**
     * The type of object targeted by the mention.
     */
    val targetType: TargetType
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
    Mention
}

/**
 * The type of object targeted by the mention.
 */
enum class TargetType {
    Room,
    User
}
