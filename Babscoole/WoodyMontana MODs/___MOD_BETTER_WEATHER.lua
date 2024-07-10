NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "___MOD_BETTER_WEATHER.pak",
["MOD_AUTHOR"]              = "WoodyMontana",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.15",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BLUEWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BUBBLEWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARCOLD.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\DUSTWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\FIRESTORMWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GRAVITYSTORMWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GREENWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\HUMIDWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\LAVAWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RADIOACTIVE.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RAINWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\REDWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SCORCHED.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SNOWWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SWAMPWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\TOXIC.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UseWeatherFog",           "True"},
                                {"UseWeatherSky",           "True"},
                                {"UseLightShaftProperties", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",       "0.1"},
                                {"HeightFogStrength", "0.1"},
                                {"DepthOfField",      "0"},
                                {"RainWetness",       "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"FlightFog",  "GcFogProperties.xml"},
                                {"StormFog",   "GcFogProperties.xml"},
                                {"ExtremeFog", "GcFogProperties.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DepthOfField", "0"},
                                {"RainWetness",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DepthOfField", "0"},
                                {"RainWetness",  "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LightShaftProperties", "GcLightShaftProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LightShaftScattering", "0.5"},
                                {"LightShaftStrength",   "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LightShaftColourBottom", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.427"},
                                {"G", "0.332"},
                                {"B", "0.22"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LightShaftColourTop", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.133"},
                                {"G", "0.074"},
                                {"B", "0.157"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BUBBLEWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARCOLD.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\DUSTWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GRAVITYSTORMWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GREENWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\HUMIDWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RADIOACTIVE.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SWAMPWEATHER.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Storms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CloudRatio", "0.55"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BUBBLEWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DepthOfField", "0.2"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\FIRESTORMWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ColourModifiers", "GcWeatherColourModifiers.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ForceColour", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sky", "GcSkyProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AtmosphereThickness",    "0.4"},
                                {"HorizonMultiplier",      "1"},
                                {"DuskHorizonMultiplier",  "1"},
                                {"NightHorizonMultiplier", "1"},
                                {"HorizonFadeSpeed",       "1"},
                                {"SunSize",                "0.4"},
                                {"SunStrength",            "0.5"},
                                {"SunSurroundSize",        "1"},
                                {"SunSurroundStrength",    "0.5"},
                                {"UpperSkyFadeSpeed",      "12"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GRAVITYSTORMWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FogStrength",              "15"},
                                {"FogMax",                   "0.3"},
                                {"FogColourStrength",        "6"},
                                {"FogColourMax",             "0.9"},
                                {"HeightFogStrength",        "0.5"},
                                {"HeightFogFadeOutStrength", "1"},
                                {"HeightFogMax",             "0.75"},
                                {"CloudRatio",               "0.55"},
                                {"FullscreenEffect",         "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"GcHeavyAirSettingValues.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Thickness", "1"},
                                {"Speed",     "1"},
                                {"Alpha1",    "0.5"},
                                {"Alpha2",    "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"GcHeavyAirSettingValues.xml", "GcHeavyAirSettingValues.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Thickness", "1"},
                                {"Speed",     "1"},
                                {"Alpha1",    "0.1"},
                                {"Alpha2",    "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"GcHeavyAirSettingValues.xml", "GcHeavyAirSettingValues.xml", "GcHeavyAirSettingValues.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Thickness", "1"},
                                {"Speed",     "0.5"},
                                {"Alpha1",    "1"},
                                {"Alpha2",    "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"GcHeavyAirSettingValues.xml", "GcHeavyAirSettingValues.xml", "GcHeavyAirSettingValues.xml", "GcHeavyAirSettingValues.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Thickness", "1"},
                                {"Speed",     "1.25"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ColourModifiers", "GcWeatherColourModifiers.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ForceColour", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sky", "GcSkyProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AtmosphereThickness",    "0.4"},
                                {"HorizonMultiplier",      "1"},
                                {"DuskHorizonMultiplier",  "1"},
                                {"NightHorizonMultiplier", "1"},
                                {"HorizonFadeSpeed",       "1"},
                                {"SunSize",                "0.4"},
                                {"SunStrength",            "0.5"},
                                {"SunSurroundSize",        "1"},
                                {"SunSurroundStrength",    "0.5"},
                                {"UpperSkyFadeSpeed",      "12"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\LAVAWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SWAMPWEATHER.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sky", "GcSkyProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AtmosphereThickness",    "0.4"},
                                {"HorizonMultiplier",      "1"},
                                {"DuskHorizonMultiplier",  "1"},
                                {"NightHorizonMultiplier", "1"},
                                {"HorizonFadeSpeed",       "1"},
                                {"SunSize",                "0.4"},
                                {"SunStrength",            "0.5"},
                                {"SunSurroundSize",        "1"},
                                {"SunSurroundStrength",    "0.5"},
                                {"UpperSkyFadeSpeed",      "12"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RADIOACTIVE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ColourModifiers", "GcWeatherColourModifiers.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ForceColour", "False"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERHAZARDS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Effects", "Effects"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "MODELS/EFFECTS/WEATHER/METEOR.SCENE.MBIN"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Effects", "EffectData", "Meteor"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "MODELS/EFFECTS/WEATHER/METEOR.SCENE.MBIN"},
                            }
                        },
                    }
                },
            }
        },
    }
}
