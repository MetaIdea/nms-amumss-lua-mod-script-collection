Color = "YELLOW"

Author = "Gumsk"
ModName = "gShip Infraknife Colors"
ModNameSub = Color
BaseDescription = "Changes color of ship's infraknife to "..Color
GameVersion = "6.1.8.0"
ModVersion = "a"

FileSource1 = "MODELS/COMMON/PROJECTILES/SHIP_MINIGUN/SHIPMINIGUNPROJECTILEGRADIENT.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME  = ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
  MOD_DESCRIPTION = BaseDescription,
  MOD_AUTHOR    = Author,
  NMS_VERSION   = GameVersion,
  ADD_FILES = {
    {
      FILE_DESTINATION    = "GUMSK/INFRA"..Color..".DDS",
      ["EXTERNAL_FILE_SOURCE"]  = "INFRA"..Color..".DDS",
    },
  },
  MODIFICATIONS = {
    {
      MBIN_CHANGE_TABLE = {
        {
          MBIN_FILE_SOURCE = {FileSource1},
          MXML_CHANGE_TABLE = {
            {
              SPECIAL_KEY_WORDS = {"Name","gDiffuseMap"},
              VALUE_CHANGE_TABLE = {
                {"Map", "GUMSK/INFRA"..Color..".DDS"},
              },
            },
          },
        },
      }
    }
  }
}