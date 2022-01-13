package quicktype

/**
 * Triggered when the user becomes unauthenticated without actually clicking sign out(E.g.
 * Due to expiry of an access token without a way to refresh).
 */
data class UnauthenticatedError (
    /**
     * The error code as defined in matrix spec. The source of this error is from the homeserver.
     */
    val errorCode: ErrorCode,

    /**
     * The reason for the error. The source of this error is from the homeserver, the reason can
     * vary and is subject to change so there is no enum of possible values.
     */
    val errorReason: String,

    val eventName: EventName? = null,

    /**
     * Whether the auth mechanism is refresh-token-based.
     */
    val refreshTokenAuth: Boolean,

    /**
     * Whether a soft logout or hard logout was triggered.
     */
    val softLogout: Boolean
)

/**
 * The error code as defined in matrix spec. The source of this error is from the homeserver.
 */
enum class ErrorCode {
    MForbidden,
    MUnknown,
    MUnknownToken
}

enum class EventName {
    UnauthenticatedError
}
