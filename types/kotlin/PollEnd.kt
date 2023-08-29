package quicktype

/**
 * Triggered when a poll has been ended.
 */
data class PollEnd (
    /**
     * Do not use this. Remove this property when the kotlin type generator can properly
     * generate types without proprties other than the event name.
     */
    val doNotUse: Boolean? = null,

    val eventName: EventName
)

enum class EventName {
    PollEnd
}
