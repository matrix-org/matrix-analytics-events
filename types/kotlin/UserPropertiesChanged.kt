package quicktype

/**
 * Triggered when the user changed screen
 */
data class UserPropertiesChanged (
    val eventName: EventName
)

enum class EventName {
    UserPropertiesChanged
}
