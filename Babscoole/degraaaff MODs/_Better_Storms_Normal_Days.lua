NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Better_Storms_Normal_Days.pak",
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
                                {"MinTimeBetweenStormsLow",             "1620"},
                                {"MaxTimeBetweenStormsLow",             "3600"},
                                {"MinTimeBetweenStormsHigh",            "540"},
                                {"MaxTimeBetweenStormsHigh",            "1620"},
                                {"MinTimeBetweenStormsExtremeFallback", "900"},
                                {"MaxTimeBetweenStormsExtremeFallback", "1620"},
                                {"MinStormLengthLow",                   "240"},
                                {"MaxStormLengthLow",                   "720"},
                                {"MinStormLengthHigh",                  "480"},
                                {"MaxStormLengthHigh",                  "1440"},
                                {"StormWarningTime",                    "120"},
                                {"StormTransitionTime",                 "120"},
                                {"MaxCloudCover",                       "1"},
                                {"MaxStormCloudCover",                  "1"},
                                {"StormAudioLevel",                     "0.4"},
                                {"CloudCoverSmoothTime",                "120"},
                                {"CloudRatioSmoothTime",                "48"},
                                {"StormCloudSmoothTime",                "9.6"},
                            }
                        },
                    }
                },
            }
        },
    }
}