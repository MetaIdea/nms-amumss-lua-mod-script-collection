NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "DRIVE ON WATER.pak",
["MOD_AUTHOR"]    = "EliteGamers",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.08",
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
                                {"Name", "MED_BUGGY"},
                                {"Name", "TRUCK"},
                                {"Name", "WHEELEDBIKE"},
                            },
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VehicleGravity",    "17.5"},
                                {"DriveOnTopOfWater", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MECH"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VehicleGravity", "17.5"},
                            }
                        },
                    }
                },
            }
        },
    }
}
