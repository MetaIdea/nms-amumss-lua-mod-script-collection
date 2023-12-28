NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_04_POD_FewerStorms_LongerDaysv4.05.0.pak",
["MOD_DESCRIPTION"]         = "Longer Days and Less Storms",
["MOD_AUTHOR"]              = "PodcastPrimate",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.05",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Low", "RegionLODRadius"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Low", "RegionLODRadius"},
                            ["LINE_OFFSET"] = "+3",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "16"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Low", "RegionLODRadius"},
                            ["LINE_OFFSET"] = "+4",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Low", "RegionLODRadius"},
                            ["LINE_OFFSET"] = "+5",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Ultra", "LODAdjust"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Ultra", "LODAdjust"},
                            ["LINE_OFFSET"] = "+2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Ultra", "LODAdjust"},
                            ["LINE_OFFSET"] = "+3",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Ultra", "LODAdjust"},
                            ["LINE_OFFSET"] = "+4",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Ultra", "LODAdjust"},
                            ["LINE_OFFSET"] = "+5",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CloudProperties"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimationScale",       "10"},
                                {"CloudDistortionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CloudProperties", "WindOffset"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.65"},
                                {"Y", "0.65"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TerrainFadeTime",         "1"},
                                {"TerrainFadeTimeInShip",   "1"},
                                {"CreatureFadeTime",        "0.7"},
                                {"FloraFadeTimeMin",        "1"},
                                {"FloraFadeTimeMax",        "1.5"},
                                {"HeightFogHeightMin",      "800"},
                                {"PlanetEffectEndDistance", "8000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"EnvironmentProperties"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                  {"FlightFogHeight",           "900"},
                                  {"FlightFogBlend",            "1300"},
                                  {"PlanetObjectSwitch",        "4500"},
                                  {"PlanetLodSwitch0",          "3000"},
                                  {"PlanetLodSwitch0Elevation", "5000"},
                                  {"PlanetLodSwitch1",          "8000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"EnvironmentPrimeProperties"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                  {"HeavyAirHeightMin",         "1450"},
                                  {"HeavyAirHeightMax",         "1500"},
                                  {"PlanetObjectSwitch",        "6000"},
                                  {"PlanetLodSwitch0",          "6000"},
                                  {"PlanetLodSwitch0Elevation", "6000"},
                                  {"PlanetLodSwitch1",          "6000"},
                                  {"PlanetLodSwitch2",          "30000"},
                                  {"PlanetLodSwitch3",          "60000"},
                                  {"HorizonBlendHeight",        "1000"},
                                  {"SolarSystemLUTHeight",      "1000"},
                                  {"SolarSystemLUTBlendLength", "500"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DayLength",                           "7200"},
                                {"SafeSkyMaxIndex",                     "342"},
                                {"FrozenSkyMaxIndex",                   "342"},
                                {"StormScreenFilterFadeTime",           "2"},
                                {"MaxTimeBetweenStormsLow",             "27000"},
                                {"MinTimeBetweenStormsHigh",            "900"},
                                {"MaxTimeBetweenStormsHigh",            "27000"},
                                {"MinTimeBetweenStormsExtremeFallback", "960"},
                                {"MaxTimeBetweenStormsExtremeFallback", "2500"},
                                {"StormWarningTime",                    "20"},
                                {"StormTransitionTime",                 "60"},
                                {"MaxCloudCover",                       "0.6"},
                                {"MaxStormCloudCover",                  "0.7"},
                                {"CloudCoverSmoothTime",                "20"},
                                {"CloudRatioSmoothTime",                "20"},
                                {"StormCloudTopColourMinBlend",         "0"},
                                {"StormCloudTopColourMaxBlend",         "0.5"},
                                {"StormCloudBottomColourMinBlend",      "0"},
                                {"StormCloudBottomColourMaxBlend",      "0.5"},
                                {"MinSunsetFade",                       "0.33"},
                                {"MaxSunsetFade",                       "0.53"},
                                {"MinSunsetHorizonFade",                "0.33"},
                                {"MaxSunsetHorizonFade",                "0.53"},
                                {"MinNightFade",                        "0.55"},
                                {"MaxNightFade",                        "0.73"},
                                {"MinSunsetPosFade",                    "0.73"},
                                {"MaxSunsetPosFade",                    "0.77"},
                                {"MinSunsetFogFade",                    "0.7"},
                                {"MaxSunsetFogFade",                    "0.75"},
                                {"MinSunsetAtmosphereFade",             "0.7"},
                                {"MaxSunsetAtmosphereFade",             "0.75"},
                                {"MinSunsetColourFade",                 "0.7"},
                                {"MaxSunsetColourFade",                 "0.75"},
                                {"MinSaturation",                       "0.3"},
                                {"MaxSaturation",                       "0.3"},
                                {"NoAtmosphereFogStrength",             "0.09"},
                                {"NoAtmosphereFogMax",                  "0.95"},
                                {"BinaryStarChance",                    "0.05"},
                                {"TernaryStarChance",                   "0.025"},
                                {"WeatherBloomGain",                    "5"},
                                {"MaxRainWetness",                      "0.6"},
                                {"RainWetnessFadeInTime",               "40"},
                                {"RainWetnessFadeOutTime",              "60"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetFog"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogMax",                   "0.95"},
                                {"HeightFogStrength",        "0.1"},
                                {"HeightFogFadeOutStrength", "0.5"},
                                {"HeightFogMax",             "0.98"},
                                {"DepthOfFieldDistance",     "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetExtremeFog"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.15"},
                                {"FogMax",                   "0.95"},
                                {"FogColourStrength",        "10"},
                                {"HeightFogStrength",        "0.1"},
                                {"HeightFogFadeOutStrength", "0.5"},
                                {"HeightFogMax",             "0.98"},
                                {"FogHeight",                "128"},
                                {"DepthOfFieldDistance",     "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetStormFog"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.25"},
                                {"FogColourStrength",        "10"},
                                {"HeightFogStrength",        "0.1"},
                                {"HeightFogFadeOutStrength", "0.5"},
                                {"HeightFogMax",             "0.98"},
                                {"FogHeight",                "128"},
                                {"DepthOfFieldDistance",     "10"},
                                {"DepthOfFieldFade",         "1000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetFlightFog"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogMax",                   "0.95"},
                                {"HeightFogStrength",        "0.1"},
                                {"HeightFogFadeOutStrength", "0.5"},
                                {"HeightFogMax",             "0.98"},
                                {"DepthOfFieldDistance",     "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties", "PlanetSky"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SunSize",         "0.4"},
                                {"SunSurroundSize", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties", "PlanetFog"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.04"},
                                {"FogMax",                   "0.95"},
                                {"FogColourMax",             "1"},
                                {"HeightFogStrength",        "0.3"},
                                {"HeightFogFadeOutStrength", "0.8"},
                                {"HeightFogMax",             "0.98"},
                                {"FogHeight",                "192"},
                                {"DepthOfFieldDistance",     "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties", "PlanetExtremeFog"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.15"},
                                {"FogMax",                   "0.95"},
                                {"FogColourStrength",        "10"},
                                {"HeightFogStrength",        "0.3"},
                                {"HeightFogFadeOutStrength", "0.8"},
                                {"HeightFogMax",             "0.98"},
                                {"FogHeight",                "192"},
                                {"DepthOfFieldDistance",     "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties", "PlanetStormFog"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "0.25"},
                                {"FogColourStrength",        "10"},
                                {"HeightFogStrength",        "0.3"},
                                {"HeightFogFadeOutStrength", "0.8"},
                                {"HeightFogMax",             "0.98"},
                                {"FogHeight",                "192"},
                                {"DepthOfFieldDistance",     "10"},
                                {"DepthOfFieldFade",         "1000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties", "PlanetFlightFog"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogMax",                   "0.95"},
                                {"HeightFogStrength",        "0.3"},
                                {"HeightFogFadeOutStrength", "0.8"},
                                {"HeightFogMax",             "0.98"},
                                {"FogHeight",                "192"},
                                {"DepthOfFieldDistance",     "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceSkyMin"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SunStrength",       "0.4"},
                                {"SunSize",           "0.002"},
                                {"SpaceFogMax",       "0.6"},
                                {"SpaceFogPlanetMax", "0.7"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceSkyMax"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SunStrength",              "0.8"},
                                {"SunSize",                  "0.01"},
                                {"SpaceFogMax",              "0.8"},
                                {"SpaceFogPlanetMax",        "0.7"},
                                {"NebulaDistortionStrength", "0.4"},
                            }
                        },
                    }
                },
            }
        }
    }
}