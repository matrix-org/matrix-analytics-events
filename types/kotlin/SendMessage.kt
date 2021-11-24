package quicktype

/**
 * Triggered when the user sends a message
 */
data class SendMessage (
    val eventName: EventName? = null,
    val format: String? = null,
    val isEdit: Boolean? = null,
    val isReply: Boolean? = null,
    val localEchoDurationMS: Double? = null,
    val msgType: String? = null,
    val roomID: String,
    val threadID: String? = null
)

enum class EventName {
    SendMessage
}
