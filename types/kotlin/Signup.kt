package quicktype

/**
 * Triggered once onboarding has completed, but only if the user registered a new account.
 */
data class Signup (
    /**
     * The type of authentication that was used to sign up.
     */
    val authenticationType: String,

    val eventName: EventName
)

enum class EventName {
    Signup
}
