NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "SensitivityFix.pak",
["MOD_AUTHOR"]    = "ItsOnlyTyrus",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterUnarmedCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HorizRotationAngleMaxPerFrame", "25"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRunCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HorizRotationAngleMaxPerFrame", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterIndoorCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HorizRotationAngleMaxPerFrame", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterAirborneCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HorizRotationAngleMaxPerFrame", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MechJetpackCam", "GcCameraFollowSettings.xml"},
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