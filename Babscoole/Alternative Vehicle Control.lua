NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Alternative Vehicle Control.pak",
["MOD_AUTHOR"]    = "Devilin Pixy",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.01.1",
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
                                {"VehicleAltControlScheme", "True"},
                            }
                        },
                    }
                },
            }
        },
    }
}
