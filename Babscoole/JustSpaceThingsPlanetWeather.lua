NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "JustSpaceThingsPlanetWeather.pak",
["MOD_AUTHOR"]    = "JustSpaceThings",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.40",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\DUSTWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature","Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "70"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature","Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature","Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "90"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\HUMIDWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature","Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "220"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature","Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "540"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\LAVAWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature","Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "110"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature","Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "700"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RADIOACTIVE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature","Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "60"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature","Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "60"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature","Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "90"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity","Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity","Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity","Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "70"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SNOWWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature","Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "-108"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature","Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "-99"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature","Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "-400"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature","Night"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "-120"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\TOXIC.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity","Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "110"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity","Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "150"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity","Night"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "120"},
                            }
                        },
                    }
                },
            }
        }
    }
}