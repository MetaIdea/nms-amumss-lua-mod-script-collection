NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Exosolars Peaceful Permanent Rain.pak",
["MOD_AUTHOR"]    = "Exosolar",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "2.62",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERLIST.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Humid", "VariableSizeString.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "METADATA/SIMULATION/SOLARSYSTEM/WEATHER/RAINWEATHER.MXML"}
                            }
                        },
                    }
                },
            }
        }
    }
}