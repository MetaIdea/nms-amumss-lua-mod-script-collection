NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Extreme Temperatures and Radiation",
["MOD_AUTHOR"]    = "JustSpaceThings and Babscoole",
["NMS_VERSION"]   = "5.57",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARCOLD.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-150"},
                                {"Extreme", "-256"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-150"},
                                {"Extreme", "-200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-20"},
                                {"Extreme", "-20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-150"},
                                {"Extreme", "-450"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Night"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-150"},
                                {"Extreme", "-256"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\DUSTWEATHER.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HazardModifiers", "Temperature"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "30"},
                                {"Y", "80"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OverrideTemperature", "false"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "70"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "120"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\FIRESTORMWEATHER.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HazardModifiers", "Temperature"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "30"},
                                {"Y", "200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "300"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\HUMIDWEATHER.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "50"},
                                {"Extreme", "200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "340"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "201"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\LAVAWEATHER.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HazardModifiers", "Temperature"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "30"},
                                {"Y", "75"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "100"},
                                {"Extreme", "180"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "200"},
                                {"Extreme", "800"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SCORCHED.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "110"},
                                {"Extreme", "220"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "110"},
                                {"Extreme", "500"},
                            }
                        },
                    }
                },
                -- {
                    -- ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RADIOACTIVE.MBIN",
                    -- ["MXML_CHANGE_TABLE"] =
                    -- {
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"Temperature", "Ambient"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Extreme", "60"},
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"Temperature", "Water"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Extreme", "60"},
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"Temperature", "Storm"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Extreme", "90"},
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Ambient"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Extreme", "50"},
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Water"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Extreme", "50"},
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Storm"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Extreme", "70"},
                            -- }
                        -- },
                    -- }
                -- },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SNOWWEATHER.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HazardModifiers", "Temperature"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "-70"},
                                {"Y", "-120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-80"},
                                {"Extreme", "-200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-60"},
                                {"Extreme", "-93"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-92"},
                                {"Extreme", "-120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Night"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-52"},
                                {"Extreme", "-92"},
                            }
                        },
                    }
                },
                -- {
                    -- ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\TOXIC.MBIN",
                    -- ["MXML_CHANGE_TABLE"] =
                    -- {
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Water"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Extreme", "110"},
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Storm"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Extreme", "150"},
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Night"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Extreme", "120"},
                            -- }
                        -- },
                    -- }
                -- },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERHAZARDS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TORNADO"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpawnScale", "5.000000"},
                            }
                        },
                    }
                },
            }
        }
    }
}