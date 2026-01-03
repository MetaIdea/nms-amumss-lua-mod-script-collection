Color = "PURPLE"

Author = "Gumsk"
ModName = "gMech Hardframe Reskin"
GameVersion = "6.1.8.0"
ModVersion = "a"
ModNameSub = Color
BaseDescription = "Changes color of hardframe exomech parts to "..Color

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME  = ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
  MOD_DESCRIPTION = BaseDescription,
  MOD_AUTHOR    = Author,
  NMS_VERSION   = GameVersion,
  ADD_FILES = {
    {
      FILE_DESTINATION    = "TEXTURES\COMMON\ROBOTS\SENTINELTRIM.DDS",
      ["EXTERNAL_FILE_SOURCE"]  = "MECHHARDFRAME_"..Color..".DDS",
    },
  },
  MODIFICATIONS = {},
}