package quicktype

/**
 * Triggered when the user clicks/taps on a UI element.
 */
data class Click (
    val eventName: EventName,

    /**
     * The index of the element, if its in a list of elements.
     */
    val index: Long? = null,

    /**
     * The unique name of this element.
     */
    val name: String
)

enum class EventName {
    Click
}
