package quicktype

/**
 * Triggered when a poll has been ended.
 */
data class PollEnd (
    val eventName: EventName
)

enum class EventName {
    PollEnd
}
