/* tslint:disable */
/**
 * This file was automatically generated by json-schema-to-typescript.
 * DO NOT MODIFY IT BY HAND. Instead, modify the source JSONSchema file,
 * and run json-schema-to-typescript to regenerate this file.
 */

/**
 * Triggered when the user clicks/taps/activates a UI element.
 */
export interface Interaction {
  eventName: "Interaction";
  /**
   * The unique name of this element.
   */
  name: (
    | "WebRoomListRoomTileContextMenuFavouriteToggle"
    | "WebRoomHeaderContextMenuFavouriteToggle"
    | "WebRoomListRoomTileNotificationsMenu"
    | "WebRoomHeaderContextMenuNotificationsItem"
    | "WebRoomHeaderContextMenuPeopleItem"
    | "WebRightPanelRoomInfoPeopleButton"
    | "WebRightPanelRoomUserInfoBackButton"
    | "WebRoomListRoomTileContextMenuLeaveItem"
    | "WebRoomHeaderContextMenuLeaveItem"
    | "WebRoomSettingsLeaveButton"
    | "WebRoomListRoomTileContextMenuSettingsItem"
    | "WebRoomHeaderContextMenuSettingsItem"
    | "WebRightPanelRoomInfoSettingsButton"
    | "WebRoomListRoomTileContextMenuInviteItem"
    | "WebRoomHeaderContextMenuInviteItem"
    | "WebRightPanelMemberListInviteButton"
    | "WebRightPanelRoomUserInfoInviteButton"
    | "WebQuickSettingsThemeDropdown"
    | "WebUserMenuThemeToggleButton"
    | "WebSettingsAppearanceTabThemeSelector"
    | "WebQuickSettingsPinToSidebarCheckbox"
    | "WebSettingsSidebarTabSpacesCheckbox"
    | "WebRoomSettingsSecurityTabCreateNewRoomButton"
    | "WebHomeCreateRoomButton"
    | "WebRoomDirectoryCreateRoomButton"
    | "WebRoomListRoomsSublistPlusMenuCreateRoomItem"
    | "WebRoomListHeaderPlusMenuCreateRoomItem"
    | "WebSpaceHomeCreateRoomButton"
    | "WebSpaceContextMenuNewRoomItem"
    | "WebAddExistingToSpaceDialogCreateRoomButton"
    | "WebHomeCreateChatButton"
    | "WebRoomListRoomsSublistPlusMenuCreateChatItem"
    | "WebRoomListHeaderPlusMenuCreateChatItem"
    | "WebSpaceContextMenuHomeItem"
    | "WebHomeExploreRoomsButton"
    | "WebHomeMiniAvatarUploadButton"
    | "WebLeftPanelExploreRoomsButton"
    | "WebSpaceContextMenuExploreRoomsItem"
    | "WebRoomListHeaderPlusMenuExploreRoomsItem"
    | "WebRoomListRoomsSublistPlusMenuExploreRoomsItem"
    | "WebRightPanelThreadPanelFilterDropdown"
    | "WebRoomHeaderButtonsThreadsButton"
    | "WebThreadViewBackButton"
    | "WebThreadsPanelThreadItem"
    | "WebRoomTimelineThreadSummaryButton"
    | "SpacePanelSelectedSpace"
    | "SpacePanelSwitchSpace"
    | "MobileRoomLeave"
    | "MobileRoomAddHome"
    | "MobileRoomThreadListButton"
    | "MobileRoomThreadSummaryItem"
    | "MobileThreadListThreadItem"
    | "MobileThreadListFilterItem"
  ) &
    string;
  /**
   * The index of the element, if its in a list of elements.
   */
  index?: number;
  /**
   * The manner with which the user activated the UI element.
   */
  interactionType?: "Pointer" | "Keyboard" | "Touch";
}
