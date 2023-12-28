NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Better_Storms_Longer_Days.pak",
["MOD_AUTHOR"]    = "degraaaff",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.45",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DayLength",                           "3600"},
                                {"MinTimeBetweenStormsLow",             "3240"},
                                {"MaxTimeBetweenStormsLow",             "7200"},
                                {"MinTimeBetweenStormsHigh",            "1080"},
                                {"MaxTimeBetweenStormsHigh",            "3240"},
                                {"MinTimeBetweenStormsExtremeFallback", "1800"},
                                {"MaxTimeBetweenStormsExtremeFallback", "3240"},
                                {"MinStormLengthLow",                   "480"},
                                {"MaxStormLengthLow",                   "1440"},
                                {"MinStormLengthHigh",                  "960"},
                                {"MaxStormLengthHigh",                  "2880"},
                                {"StormWarningTime",                    "180"},
                                {"StormTransitionTime",                 "180"},
                                {"MaxCloudCover",                       "1"},
                                {"MaxStormCloudCover",                  "1"},
                                {"StormAudioLevel",                     "0.4"},
                                {"CloudCoverSmoothTime",                "180"},
                                {"CloudRatioSmoothTime",                "72"},
                                {"StormCloudSmoothTime",                "14.4"},
                            }
                        },
                    }
                },
            }
        },
    }
}