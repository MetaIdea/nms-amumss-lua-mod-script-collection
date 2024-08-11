NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "NoMissionTimers.pak",
["MOD_AUTHOR"]    = "Fae",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "2.62",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "METADATA\SIMULATION\MISSIONS\MISSIONTABLE.MBIN",
                        "METADATA\SIMULATION\MISSIONS\BASECOMPUTERMISSIONTABLE.MBIN",
                        "METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Stage", "GcMissionSequenceWaitRealTime.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Time", "0"}
                            }
                        },
                    }
                },
            }
        }
    }
}