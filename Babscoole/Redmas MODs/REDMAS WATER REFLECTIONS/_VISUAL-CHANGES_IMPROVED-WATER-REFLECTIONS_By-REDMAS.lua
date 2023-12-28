NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_VISUAL-CHANGES_IMPROVED-WATER-REFLECTIONS_By-REDMAS.pak",
["MOD_DESCRIPTION"] = "This will make water waves and foams look more natural",
["MOD_AUTHOR"]      = "Redmas",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "3.99",
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
                                {"WaveHeight",    "0.5"},
                                {"WaveFrequency", "0.21"},
                                {"FresnelAlpha",  "5E-05"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WaterDataDay", "GcPlanetWaterData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FoamFadeHeight", "0"},
                                {"Foam1Scale",     "8E-09"},
                                {"Foam1Speed",     "2E-05"},
                                {"Foam2Scale",     "5E-09"},
                                {"Foam2Speed",     "0.0004"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WaterDataDay", "GcPlanetWaterData.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WaterColourNight", "GcPlanetWaterColourData.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "0"},
                            }
                        },
                    }
                }
            }
        }
    }
}