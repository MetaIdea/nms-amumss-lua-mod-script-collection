NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zzzTransparentwater.pak",
["MOD_DESCRIPTION"] = "A simple fix for a clearer, less foams, transparent and accurate height water for No Man's Sky.",
["MOD_AUTHOR"]      = "Invalidcod3",
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
                                {"WaveHeight",        "-0.09"},
                                {"WaveFrequency",     "0.15"},
                                {"WaveChoppiness",    "1"},
                                {"WaveCutoff",        "0.45"},
                                {"Epsilon",           "0.5"},
                                {"FresnelPow",        "0.25"},
                                {"FresnelMul",        "0.25"},
                                {"FresnelAlpha",      "0.25"},
                                {"FresnelBelowPow",   "0.25"},
                                {"FresnelBelowAlpha", "0.375"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WaterDataDay", "GcPlanetWaterData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WaterStrength",         "0.005"},
                                {"WaterColourStrength",   "0.5"},
                                {"WaterMultiplyStrength", "0.005"},
                                {"FoamFadeHeight",        "-10"},
                                {"Foam1Scale",            "1"},
                                {"Foam1Speed",            "0.05"},
                                {"Foam2Scale",            "1"},
                                {"Foam2Speed",            "0.05"},
                            }
                        },
                    }
                }
            }
        }
    }
}