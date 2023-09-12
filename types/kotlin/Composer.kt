package quicktype

/**
 * Triggered when the user sends a message via the composer.
 */
data class Composer (
    val eventName: EventName,

    /**
     * Whether the user was using the composer inside of a thread.
     */
    val inThread: Boolean,

    /**
     * Whether the user's composer interaction was editing a previously sent event.
     */
    val isEditing: Boolean,

    /**
     * Whether the user's composer interaction was a reply to a previously sent event.
     */
    val isReply: Boolean,

    /**
     * The type of the message.
     */
    val messageType: String,

    /**
     * Whether this message begins a new thread or not.
     */
    val startsThread: Boolean? = null
)

enum class EventName {
    Composer
}
