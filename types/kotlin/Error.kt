package quicktype

/**
 * Triggered when an error occurred.
 */
data class Error (
    /**
     * Context - client defined, can be used for debugging.
     */
    val context: String? = null,

    val domain: Domain,
    val eventName: EventName,
    val name: Name
)

enum class Domain {
    E2Ee,
    ToDevice,
    Voip
}

enum class EventName {
    Error
}

enum class Name {
    OlmIndexError,
    OlmKeysNotSentError,
    OlmUnspecifiedError,
    ToDeviceFailedToDecrypt,
    UnknownError,
    VoipIceFailed,
    VoipIceTimeout,
    VoipInviteTimeout,
    VoipUserHangup,
    VoipUserMediaFailed
}
