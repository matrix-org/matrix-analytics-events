package quicktype

/**
 * Triggered when the user changed screen on Element Web/Desktop
 */
data class WebScreen (
    val currentURL: String,

    /**
     * How long the screen took to load, if applicable.
     */
    val durationMS: Long? = null,

    val eventName: EventName
)

enum class EventName {
    Pageview
}
