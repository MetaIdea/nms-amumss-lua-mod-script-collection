NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Exosolars Painless Rain",
["MOD_AUTHOR"]      = "Exosolar",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.73",
["MOD_DESCRIPTION"] = "Makes lush storms harmless",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\HUMIDWEATHER.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OverrideTemperature", "false"}
                            }
                        }
                    }
                }
            }
        }
    }
}