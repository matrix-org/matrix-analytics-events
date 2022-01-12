package quicktype

/**
 * Triggered when the user changed screen
 */
data class Screen (
    /**
     * How long the screen was displayed for in milliseconds.
     */
    val durationMS: Long? = null,

    val eventName: EventName,
    val screenName: String
)

enum class EventName {
    Screen
}
