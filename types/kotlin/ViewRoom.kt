package quicktype

/**
 * Triggered when the user changes rooms.
 */
data class ViewRoom (
    /**
     * active space when user navigated to the room.
     */
    val activeSpace: String? = null,

    val eventName: EventName,

    /**
     * Whether the room is a DM.
     */
    val isDM: Boolean? = null,

    /**
     * Whether the room is a Space.
     */
    val isSpace: Boolean? = null,

    /**
     * The reason for the room change if known.
     */
    val trigger: String? = null,

    /**
     * Whether the interaction was performed via the keyboard input.
     */
    val viaKeyboard: Boolean? = null
)

enum class EventName {
    ViewRoom
}
