NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Equalized Exotic Spawns",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.42",
["MOD_DESCRIPTION"] = "Makes exotic ships spawn chance 1/21 instead of 1/301, while keeping ship seeds intact/vanilla",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"SpaceshipWeightings", "GcAISpaceshipWeightingData"},
              ["SECTION_ACTIVE"] = {0},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dropship",   "7.000000"},
                {"Fighter",    "3.000000"},
                {"Scientific", "3.000000"},
                {"Shuttle",    "7.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"SpaceshipWeightings", "GcAISpaceshipWeightingData"},
              ["SECTION_ACTIVE"] = {1},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dropship",   "3.000000"},
                {"Fighter",    "7.000000"},
                {"Scientific", "3.000000"},
                {"Shuttle",    "7.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"SpaceshipWeightings", "GcAISpaceshipWeightingData"},
              ["SECTION_ACTIVE"] = {2},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dropship",   "3.000000"},
                {"Fighter",    "3.000000"},
                {"Scientific", "7.000000"},
                {"Shuttle",    "7.000000"},
              }
            },
          }
        },
      }
    }
  }
}