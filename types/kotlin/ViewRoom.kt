package quicktype

/**
 * Triggered when the user changes rooms.
 */
data class ViewRoom (
    val eventName: EventName,

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
