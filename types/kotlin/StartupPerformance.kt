package quicktype

/**
 * Used to track the performance of startup operations.
 */
data class StartupPerformance (
    /**
     * Client defined, can be used for debugging.
     */
    val context: String? = null,

    /**
     * The length of the operation in milliseconds.
     */
    val durationMS: Double,

    val eventName: EventName,

    /**
     * The operation that was profiled.
     */
    val operation: Operation
)

enum class EventName {
    StartupPerformance
}

/**
 * The operation that was profiled.
 */
enum class Operation {
    IncrementalSync,
    InitialSync,
    LaunchScreen,
    MountData,
    StorePreload
}
