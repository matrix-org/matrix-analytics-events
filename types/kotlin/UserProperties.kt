package quicktype

/**
 * The user properties to apply when identifying. This is not an event definition. These
 * properties must all be device independent.
 */
data class UserProperties (
    /**
     * The selected messaging use case during the onboarding flow.
     */
    val ftueUseCaseSelection: String? = null,

    /**
     * Number of spaces (and sub-spaces) the user is joined to
     */
    val numSpaces: Long? = null
)
