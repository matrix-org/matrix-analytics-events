package quicktype

data class Pageview (
    /**
     * The amount of time it took to switch between this page and the last, in ms
     */
    val durationMS: Double? = null,

    val eventName: String = "$pageview",

    /**
     * The name of the screen
     */
    val screen: String? = null
)
