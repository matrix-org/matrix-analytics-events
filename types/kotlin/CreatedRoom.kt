package quicktype

/**
 * Triggered when the user creates a room.
 */
data class CreatedRoom (
    val eventName: CreatedRoomEventName,

    /**
     * Whether the room is a DM.
     */
    val isDM: Boolean
)

enum class CreatedRoomEventName {
    CreatedRoom
}
