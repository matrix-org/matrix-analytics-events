package quicktype

/**
 * The user properties to apply when identifying
 */
data class Identity (
    val eventName: EventName? = null,

    /**
     * The selected messaging use case during the onboarding flow.
     */
    val ftueUseCaseSelection: String? = null
)

enum class EventName {
    Identity
}