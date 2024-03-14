package quicktype

/**
 * Triggered when a moderation action is performed within a room.
 */
data class RoomModeration (
    /**
     * The action that was performed.
     */
    val action: String,

    val eventName: EventName,

    /**
     * When the action sets a particular power level, this is the suggested role for that the
     * power level.
     */
    val role: String? = null
)

enum class EventName {
    RoomModeration
}
