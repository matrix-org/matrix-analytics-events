package quicktype

/**
 * Triggered when an error occurred.
 */
data class Error (
    /**
     * Context - client defined, can be used for debugging.
     */
    val context: String? = null,

    /**
     * DEPRECATED: Which crypto module is the client currently using.
     */
    val cryptoModule: String? = null,

    /**
     * Which crypto backend is the client currently using.
     */
    val cryptoSDK: String? = null,

    val domain: Domain,

    /**
     * An heuristic based on event origin_server_ts and the current device creation time
     * (origin_server_ts - device_ts). This would be used to get the source of the event
     * scroll-back/live/initialSync.
     */
    val eventLocalAgeMillis: Long? = null,

    val eventName: EventName,

    /**
     * true if userDomain != senderDomain.
     */
    val isFederated: Boolean? = null,

    /**
     * true if the current user is using matrix.org
     */
    val isMatrixDotOrg: Boolean? = null,

    val name: String,

    /**
     * UTDs can be permanent or temporary. If temporary, this field will contain the time it
     * took to decrypt the message in milliseconds. If permanent should be -1
     */
    val timeToDecryptMillis: Long? = null,

    /**
     * true if the current user trusts their own identity (verified session) at time of
     * decryption.
     */
    val userTrustsOwnIdentity: Boolean? = null,

    /**
     * true if that unable to decrypt error was visible to the user
     */
    val wasVisibleToUser: Boolean? = null
)

enum class Domain {
    E2Ee,
    ToDevice,
    Voip
}

enum class EventName {
    Error
}
