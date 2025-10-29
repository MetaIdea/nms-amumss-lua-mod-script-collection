NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Clement.Weather.V.1.2",
["MOD_AUTHOR"]    = "JJhookah",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.10",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ForceStormSetting", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"PlanetProperties",      "PlanetFog"},
                                {"PlanetProperties",      "PlanetExtremeFog"},
                                {"PlanetProperties",      "PlanetStormFog"},
                                {"PlanetProperties",      "PlanetFlightFog"},
                                {"PlanetPrimeProperties", "PlanetFog"},
                                {"PlanetPrimeProperties", "PlanetExtremeFog"},
                                {"PlanetPrimeProperties", "PlanetStormFog"},
                                {"PlanetPrimeProperties", "PlanetFlightFog"},
                            },
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",       "0.000000"},
                                {"HeightFogStrength", "0.000000"},                           
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERLIST.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Table"},
                            ["REPLACE_TYPE"] = "ALLINSIDESECTION",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARWEATHER.MXML"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\EFFECTS\HEAVYAIR\MARS\MARS.SCENE.MBIN",
                        "MODELS\EFFECTS\HEAVYAIR\UNDERWATER\UNDERWATER.SCENE.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Type", ""},
                            }
                        },
                    }
                },
            }
        }
    },
}