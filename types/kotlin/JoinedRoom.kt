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
     * Whether the room is a Space.
     */
    val isSpace: Boolean,

    /**
     * The size of the room.
     */
    val roomSize: RoomSize,

    /**
     * The trigger for a room being joined if known.
     */
    val trigger: String? = null
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
    One,
    OneHundredAndOneToAThousand,
    ThreeToTen,
    Two
}
