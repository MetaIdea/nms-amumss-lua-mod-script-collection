NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Exosolars Painless Rain.pak",
["MOD_AUTHOR"]      = "Exosolar",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.23",
["MOD_DESCRIPTION"] = "Makes lush and swamp storms harmless",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\HUMIDWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SWAMPWEATHER.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OverrideTemperature", "False"},
                            }
                        }
                    }
                }
            }
        }
    }
}