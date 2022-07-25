package quicktype

/**
 * Triggered when the user changes the notification permission status.
 */
data class NotificationPermissionChanged (
    /**
     * Whether the notification permission has been granted by the user.
     */
    val enabled: Boolean,

    val eventName: EventName
)

enum class EventName {
    NotificationPermissionChanged
}
