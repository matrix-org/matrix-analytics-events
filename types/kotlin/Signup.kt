package quicktype

/**
 * Triggered when a new user accepts the analytics prompt that is shown during the
 * registration flow.
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
