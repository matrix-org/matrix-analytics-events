package quicktype

/**
 * Super Properties are properties associated with events that are set once and then sent
 * with every capture call, be it a $pageview, an autocaptured button click, or anything
 * else.
 */
data class SuperProperties (
    /**
     * Used by web to identify the platform (Web/Electron)
     */
    val appPlatform: String? = null,

    /**
     * Which crypto backend is the client currently using.
     */
    val cryptoSDK: String? = null,

    /**
     * Version of the crypto backend.
     */
    val cryptoSDKVersion: String? = null
)
