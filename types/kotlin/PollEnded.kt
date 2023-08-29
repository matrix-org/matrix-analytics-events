package quicktype

/**
 * Triggered when a poll is ended.
 */
data class PollEnded (
    val eventName: EventName
)

enum class EventName {
    PollEnded
}
