Author = "Gumsk"
ModName = "gSound"
ModNameSub = "Antimatter"
BaseDescription = "Mutes the antimatter harvester"
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
          MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\ANTIMATTERHARVESTER\ENTITIES\ANTIMATTERHARVESTER.ENTITY.MBIN",
          MXML_CHANGE_TABLE = {
            {
              SPECIAL_KEY_WORDS = {
                "Sound","Obj_Atmosphere_Harvester",
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