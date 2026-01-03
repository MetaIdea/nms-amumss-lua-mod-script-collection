Author = "Gumsk"
ModName = "gSound"
ModNameSub = "Freighter Hangar Door Open"
BaseDescription = "Mutes the sound of freighter hangar doors opening to prevent loud bug"
GameVersion = "6.1.8.0"
ModVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME  = ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
  MOD_DESCRIPTION = BaseDescription,
  MOD_AUTHOR    = Author,
  LUA_AUTHOR    = "Gumsk",
  NMS_VERSION   = GameVersion,
  MODIFICATIONS = {
    {
      MBIN_CHANGE_TABLE = {
        {
          MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\HANGARDOOR\ENTITIES\HANGARDOORANIMATED.ENTITY.MBIN",
          MXML_CHANGE_TABLE = {
            {
              SPECIAL_KEY_WORDS = {
                "Sound","Freighter_HangarDoor_Open",
              },
              SECTION_UP = 1,
              REPLACE_TYPE = "ALL",
              REMOVE = "SECTION",
            }
          }
        },
      }
    }
  }
}