NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_IncreasedWeatherFog.pak",
["MOD_AUTHOR"]              = "trevix",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.00",
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
                            ["SPECIAL_KEY_WORDS"] = {"PlanetProperties", "GcPlanetSkyProperties.xml", "PlanetFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.15"},
                                {"HeightFogFadeOutStrength", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PlanetProperties", "GcPlanetSkyProperties.xml", "PlanetStormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PlanetProperties", "GcPlanetSkyProperties.xml", "PlanetFlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.1"},
                                {"HeightFogFadeOutStrength", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PlanetPrimeProperties", "GcPlanetSkyProperties.xml", "PlanetFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.15"},
                                {"FogMax",                   "0.95"},
                                {"HeightFogFadeOutStrength", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PlanetPrimeProperties", "GcPlanetSkyProperties.xml", "PlanetStormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PlanetPrimeProperties", "GcPlanetSkyProperties.xml", "PlanetFlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.1"},
                                {"FogMax",                   "0.9"},
                                {"HeightFogFadeOutStrength", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AbandonedFreighterFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.01"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceSkyMin", "GcSpaceSkyProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpaceFogStrength",        "0.15"},
                                {"SpaceFogColourStrength",  "0.05"},
                                {"SpaceFogColour2Strength", "0.075"},
                                {"SpaceFogMax",             "0.75"},
                                {"SpaceFogPlanetMax",       "0.75"},
                                {"NebulaFogAmount",         "0.2"},
                                {"NebulaCloudStrength",     "0.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BLUEWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.3"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.8"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BUBBLEWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1"},
                                {"FogMax",                   "1"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARCOLD.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\DUSTWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\FIRESTORMWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"FogMax",                   "1"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"FogMax",                   "1"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"FogMax",                   "1"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"FogMax",                   "1"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GRAVITYSTORMWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"FogMax",                   "1"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"FogMax",                   "1"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogMax",                   "1"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"FogMax",                   "1"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GREENWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\HUMIDWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.4"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.8"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\LAVAWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",       "0.8"},
                                {"FogMax",            "1"},
                                {"HeightFogStrength", "0.5"},
                                {"HeightFogOffset",   "0.3"},
                                {"HeightFogMax",      "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RADIOACTIVE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.4"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.4"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RAINWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\REDWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.6"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SCORCHED.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.6"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SNOWWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.3"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.8"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SWAMPWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"FogMax",                   "1"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"FogMax",                   "1"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"FogMax",                   "1"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"FogMax",                   "1"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\TOXIC.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEIRDWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.5"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.22"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1.2"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "1"},
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightFogFadeOutStrength", "0.1"},
                                {"HeightFogOffset",          "0.3"},
                                {"HeightFogMax",             "1.1"},
                            }
                        },
                    }
                },
            }
        }
    }
}