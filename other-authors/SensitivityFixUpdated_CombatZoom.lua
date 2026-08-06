NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "SensitivityFixUpdated_CombatZoom.pak",
["MOD_AUTHOR"]    = "ItsOnlyTyrus, updated by GunnerSabotTonk",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.45",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CharacterUnarmedCam"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HorizRotationAngleMaxPerFrame", "25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CharacterRunCam"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HorizRotationAngleMaxPerFrame", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CharacterIndoorCam"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HorizRotationAngleMaxPerFrame", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CharacterAirborneCam"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HorizRotationAngleMaxPerFrame", "20"},
                            }
                        },
                        {
						     ["PRECEDING_KEY_WORDS"] = {"CharacterMeleeBoostCam"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HorizRotationAngleMaxPerFrame", "0"},
                            }
                        },
                        {
						     ["PRECEDING_KEY_WORDS"] = {"CharacterRocketBootsCam"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HorizRotationAngleMaxPerFrame", "20"},
                            }
                        },
                        {
						     ["PRECEDING_KEY_WORDS"] = {"CharacterFallingCam"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HorizRotationAngleMaxPerFrame", "20"},
                            }
                        },
                        {
						     ["PRECEDING_KEY_WORDS"] = {"CharacterCombatCam"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance", "4.5"},
								{"BackMaxDistance", "6"},
                            }
                        },
                        {
						     ["PRECEDING_KEY_WORDS"] = {"CharacterAirborneCombatCam"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HorizRotationAngleMaxPerFrame", "25"},
                            }
                        },
                        {
						     ["PRECEDING_KEY_WORDS"] = {"CharacterRocketBootsCam"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HorizRotationAngleMaxPerFrame", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MechJetpackCam"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HorizRotationAngleMaxPerFrame", "15"},
                            }
                        },
                    }
                }
            }
        }
    }
}