NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "LessStorms with 4x DayNight Length by Dr. Kaii.pak",
["MOD_AUTHOR"]    = "Dr. Kaii",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.05",
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
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DayLength",                           "7200"},
                                {"MinTimeBetweenStormsLow",             "2400"},
                                {"MaxTimeBetweenStormsLow",             "3600"},
                                {"MinTimeBetweenStormsHigh",            "2400"},
                                {"MaxTimeBetweenStormsHigh",            "3600"},
                                {"MinTimeBetweenStormsExtremeFallback", "2400"},
                                {"MaxTimeBetweenStormsExtremeFallback", "3600"},
                            }
                        },
                    }
                },
            }
        }
    }
}