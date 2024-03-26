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
    val eventName: EventName,
    val name: String,

    /**
     * UTDs can be permanent or temporary. If temporary, this field will contain the time it
     * took to decrypt the message in milliseconds. If permanent should be -1
     */
    val timeToDecryptMillis: Long? = null
)

enum class Domain {
    E2Ee,
    ToDevice,
    Voip
}

enum class EventName {
    Error
}
