NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]   	  = "_Redmas_Water_Reflections.pak",
    ["MOD_DESCRIPTION"]   = "Make2 water waves and foams look more natural",
    ["MOD_AUTHOR"]        = "Redmas",
	["LUA_AUTHOR"]        = "Hypn0tick",
    ["NMS_VERSION"]       = "3.99",
    ["MODIFICATIONS"]     = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCWATERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"UseNewWater","True"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"WaveHeight","0.5"},
                                {"WaveFrequency","0.21"},
                                {"FresnelAlpha","5E-05"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WaterHeavyAirColour","Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"A","0.2"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WaterDataDay","GcPlanetWaterData.xml"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"FoamFadeHeight","0"},
                                {"Foam1Scale","8E-09"},
                                {"Foam1Speed","2E-05"},
                                {"Foam2Scale","5E-09"},
                                {"Foam2Speed","0.0004"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"HeavyAir","GcPlanetHeavyAirData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Colour1"},
                            ["REPLACE_TYPE"] = {"ALL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"A","0"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"HeavyAir","GcPlanetHeavyAirData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Colour2"},
                            ["REPLACE_TYPE"] = {"ALL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"A","0"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WaterFogColourNear","Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"A","0"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WaterFogColourFar","Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"A","0"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WaterColourBase","Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"A","0"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WaterColourAdd","Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"A","0"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FoamColour","Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"A","0"}
                            }
                        }
                    }
                }
            }
        }
    }
}