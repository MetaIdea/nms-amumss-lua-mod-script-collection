NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "ExoSpeedIncrease_MECHchanges.pak",
["MOD_AUTHOR"]    = "TwistedViking",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.00",
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
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MechJetpackTurnSpeed",  "6"},
                                {"MechJetpackMaxSpeed",   "60"},
                                {"MechJetpackMaxUpSpeed", "60"},
                                {"MechJetpackDrainRate",  "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "BIKE"},
                                {"Name", "MED_BUGGY"},
                                {"Name", "TRUCK"},
                                {"Name", "WHEELEDBIKE"},
                                {"Name", "HOVERCRAFT"},
                                {"Name", "SUBMARINE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UnderwaterEngineMaxSpeed", "48"},
                                {"TopSpeedForward",          "48"},
                            }
                        },
                    }
                },
            }
        }
    }
}