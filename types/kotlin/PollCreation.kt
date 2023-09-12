package quicktype

/**
 * Triggered when a poll is created or edited.
 */
data class PollCreation (
    /**
     * Whether this poll has been created or edited.
     */
    val action: String,

    val eventName: EventName,

    /**
     * Whether this poll is undisclosed.
     */
    val isUndisclosed: Boolean,

    /**
     * Number of answers in the poll.
     */
    val numberOfAnswers: Long
)

enum class EventName {
    PollCreation
}
