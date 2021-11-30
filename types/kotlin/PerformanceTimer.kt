package quicktype

/**
 * Triggered after timing a long running operation in the app.
 */
data class PerformanceTimer (
    /**
     * Client defined, can be used for debugging.
     */
    val context: String? = null,

    val eventName: EventName,

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
    StartupIncrementalSync,
    StartupInitialSync,
    StartupLaunchScreen,
    StartupStorePreload,
    StartupStoreReady
}
