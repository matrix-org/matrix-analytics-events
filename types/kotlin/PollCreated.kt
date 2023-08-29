package quicktype

/**
 * Triggered when a poll is created.
 */
data class PollCreated (
    val eventName: EventName,

    /**
     * Whether this poll is anonymous.
     */
    val isAnonymous: Boolean,

    /**
     * Number of answers in the poll.
     */
    val numberOfAnswers: Long
)

enum class EventName {
    PollStarted
}
