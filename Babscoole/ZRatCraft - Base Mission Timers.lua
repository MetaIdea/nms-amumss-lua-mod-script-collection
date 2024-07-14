NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "ZRatCraft - Base Mission Timers.pak",
["MOD_AUTHOR"]    = "RatanKabidge",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "2.15",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\BASECOMPUTERMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Stage", "GcMissionSequenceWaitRealTime.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Time", "@/9"}
                            }
                        },
                    }
                },
            }
        }
    }
}