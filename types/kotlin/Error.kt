package quicktype

/**
 * Triggered when an error occurred
 */
data class Error (
    /**
     * Context - client defined, can be used for debugging
     */
    val context: String? = null,

    val domain: ErrorDomain,
    val eventName: ErrorEventName,
    val name: ErrorName
)

enum class ErrorDomain {
    E2Ee,
    Voip
}

enum class ErrorEventName {
    Error
}

enum class ErrorName {
    OlmIndexError,
    OlmKeysNotSentError,
    OlmUnspecifiedError,
    UnknownError,
    VoipIceFailed,
    VoipIceTimeout,
    VoipInviteTimeout,
    VoipUserHangup,
    VoipUserMediaFailed
}
