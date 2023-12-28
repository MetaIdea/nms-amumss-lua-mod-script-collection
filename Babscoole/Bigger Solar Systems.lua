NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_planetdistance.pak",
["MOD_AUTHOR"]    = "Nero2258",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.53",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SolarSystemSize"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "98388610"}, --Original "8388608"
                                {"y", "99524290"}, --Original "524288"
                                {"z", "98388610"}, --Original "8388608"
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SolarSystemMaximumRadius",        "9999999"}, --Original "500000"
                                {"SolarSystemMaximumRadiusMassive", "9999999"}, --Original "1000000"
                                {"GenerateMaximumSolarSystem",      "True"},    --Original "False"
                            }
                        }
                    }
                }
            }
        }
    }
}
