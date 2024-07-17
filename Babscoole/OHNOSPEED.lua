NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "OHNOSPEED.pak",
["MOD_AUTHOR"]    = "AlexMuseMatrix",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.23",
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
                                {"Name", "MECH"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UnderwaterEngineMaxSpeed", "500"},
                                {"TopSpeedForward",          "500"},
                            }
                        },
                    }
                },
            }
        }
    }
}