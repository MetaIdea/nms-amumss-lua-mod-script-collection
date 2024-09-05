NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_Mission_Timer_Redux_Scientist.pak",
["MOD_AUTHOR"]    = "NooBzPoWaH",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.+",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "METADATA\SIMULATION\MISSIONS\TABLES\MISSIONTABLE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Stage", "GcMissionSequenceWaitRealTime.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = "60",
                            ["VALUE_MATCH_OPTIONS"] = ">=",
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