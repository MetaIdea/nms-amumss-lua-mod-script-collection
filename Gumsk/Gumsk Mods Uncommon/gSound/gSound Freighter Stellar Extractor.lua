Author = "Gumsk"
ModName = "gSound"
ModNameSub = "Freighter Stellar Extractor"
BaseDescription = "Mutes the freighter stellar extractor room"
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
          MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0\ENTITIES\EXTRACTORTERMINAL.ENTITY.MBIN",
          MXML_CHANGE_TABLE = {
            {
              SPECIAL_KEY_WORDS = {
                "Sound","Freighter_StellarExtractor",
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