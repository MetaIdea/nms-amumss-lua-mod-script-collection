NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Clement.Weather.pak",
["MOD_AUTHOR"]    = "JJhookah",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
["MODIFICATIONS"] =
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
                                {"FogStrength",              "0"},
                                {"FogMax",                   "0"},
                                {"FogColourStrength",        "0"},
                                {"FogColourMax",             "0"},
                                {"HeightFogStrength",        "0"},
                                {"HeightFogFadeOutStrength", "0"},
                                {"HeightFogMax",             "0"},
                                {"FogHeight",                "0"},
                                {"Thickness",                "0"},
                                {"Speed",                    "0"},
                                {"Alpha1",                   "0"},
                                {"Alpha2",                   "0"},
                                {"Palette",                  "Grass"},
                                {"R",                        "0"},
                                {"G",                        "0"},
                                {"B",                        "0"},
                                {"A",                        "0"},
                                {"CloudRatio",               "0"},
                                {"FullscreenEffect",         "0"},  
                                {"DepthOfFieldDistance",     "0"},
                                {"DepthOfFieldFade",         "0"},
                                {"RainWetness",              "0"},                             
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
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\MARS\MARS.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Type", ""},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\STORMCRYSTALS\ENTITIES\STORMCRYSTALS.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NeedsStorm", "False"},
                            }
                        },
                    }
                },
            }
        }
    },
}