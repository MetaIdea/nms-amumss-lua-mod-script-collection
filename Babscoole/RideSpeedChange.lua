Multiplier = 2

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "RideSpeedChange.pak",
["MOD_AUTHOR"]      = "lMonk and thelastguy",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.72",
["MOD_DESCRIPTION"] = "Increase the walk and run speed of creatures while being ridden",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["MATH_OPERATION"] = "*",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RideSpeedSlow", Multiplier},  --Org 0.5
                                {"RideSpeedFast", Multiplier},  --Org 2
                            }
                        },
                    }
                },
            }
        }
    }
}