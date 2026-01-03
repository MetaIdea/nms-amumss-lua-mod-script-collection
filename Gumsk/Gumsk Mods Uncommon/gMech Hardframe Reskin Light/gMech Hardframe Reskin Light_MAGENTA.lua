Color = "MAGENTA"
RedAmount = "1.000000"
GreenAmount = "0.000000"
BlueAmount = "1.000000"

Author = "Gumsk"
ModName = "gMech Hardframe Reskin Light"
GameVersion = "6.1.8.0"
ModVersion = "a"
ModNameSub = Color
BaseDescription = "Changes color of hardframe exomech light to "..Color

FileSource1 = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT\REDGLOW_MAT5.MATERIAL.MBIN"

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
            SPECIAL_KEY_WORDS = {"Name","gMaterialColourVec4"},
            VALUE_CHANGE_TABLE = {
              {"X",RedAmount},
              {"Y",GreenAmount},
              {"Z",BlueAmount},
            },
          },
        }
      },
    }
  },
}}