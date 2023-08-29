package quicktype

/**
 * Triggered when a poll is edited.
 */
data class PollEdited (
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
    PollEdited
}
