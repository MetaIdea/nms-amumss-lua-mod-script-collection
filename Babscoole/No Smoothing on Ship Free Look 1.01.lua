NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "No Smoothing on Ship Free Look 1.0.pak",
["MOD_AUTHOR"]    = "OasisRoot",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.28",
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
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ShipCamSpringStrengthMin", "0"},
                                {"ShipCamSpringStrengthMax", "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}