package quicktype

/**
 * Triggered when the user creates a room.
 */
data class CreatedRoom (
    val eventName: EventName,

    /**
     * Whether the room is a DM.
     */
    val isDM: Boolean
)

enum class EventName {
    CreatedRoom
}
