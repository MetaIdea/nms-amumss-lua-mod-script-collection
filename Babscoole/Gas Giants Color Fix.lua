NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Gas Giants Color Fix",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.17",
["MOD_DESCRIPTION"] = "Fixes an issue where blue gas giants appear green on the discoveries screen and having green skies, and vice versa",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\ATMOSPHERE\GASGIANTATMOSPHERELIST.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AtmosphereID", "ATMOS_BLUE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.207649"},
                                {"G", "1.000000"},
                                {"B", "0.425620"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AtmosphereID", "ATMOS_GREEN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.228200"},
                                {"G", "0.345835"},
                                {"B", "1.000000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\DAYSKYCOLOURS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GasGiant", "GcWeatherColourSettingList", "GasGiantAtmosphereID", "ATMOS_BLUE"},
                            ["PRECEDING_KEY_WORDS"] = {"SkyColour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.179000"},
                                {"G", "0.893000"},
                                {"B", "0.394000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GasGiant", "GcWeatherColourSettingList", "GasGiantAtmosphereID", "ATMOS_BLUE"},
                            ["PRECEDING_KEY_WORDS"] = {"SkySolarColour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.557000"},
                                {"G", "0.951000"},
                                {"B", "0.419000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GasGiant", "GcWeatherColourSettingList", "GasGiantAtmosphereID", "ATMOS_BLUE"},
                            ["PRECEDING_KEY_WORDS"] = {"SunColour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.641000"},
                                {"B", "0.472000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GasGiant", "GcWeatherColourSettingList", "GasGiantAtmosphereID", "ATMOS_BLUE"},
                            ["PRECEDING_KEY_WORDS"] = {"FogColour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.496000"},
                                {"G", "0.893000"},
                                {"B", "0.527000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GasGiant", "GcWeatherColourSettingList", "GasGiantAtmosphereID", "ATMOS_BLUE"},
                            ["PRECEDING_KEY_WORDS"] = {"HeightFogColour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.342000"},
                                {"G", "0.257000"},
                                {"B", "0.224000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GasGiant", "GcWeatherColourSettingList", "GasGiantAtmosphereID", "ATMOS_BLUE"},
                            ["PRECEDING_KEY_WORDS"] = {"LightColour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.838000"},
                                {"G", "0.965000"},
                                {"B", "0.778000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GasGiant", "GcWeatherColourSettingList", "GasGiantAtmosphereID", "ATMOS_GREEN"},
                            ["PRECEDING_KEY_WORDS"] = {"SkyColour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.020000"},
                                {"G", "0.530000"},
                                {"B", "0.816000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GasGiant", "GcWeatherColourSettingList", "GasGiantAtmosphereID", "ATMOS_GREEN"},
                            ["PRECEDING_KEY_WORDS"] = {"SkySolarColour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.367000"},
                                {"G", "0.834000"},
                                {"B", "0.951000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GasGiant", "GcWeatherColourSettingList", "GasGiantAtmosphereID", "ATMOS_GREEN"},
                            ["PRECEDING_KEY_WORDS"] = {"SunColour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.621000"},
                                {"B", "0.541000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GasGiant", "GcWeatherColourSettingList", "GasGiantAtmosphereID", "ATMOS_GREEN"},
                            ["PRECEDING_KEY_WORDS"] = {"FogColour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.530000"},
                                {"G", "0.725000"},
                                {"B", "0.896000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GasGiant", "GcWeatherColourSettingList", "GasGiantAtmosphereID", "ATMOS_GREEN"},
                            ["PRECEDING_KEY_WORDS"] = {"HeightFogColour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.271000"},
                                {"G", "0.515000"},
                                {"B", "0.576000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GasGiant", "GcWeatherColourSettingList", "GasGiantAtmosphereID", "ATMOS_GREEN"},
                            ["PRECEDING_KEY_WORDS"] = {"LightColour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.965000"},
                                {"G", "0.887000"},
                                {"B", "0.853000"},
                            }
                        },                        
                    }
                },
            }
        }
    }
}