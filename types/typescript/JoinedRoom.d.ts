/* tslint:disable */
/**
 * This file was automatically generated by json-schema-to-typescript.
 * DO NOT MODIFY IT BY HAND. Instead, modify the source JSONSchema file,
 * and run json-schema-to-typescript to regenerate this file.
 */

/**
 * Triggered when the user joins a room.
 */
export interface JoinedRoom {
  eventName: "JoinedRoom";
  /**
   * The trigger for a room being joined if known.
   */
  trigger?: (
    | "Invite"
    | "RoomPreview"
    | "SlashCommand"
    | "RoomDirectory"
    | "SpaceHierarchy"
    | "Timeline"
    | "Notification"
    | "MobilePermalink"
    | "MobileExploreRooms"
  ) &
    string;
  /**
   * The size of the room.
   */
  roomSize: "One" | "Two" | "ThreeToTen" | "ElevenToOneHundred" | "OneHundredAndOneToAThousand" | "MoreThanAThousand";
  /**
   * Whether the room is a DM.
   */
  isDM: boolean;
  /**
   * Whether the room is a Space.
   */
  isSpace: boolean;
}
