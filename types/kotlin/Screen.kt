package quicktype

/**
 * Triggered when the user changed screen
 */
data class Screen (
    val durationMS: Double? = null,
    val eventName: ScreenEventName,
    val screenName: ScreenName
)

enum class ScreenEventName {
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
