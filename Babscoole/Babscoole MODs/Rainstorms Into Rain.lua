NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Rainstorms Into Rain",
["MOD_AUTHOR"]      = "Florian B. & Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Reduce effects of rainstorms",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                -- Weather
                {"ForceStormStrength",    "0.000000"},
                {"MaxCloudCover",         "5.000000"},
                {"StormAudioLevel",       "0.000000"},
                {"InFlightStormStrength", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PlanetStormFog", "HeavyAir"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Thickness", "0.000000"}, -- Original "1"
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = "PlanetStormFog",
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"FogStrength", "0.000000"}, -- Original "1.5"
              }
            },
          }
        },
      }
    },
  }
}