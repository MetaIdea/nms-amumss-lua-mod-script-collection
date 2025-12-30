NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Station Colour Fix",
["MOD_AUTHOR"]    = "AyyMang",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.16",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "TEXTURES\SPACE\SPACESTATION\SHARED\PRIMARY.TEXTURE.MBIN",
            "TEXTURES\SPACE\SPACESTATION\SHARED\SECONDARY.TEXTURE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "PAINTED", "Palette", "TkPaletteTexture"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Palette",   "Paint"},
                {"ColourAlt", "Alternative2"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "TEXTURES\SPACE\SPACESTATION\SHARED\TERTIARY.TEXTURE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "PAINTED", "Palette", "TkPaletteTexture"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Palette",   "Paint"},
                {"ColourAlt", "Alternative1"},
              }
            },
          }
        },
      }
    },
  }
}