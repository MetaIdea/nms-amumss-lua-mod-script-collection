NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Gundam.pak",
["MOD_AUTHOR"]    = "Burryaga",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.70",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCVEHICLEGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MechJetpackTurnSpeed",        "2.5"},
                                {"MechJetpackForce",            "200"},
                                {"MechJetpackBrake",            "5"},
                                {"MechJetpackMaxSpeed",         "100"},
                                {"MechJetpackMaxUpSpeed",       "60"},
                                {"MechJetpackUpForce",          "150"},
                                {"MechJetpackAvoidGroundForce", "150"},
                                {"MechCameraOffsetAmount",      "0"},
                                {"MechJetpackDrainRate",        "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MECH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TopSpeedForward", "6"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT\ENTITIES\MECH.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "WALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "FASTWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "2.4"},
                            }
                        },
                    }
                },
            }
        }
    }
}