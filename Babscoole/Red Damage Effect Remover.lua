NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Red Damage Effect Remover",
["MOD_AUTHOR"]      = "Rray21",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.58",
["MOD_DESCRIPTION"] = "Removes the lingering red vignette damage effect",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LowHealthVignetteStart",            "0.000000"},
                                {"LowHealthVignetteEnd",              "0.000000"},
                                {"LowHealthDesaturationIntensityMin", "0.000000"},
                                {"LowHealthDesaturationIntensityMax", "0.000000"},
                                {"LowHealthOverlayIntensity",         "0.000000"},
                                {"LowHealthFadeInTime",               "0.000000"},
                                {"LowHealthFadeOutTime",              "0.000000"},
                                {"LowHealthPulseRateLowShield",       "0.000000"},
                                {"LowHealthPulseRateFullShield",      "0.000000"},
                                {"LowHealthStrengthLowShield",        "0.000000"},
                                {"LowHealthStrengthFullShield",       "0.000000"},
                            }
                        }
                    }
                }
            }
        }
    }
}