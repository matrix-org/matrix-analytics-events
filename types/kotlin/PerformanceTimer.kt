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
 * The duration of an initial /sync request during startup (if the store has been wiped).
 *
 * The duration of a regular /sync request when resuming the app.
 *
 * The time to preload data in the MXStore on iOS.
 *
 * The time to load all data from the store (including StartupStorePreload time).
 *
 * How long the app launch screen is displayed for.
 *
 * The time spent waiting for a response to an initial /sync request.
 *
 * The time spent parsing the response from an initial /sync request.
 *
 * The time taken to display an event in the timeline that was opened from a notification.
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
