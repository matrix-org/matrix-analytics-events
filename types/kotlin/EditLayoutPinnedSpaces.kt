package quicktype

/**
 * Triggered when the user validate the all chat screen layout.
 */
data class EditLayoutPinnedSpaces (
    val eventName: EventName,

    /**
     * Number of spaces pinned.
     */
    val spaceNumber: Long
)

enum class EventName {
    EditLayoutPinnedSpaces
}
