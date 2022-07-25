package quicktype

/**
 * Triggered when the user changes a permission status.
 */
data class PermissionChanged (
    val eventName: EventName,

    /**
     * Whether the permission has been granted by the user.
     */
    val granted: Boolean,

    /**
     * The name of the permission.
     */
    val permission: String
)

enum class EventName {
    PermissionChanged
}
