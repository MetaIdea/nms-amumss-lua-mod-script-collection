NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_CustomFlightHover.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "4.64",
    ["MOD_DESCRIPTION"] = "Custom Flight Hover",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control","SpaceEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSpeed", 0.0001},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control","PlanetEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSpeed", 0.0001},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control","CombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSpeed", 0.0001},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control","AtmosCombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSpeed", 0.0001},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight","SpaceEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSpeed", 0.0001},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight","PlanetEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSpeed", 0.0001},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight","CombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSpeed", 0.0001},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight","AtmosCombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSpeed", 0.0001},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy","SpaceEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSpeed", 0.0001},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy","PlanetEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSpeed", 0.0001},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy","CombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSpeed", 0.0001},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy","AtmosCombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSpeed", 0.0001},
                            }
                        },
                    }
                },
            },
        },
    }
}