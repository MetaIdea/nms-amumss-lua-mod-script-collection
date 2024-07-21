NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "ExoSpeedIncrease.pak",
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