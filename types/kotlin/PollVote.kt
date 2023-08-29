package quicktype

/**
 * Triggered when a poll vote has been cast.
 */
data class PollVote (
    val eventName: EventName
)

enum class EventName {
    PollVote
}
