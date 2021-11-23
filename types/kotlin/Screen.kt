package quicktype

/**
 * Triggered when the user changed screen
 */
data class Screen (
    val durationMS: Double? = null,
    val eventName: EventName,
    val screenName: ScreenName
)

enum class EventName {
    Screen
}

enum class ScreenName {
    Group,
    Home,
    MyGroups,
    Room,
    RoomDirectory,
    User,
    WebCompleteSecurity,
    WebE2ESetup,
    WebForgotPassword,
    WebLoading,
    WebLogin,
    WebRegister,
    WebSoftLogout,
    WebWelcome
}
