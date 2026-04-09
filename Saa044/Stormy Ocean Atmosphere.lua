NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "Stormy Ocean Atmosphere.pak",
  ["MOD_DESCRIPTION"] = "Fallback storm-sea mod: more frequent, longer, darker storms using sky globals only",
  ["MOD_AUTHOR"]      = "saa044",
  ["LUA_AUTHOR"]      = "saa044",
  ["NMS_VERSION"]     = "6.x",
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
              ["INTEGER_TO_FLOAT"] = "FORCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinTimeBetweenStormsLow",              "1800"},
                {"MaxTimeBetweenStormsLow",              "4200"},
                {"MinTimeBetweenStormsHigh",             "720"},
                {"MaxTimeBetweenStormsHigh",             "1800"},
                {"MinTimeBetweenStormsExtremeFallback",  "900"},
                {"MaxTimeBetweenStormsExtremeFallback",  "1800"},

                {"MinStormLengthLow",                    "720"},
                {"MaxStormLengthLow",                    "1800"},
                {"MinStormLengthHigh",                   "1200"},
                {"MaxStormLengthHigh",                   "3000"},

                {"StormWarningTime",                     "120"},
                {"StormTransitionTime",                  "90"},
                {"MaxCloudCover",                        "1"},
                {"MaxStormCloudCover",                   "1"},
                {"StormAudioLevel",                      "0.55"},
                {"CloudCoverSmoothTime",                 "90"},
                {"CloudRatioSmoothTime",                 "45"},
                {"StormCloudSmoothTime",                 "10"}
              }
            }
          }
        }
      }
    }
  }
}