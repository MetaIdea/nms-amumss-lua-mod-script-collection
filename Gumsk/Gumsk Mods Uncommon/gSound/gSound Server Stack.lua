Author = "Gumsk"
ModName = "gSound"
ModNameSub = "Server Stack"
BaseDescription = "Mutes the Server Stack"
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
          MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\SERVERSTACK\ENTITIES\AUDIOSERVER.ENTITY.MBIN",
          MXML_CHANGE_TABLE = {
            {
              VALUE_CHANGE_TABLE = {
                {"Ambient", ""}
              }
            }
          }
        },
      }
    }
  }
}