package quicktype

/**
 * Triggered when a poll vote has been cast.
 */
data class PollVote (
    /**
     * Do not use this. Remove this property when the kotlin type generator can properly
     * generate types without proprties other than the event name.
     */
    val doNotUse: Boolean? = null,

    val eventName: EventName
)

enum class EventName {
    PollVote
}
