NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Waterworld Giants",
["MOD_DESCRIPTION"] = "Makes possible giant planets with water world biome",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.17",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ValidGiantPlanetBiome", "GcBiomeType", "Biome", "Blue"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Biome", "Waterworld"},
              }
            },
          }
        },
      }
    }
  }
}