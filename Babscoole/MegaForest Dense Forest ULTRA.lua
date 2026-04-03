NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_MegaForest ULTRA",
["MOD_AUTHOR"]    = "C-Verse",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.24",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCPLACEMENTGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxDensity", "0.900000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\PLACEMENTVALUES\SPAWNDENSITYLIST.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "GRASS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionScale", "10.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FOREST"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PatchSize",   "4000.000000"},
                {"RegionScale", "25.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "BARRENROCKCLUMP"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PatchSize", "35.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FLORACLUMP"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PatchSize",   "15.000000"},
                {"RegionScale", "12.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "JUNGLEGRASS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PatchSize",   "60.000000"},
                {"RegionScale", "15.000000"},
              }
            },
          }
        }
      }
    },
  }
}

