NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Water Waves 1.0.pak",
["MOD_DESCRIPTION"] = "Changes wave height and frequency",
["MOD_AUTHOR"]      = "justylefty",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.45",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCWATERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WaveHeight",    "3.5"},
                                {"WaveFrequency", "0.03"},
                            }
                        },
                    }
                }
            }
        }
    }
}