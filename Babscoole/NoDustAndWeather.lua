NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "NoDustAndWeather.pak",
["MOD_AUTHOR"]    = "revaneldaris9",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.29",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL", 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength", "0"},
                                {"Thickness",   "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERLIST.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL", 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARWEATHER.MXML"},
                            }
                        },
                    }
                },
            }
        }
    }
}