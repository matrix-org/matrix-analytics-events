package quicktype

/**
 * Triggered when the user becomes unauthenticated without actually clicking sign out(E.g.
 * Due to expiry of an access token without a way to refresh).
 */
data class UnauthenticatedError (
    /**
     * The error code as defined in matrix spec.
     */
    val errorCode: String? = null,

    /**
     * The reason for the error.
     */
    val errorReason: String? = null,

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

enum class EventName {
    UnauthenticatedError
}
