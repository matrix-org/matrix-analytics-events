package quicktype

/**
 * Triggered when the user clicks/taps on a UI element.
 */
data class Click (
    val eventName: ClickEventName,

    /**
     * The index of the element, if its in a list of elements.
     */
    val index: Long? = null,

    /**
     * The unique name of this element.
     */
    val name: ElementName
)

enum class ClickEventName {
    Click
}

/**
 * The unique name of this element.
 */
enum class ElementName {
    SendMessageButton
}
