package quicktype

/**
 * Triggered after timing an operation in the app.
 */
data class PerformanceTimer (
    /**
     * Client defined, can be used for debugging.
     */
    val context: String? = null,

    val eventName: EventName,

    /**
     * Client defined, an optional value to indicate how many items were handled during the
     * operation.
     */
    val itemCount: Long? = null,

    /**
     * The timer that is being reported.
     */
    val name: String,

    /**
     * The time reported by the timer in milliseconds.
     */
    val timeMS: Long
)

enum class EventName {
    PerformanceTimer
}
