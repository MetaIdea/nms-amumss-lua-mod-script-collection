NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "SensitivityFixUpdated.pak",
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