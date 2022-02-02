package quicktype

/**
 * The user properties to apply when identifying. These properties should all be device
 * independent.
 */
data class Identify (
    val eventName: EventName? = null,

    /**
     * The selected messaging use case during the onboarding flow.
     */
    val ftueUseCaseSelection: String? = null
)

enum class EventName {
    Identify
}
