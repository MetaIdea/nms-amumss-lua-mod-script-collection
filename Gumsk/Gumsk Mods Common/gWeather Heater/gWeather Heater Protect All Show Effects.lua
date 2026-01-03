Author = "Gumsk"
ModName = "gWeather Heater Protect All"
ModNameSub = "Show Effects"
BaseDescription = "Extends the range on the heaters"
GameVersion = "6.1.8.0"
ModVersion = "a"
FileSource1 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\STANDINGLIGHT_SMALL\ENTITIES\HEATER.ENTITY.MBIN"


NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME  = ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
  MOD_DESCRIPTION = BaseDescription,
  MOD_AUTHOR    = Author,
  NMS_VERSION   = GameVersion,
  MODIFICATIONS = {
    {
      MBIN_CHANGE_TABLE = {
        {
          MBIN_FILE_SOURCE = FileSource1,
          MXML_CHANGE_TABLE = {
            {
              SPECIAL_KEY_WORDS = {"TriggerVolumeType","TkVolumeTriggerType"},
              VALUE_CHANGE_TABLE = {
                {"VolumeTriggerType","HazardProtection"},
              },
            },
          },
        },
      }
    }
  }
}