NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_Patch.AyyMang.E3GalacticMapVanillaStars.pak",
["MOD_AUTHOR"]              = "AyyMang",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.72",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SolarInfoPanelWidth",  "2048"},
                                {"SolarInfoPanelHeight", "1024"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SolarInfoPanelOffset", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "90"},
                                {"y", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SolarInfoPanelLineOffset", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "36"},
                                {"y", "56"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StarSize", "Yellow"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "1.8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StarSize", "Green"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "1"},
                                {"y", "2.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StarSize", "Blue"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "1"},
                                {"y", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StarSize", "Red"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "1"},
                                {"y", "3.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters", "PlanetParameters"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FirstOrbitRadiusMin",  "20"},
                                {"FirstOrbitRadiusMax",  "60"},
                                {"OrbitRadiusOffsetMin", "20"},
                                {"OrbitRadiusOffsetMax", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters", "PlanetRadii"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Large",  "10"},
                                {"Medium",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SystemTilt",  "30"},
                            }
                        },
                    }
                },
            }
        },
    }
}
