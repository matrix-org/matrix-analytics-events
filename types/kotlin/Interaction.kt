package quicktype

/**
 * Triggered when the user clicks/taps/activates a UI element.
 */
data class Interaction (
    val eventName: EventName,

    /**
     * The index of the element, if its in a list of elements.
     */
    val index: Long? = null,

    /**
     * The manner with which the user activated the UI element.
     */
    val interactionType: InteractionType? = null,

    /**
     * The unique name of this element.
     */
    val name: String
)

enum class EventName {
    Interaction
}

/**
 * The manner with which the user activated the UI element.
 */
enum class InteractionType {
    Keyboard,
    Pointer,
    Touch
}
