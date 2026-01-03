Color = "NONE"

Author = "Gumsk"
ModName = "gShip Trail"
ModNameSub = Color
BaseDescription = "Changes color of stealth/dark ship trail to "..Color
GameVersion = "6.1.8.0"
ModVersion = "a"
FileSource = "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTGREENTRAIL.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME  = ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
  MOD_DESCRIPTION = BaseDescription,
  MOD_AUTHOR    = Author,
  NMS_VERSION   = GameVersion,

  MODIFICATIONS = {
    {
      MBIN_CHANGE_TABLE = {
        {
          MBIN_FILE_SOURCE = FileSource,
          MXML_CHANGE_TABLE = {
            {
              PRECEDING_KEY_WORDS = {"Samplers"},
              VALUE_CHANGE_TABLE = {
                {"Map", ""},
              },
            },
          },
        },
      }
    }
  }
}