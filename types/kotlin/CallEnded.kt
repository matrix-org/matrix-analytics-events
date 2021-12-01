package quicktype

/**
 * Triggered when a call has ended.
 */
data class CallEnded (
    /**
     * The duration of the call in milliseconds.
     */
    val durationMS: Long,

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
    CallEnded
}
