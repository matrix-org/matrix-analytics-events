package quicktype

/**
 * Triggered when the user joins a room.
 */
data class JoinedRoom (
    val eventName: EventName,

    /**
     * Whether the room is a DM.
     */
    val isDM: Boolean,

    /**
     * The size of the room.
     */
    val roomSize: RoomSize
)

enum class EventName {
    JoinedRoom
}

/**
 * The size of the room.
 */
enum class RoomSize {
    ElevenToOneHundred,
    MoreThanAThousand,
    OneHundredAndOneToAThousand,
    ThreeToTen,
    Two
}
