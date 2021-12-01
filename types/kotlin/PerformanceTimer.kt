package quicktype

/**
 * Triggered after timing an operation in the app.
 */
data class PerformanceTimer (
    /**
     * Client defined, can be used for debugging.
     */
    val context: String? = null,

    val eventName: EventName,

    /**
     * Client defined, an optional value to indicate how many items were handled during the
     * operation.
     */
    val itemCount: Long? = null,

    /**
     * The timer that is being reported.
     */
    val name: Name,

    /**
     * The time reported by the timer in milliseconds.
     */
    val timeMS: Long
)

enum class EventName {
    PerformanceTimer
}

/**
 * The timer that is being reported.
 */
enum class Name {
    InitialSyncParsing,
    InitialSyncRequest,
    NotificationsOpenEvent,
    StartupIncrementalSync,
    StartupInitialSync,
    StartupLaunchScreen,
    StartupStorePreload,
    StartupStoreReady
}
