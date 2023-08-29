package quicktype

/**
 * Triggered when a poll is created or edited.
 */
data class PollCreation (
    /**
     * Whether this poll has been created or edited.
     */
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

/**
 * Whether this poll has been created or edited.
 */
enum class EventName {
    PollCreate,
    PollEdit
}
