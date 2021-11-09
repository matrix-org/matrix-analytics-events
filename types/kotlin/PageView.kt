package quicktype

data class PageView (
    /**
     * The amount of time it took to switch between this page and the last, in ms
     */
    val durationMS: Double? = null,

    /**
     * The name of the screen
     */
    val screen: String? = null
)
