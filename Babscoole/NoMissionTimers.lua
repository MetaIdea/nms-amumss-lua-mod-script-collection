NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "NoMissionTimers.pak",
["MOD_AUTHOR"]    = "NooBzPoWaH",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "METADATA\SIMULATION\MISSIONS\TABLES\MISSIONTABLE.MBIN",
                        "METADATA\SIMULATION\MISSIONS\TABLES\BASECOMPUTERMISSIONTABLE.MBIN",
                        "METADATA\SIMULATION\MISSIONS\TABLES\SPACEPOIMISSIONTABLE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- {
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"SelectedOnBackOut", "False"}
                            -- }
                        -- },
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