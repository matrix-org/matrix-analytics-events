package quicktype

/**
 * Triggered when a call is started.
 */
data class CallStarted (
    val eventName: EventName,

    /**
     * Whether its a video call or not.
     */
    val isVideo: Boolean,

    /**
     * Number of participants in the call.
     */
    val numParticipants: Long,

    /**
     * Whether this user placed it.
     */
    val placed: Boolean
)

enum class EventName {
    CallStarted
}
