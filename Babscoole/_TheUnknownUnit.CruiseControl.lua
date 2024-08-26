NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_TheUnknownUnit.CruiseControl.pak",
["MOD_AUTHOR"]              = "TheUnknownUnit",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "2.34",
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
                                {"CollisionAlignStrength",       "0"},
                                {"GunOffset3rdPersonMultiplier", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Control",      "SpaceEngine"},
                                {"Control",      "CombatEngine"},
                                {"Control",      "AtmosCombatEngine"},
                                {"ControlLight", "SpaceEngine"},
                                {"ControlLight", "CombatEngine"},
                                {"ControlLight", "AtmosCombatEngine"},
                                {"ControlHeavy", "SpaceEngine"},
                                {"ControlHeavy", "CombatEngine"},
                                {"ControlHeavy", "AtmosCombatEngine"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Falloff", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Control",      "PlanetEngine"},
                                {"ControlLight", "PlanetEngine"},
                                {"ControlHeavy", "PlanetEngine"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                                {"Falloff",  "0"},
                            }
                        },
                    }
                }
            }
        }
    }
}