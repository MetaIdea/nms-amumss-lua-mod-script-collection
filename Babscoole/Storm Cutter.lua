NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Storm Cutter.pak",
["MOD_AUTHOR"]              = "Zurls",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.22",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinTimeBetweenStormsLow",             "2400"},
                                {"MaxTimeBetweenStormsLow",             "9000"},
                                {"MinTimeBetweenStormsHigh",            "5000"},
                                {"MaxTimeBetweenStormsHigh",            "11000"},
                                {"MinTimeBetweenStormsExtremeFallback", "5000"},
                                {"MaxTimeBetweenStormsExtremeFallback", "11000"},
                                {"MinStormLengthLow",                   "50"},
                                {"MaxStormLengthLow",                   "60"},
                                {"MinStormLengthHigh",                  "70"},
                                {"MaxStormLengthHigh",                  "75"},
                                {"ExtremeAudioLevel",                   "0.1"},
                                {"StormAudioLevel",                     "0.3"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BLUEWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Fog"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",       "0.1"},
                                {"FogColourStrength", "5"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LowStormsChance",      "0.2"},
                                {"HighStormsChance",     "0.1"},
                                {"ExtremeWeatherChance", "0.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-10"},
                                {"Extreme", "-50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-5"},
                                {"Extreme", "-30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-5"},
                                {"Extreme", "-10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-50"},
                                {"Extreme", "-70"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Night"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-20"},
                                {"Extreme", "-40"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Fog"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogStrength", "0.3"},
                                {"CloudRatio",        "0.3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Fog", "GcHeavyAirSettingValues.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Thickness", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Fog", "GcHeavyAirSettingValues.xml", "GcHeavyAirSettingValues.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Alpha1", "0.5"},
                                {"Alpha2", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms", "GcStormProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Weighting",            "0"},
                                {"FogStrength",          "3"},
                                {"FogColourStrength",    "0.5"},
                                {"DepthOfFieldDistance", "500"},
                                {"DepthOfFieldFade",     "1000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "0"},
                                {"Extreme", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "0"},
                                {"Extreme", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Night"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "0"},
                                {"Extreme", "-5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Toxicity",  "Ambient"},
                                {"Toxicity",  "Cave"},
                                {"Toxicity",  "Storm"},
                                {"Toxicity",  "Night"},
                                {"Radiation", "Ambient"},
                                {"Radiation", "Water"},
                                {"Radiation", "Cave"},
                                {"Radiation", "Storm"},
                                {"Radiation", "Night"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Toxicity", "Water"},
                                {"Toxicity", "Cave"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "6"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\DUSTWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LowStormsChance",      "0.2"},
                                {"HighStormsChance",     "0.1"},
                                {"ExtremeWeatherChance", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "3"},
                                {"Extreme", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-1"},
                                {"Extreme", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "15"},
                                {"Extreme", "40"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Night"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-8"},
                                {"Extreme", "-20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Toxicity",  "Ambient"},
                                {"Toxicity",  "Storm"},
                                {"Toxicity",  "Night"},
                                {"Radiation", "Ambient"},
                                {"Radiation", "Water"},
                                {"Radiation", "Cave"},
                                {"Radiation", "Storm"},
                                {"Radiation", "Night"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "3"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GREENWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LowStormsChance",      "0.2"},
                                {"HighStormsChance",     "0.1"},
                                {"ExtremeWeatherChance", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Temperature", "Ambient"},
                                {"Temperature", "Water"},
                                {"Temperature", "Storm"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-5"},
                                {"Extreme", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "20"},
                                {"Extreme", "40"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Toxicity", "Water"},
                                {"Toxicity", "Night"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "10"},
                                {"Extreme", "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "15"},
                                {"Extreme", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Radiation", "Ambient"},
                                {"Radiation", "Storm"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "1"},
                                {"Extreme", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Radiation", "Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "3"},
                                {"Extreme", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Radiation", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Radiation", "Night"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "2"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\HUMIDWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LowStormsChance",      "0.2"},
                                {"HighStormsChance",     "0.1"},
                                {"ExtremeWeatherChance", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "4"},
                                {"Extreme", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "1"},
                                {"Extreme", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Temperature", "Cave"},
                                {"Temperature", "Night"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "2"},
                                {"Extreme", "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Temperature", "Storm"},
                                {"Toxicity",    "Storm"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "20"},
                                {"Extreme", "40"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Toxicity",  "Ambient"},
                                {"Toxicity",  "Night"},
                                {"Radiation", "Ambient"},
                                {"Radiation", "Water"},
                                {"Radiation", "Cave"},
                                {"Radiation", "Storm"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "2"},
                                {"Extreme", "8"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RADIOACTIVE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LowStormsChance",      "0.2"},
                                {"HighStormsChance",     "0.1"},
                                {"ExtremeWeatherChance", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Temperature", "Ambient"},
                                {"Temperature", "Water"},
                                {"Temperature", "Storm"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-5"},
                                {"Extreme", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Temperature", "Cave"},
                                {"Toxicity",    "Ambient"},
                                {"Toxicity",    "Storm"},
                                {"Toxicity",    "Night"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Night"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-7"},
                                {"Extreme", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "2"},
                                {"Extreme", "7"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Radiation", "Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "10"},
                                {"Extreme", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Radiation", "Water"},
                                {"Radiation", "Night"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "10"},
                                {"Extreme", "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Radiation", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Radiation", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "20"},
                                {"Extreme", "60"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RAINWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Fog"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogColourStrength", "1"},
                                {"HeightFogStrength", "0.5"},
                                {"DepthOfFieldFade", "5000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Fog", "GcHeavyAirSettingValues.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Fog", "GcHeavyAirSettingValues.xml", "GcHeavyAirSettingValues.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FlightFog"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DepthOfFieldFade", "5000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ExtremeFog"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",      "0.5"},
                                {"DepthOfFieldFade", "5000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms", "GcStormProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Weighting",   "0.5"},
                                {"FogStrength", "1"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LowStormsChance",      "0.4"},
                                {"HighStormsChance",     "0.1"},
                                {"ExtremeWeatherChance", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Temperature", "Ambient"},
                                {"Temperature", "Water"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-5"},
                                {"Extreme", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Temperature", "Cave"},
                                {"Toxicity",    "Water"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-10"},
                                {"Extreme", "-15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Night"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-9"},
                                {"Extreme", "-15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Toxicity",  "Ambient"},
                                {"Toxicity",  "Storm"},
                                {"Toxicity",  "Night"},
                                {"Radiation", "Ambient"},
                                {"Radiation", "Water"},
                                {"Radiation", "Cave"},
                                {"Radiation", "Storm"},
                                {"Radiation", "Night"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "2"},
                                {"Extreme", "7"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\REDWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LowStormsChance",      "0.2"},
                                {"HighStormsChance",     "0.1"},
                                {"ExtremeWeatherChance", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "20"},
                                {"Extreme", "40"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "9"},
                                {"Extreme", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "5"},
                                {"Extreme", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "30"},
                                {"Extreme", "55"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Night"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "12"},
                                {"Extreme", "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Radiation", "Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "4"},
                                {"Extreme", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Radiation", "Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "1"},
                                {"Extreme", "9"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Radiation", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "4"},
                                {"Extreme", "22"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Radiation", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "2"},
                                {"Extreme", "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Radiation", "Night"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "1"},
                                {"Extreme", "10"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SCORCHED.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LowStormsChance",      "0.2"},
                                {"HighStormsChance",     "0.1"},
                                {"ExtremeWeatherChance", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Temperature", "Ambient"},
                                {"Temperature", "Night"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "10"},
                                {"Extreme", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Water"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "2"},
                                {"Extreme", "9"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "1"},
                                {"Extreme", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "20"},
                                {"Extreme", "40"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SNOWWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LowStormsChance",      "0.2"},
                                {"HighStormsChance",     "0.1"},
                                {"ExtremeWeatherChance", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Temperature", "Ambient"},
                                {"Temperature", "Water"},
                                {"Temperature", "Night"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-10"},
                                {"Extreme", "-20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-4"},
                                {"Extreme", "-10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-20"},
                                {"Extreme", "-40"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\TOXIC.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LowStormsChance",      "0.2"},
                                {"HighStormsChance",     "0.1"},
                                {"ExtremeWeatherChance", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Temperature", "Ambient"},
                                {"Temperature", "Water"},
                                {"Temperature", "Storm"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-5"},
                                {"Extreme", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Temperature", "Cave"},
                                {"Radiation", "Ambient"},
                                {"Radiation", "Water"},
                                {"Radiation", "Cave"},
                                {"Radiation", "Storm"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature", "Night"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "-5"},
                                {"Extreme", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Toxicity", "Ambient"},
                                {"Toxicity", "Water"},
                                {"Toxicity", "Night"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "10"},
                                {"Extreme", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Cave"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "20"},
                                {"Extreme", "30"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERLIST.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Table", "Dust"},
                                {"Table", "Snow"},
                                {"Table", "Toxic"},
                                {"Table", "Scorched"},
                                {"Table", "Radioactive"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARWEATHER.MXML"},
                            }
                        },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"Table", "Humid"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Value", "METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARWEATHER.MXML"},
                            -- }
                        -- },
                    }
                },
            }
        },
    }
}