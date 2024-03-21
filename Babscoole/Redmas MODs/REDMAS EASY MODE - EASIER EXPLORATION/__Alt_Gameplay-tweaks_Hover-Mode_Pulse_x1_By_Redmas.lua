NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "__Alt_Gameplay-tweaks_Hover-Mode_Pulse_x1_By_Redmas.pak",
["MOD_DESCRIPTION"]         = "REDMAS EASY MODE - EASIER EXPLORATION",
["MOD_AUTHOR"]              = "Redmas",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "3.99",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HoverTakeoffHeight",    "590"},
                                {"HoverMinSpeed",         "0.1"},
                                {"CameraPostWarpFov",     "120"},
                                {"MiniWarpLinesNum",      "0"},
                                {"MiniWarpSpeed",         "30000"},
                                {"LandGroundTakeOffTime", "0.2"},
                                {"ShakePowerScaler",      "0.07"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0.1"},
                            }
                        },
                    }
                }
            }
        }
    }
}