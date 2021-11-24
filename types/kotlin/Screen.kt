package quicktype

/**
 * Triggered when the user changed screen
 */
data class Screen (
    val durationMS: Double? = null,
    val eventName: EventNameScreen,
    val screenName: ScreenName
)

enum class EventNameScreen {
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
