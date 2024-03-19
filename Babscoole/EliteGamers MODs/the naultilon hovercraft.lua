NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "the naultilon hovercraft.pak",
["MOD_AUTHOR"]              = "EliteGamers",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.08",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
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
                                {"Name", "MED_BUGGY"},
                                {"Name", "TRUCK"},
                                {"Name", "WHEELEDBIKE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VehicleGravityWater", "17.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUBMARINE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumWheels",       "4"},
                                {"WheelRadius",     "1"},
                                {"TopSpeedForward", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MECH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VehicleGravityWater", "0.01"},
                            }
                        },
                    }
                },
            }
        },
    }
}
