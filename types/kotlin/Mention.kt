package quicktype

/**
 * Triggered when the user mentions another user or room using the @ or # symbols
 * respectively.
 */
data class Mention (
    val eventName: EventName,

    /**
     * Whether this message was composed in the WYSIWYG-style rich text editor.
     */
    val isRichTextEditor: Boolean,

    /**
     * The type of object targeted by the mention.
     */
    val targetType: TargetType
)

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
