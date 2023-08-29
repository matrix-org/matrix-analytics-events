package quicktype

/**
 * Triggered when a poll is answered.
 */
data class PollAnswered (
    val eventName: EventName
)

enum class EventName {
    PollAnswered
}
