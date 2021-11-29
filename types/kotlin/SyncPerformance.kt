package quicktype

/**
 * Used to track the performance of sync operations.
 */
data class SyncPerformance (
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
    SyncPerformance
}

/**
 * The operation that was profiled.
 */
enum class Operation {
    InitialSyncParsing,
    InitialSyncRequest
}
