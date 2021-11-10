package quicktype

/**
 * Triggered when an error occurred
 */
data class Error (
    /**
     * Context - client defined, can used for debugging
     */
    val context: String? = null,

    val domain: Domain,
    val name: Name
)

enum class Domain {
    E2Ee,
    Voip
}

enum class Name {
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
