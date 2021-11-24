package quicktype

/**
 * Triggered when an error occurred in a call.
 */
data class CallError (
    val eventName: CallErrorEventName,

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

enum class CallErrorEventName {
    CallError
}
