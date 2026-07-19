NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zGalaxy Map Mods",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "zGalaxy Map Mods",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HandControlMoveSpeed",      "10.000000"},
                {"HandControlMoveSpeedTurbo", "30.000000"},
                {"HandControlZoomSpeed",      "50.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BaseStarDefaultColours", "GcGalaxyStarColours"},
              ["PRECEDING_KEY_WORDS"] = {"Yellow"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"G", "0.700000"},
                {"B", "0.060000"},
                {"A", "0.350000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BaseStarDefaultColours", "GcGalaxyStarColours"},
              ["PRECEDING_KEY_WORDS"] = {"Green"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.150000"},
                {"G", "0.750000"},
                {"B", "0.000000"},
                {"A", "0.600000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BaseStarDefaultColours", "GcGalaxyStarColours"},
              ["PRECEDING_KEY_WORDS"] = {"Blue"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.100000"},
                {"G", "0.300000"},
                {"A", "0.600000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BaseStarDefaultColours", "GcGalaxyStarColours"},
              ["PRECEDING_KEY_WORDS"] = {"Red"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.150000"},
                {"B", "0.150000"},
                {"A", "0.600000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BaseStarDefaultColours", "GcGalaxyStarColours"},
              ["PRECEDING_KEY_WORDS"] = {"Purple"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.600000"},
                {"G", "0.100000"},
                {"A", "0.600000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Camera", "GcGalaxyCameraData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Free Pan Speed",       "10.000000"},
                {"Free Pan Speed Turbo", "50.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Composition Control B_S_C_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.400000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"MoonParameters", "GcGalaxySolarSystemOrbitParams"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FirstOrbitRadiusMin", "26.000000"},
                {"FirstOrbitRadiusMax", "30.000000"},
              }
            },
          }
        },
      }
    }
  }
}