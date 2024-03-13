package quicktype

/**
 * Triggered when a moderation action is performed within a room.
 */
data class RoomModeration (
    /**
     * The action that was performed.
     */
    val action: String,

    val eventName: EventName
)

enum class EventName {
    RoomModeration
}
