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
    val numSpaces: Long? = null,

    /**
     * Whether the user has the favourites space enabled
     */
    val webMetaSpaceFavouritesEnabled: Boolean? = null,

    /**
     * Whether the user has the home space set to all rooms
     */
    val webMetaSpaceHomeAllRooms: Boolean? = null,

    /**
     * Whether the user has the home space enabled
     */
    val webMetaSpaceHomeEnabled: Boolean? = null,

    /**
     * Whether the user has the other rooms space enabled
     */
    val webMetaSpaceOrphansEnabled: Boolean? = null,

    /**
     * Whether the user has the people space enabled
     */
    val webMetaSpacePeopleEnabled: Boolean? = null
)
