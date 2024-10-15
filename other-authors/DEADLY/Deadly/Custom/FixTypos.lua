NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "FixTypos.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fixes variable name typos in quests, dialogue, etc.",
    ["NMS_VERSION"]     = "5.10",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- METADATA/SIMULATION/MISSIONS/TABLES/NPCMISSIONTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/NPCMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- have been fixed in 4.50
                        -- {
                        --     ["SPECIAL_KEY_WORDS"]  = { "Message", "UI_HIDE_SEEK_OBJ_TIP" },
                        --     ["VALUE_MATCH"]        = "UI_HIDE_SEEK_OBJ_TIP",
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         { "Message", "UI_HIDESEEK_OBJ1_MSG3" }, -- UI_HIDE_SEEK_OBJ_TIP
                        --     },
                        -- },
                        -- and this is not; still exists in 5.0.5
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "HIDE_SEEK_TIMED", "Message", "UI_HIDE_SEEK_OBJ" },
                            ["VALUE_MATCH"]        = "UI_HIDE_SEEK_OBJ",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Message", "UI_HIDESEEK_OBJ1_MSG8" }, -- UI_HIDE_SEEK_OBJ
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "HIDE_SEEK_TIMED", "Message", "UI_HIDE_SEEK_OBJ3_TIP" },
                            ["VALUE_MATCH"]        = "UI_HIDE_SEEK_OBJ3_TIP",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Message", "UI_HIDESEEK_OBJ1_MSG3" }, -- UI_HIDE_SEEK_OBJ3_TIP
                            },
                        },
                    }
                },
                { -- METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENSPEECHTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENSPEECHTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        { -- still there as of 4.50 and still there as of 5.0
                            ["SPECIAL_KEY_WORDS"]  = { "Text", "EXP_SETTLERS" },
                            ["VALUE_MATCH"]        = "EXP_SETTLERS",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Text", "EXP_SETTLER" }, -- EXP_SETTLERS
                            },
                        },
                    }
                },

                --#region New typos since 5.0, may be 4.6, idk
                { -- METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENSPEECHTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENSPEECHTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Text", "WAR_SETTLERS" },
                            ["VALUE_MATCH"]        = "WAR_SETTLERS",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Text", "WAR_SETTLER" }, -- WAR_SETTLERS
                            },
                        },
                    }
                },
                { -- METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENSPEECHTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENSPEECHTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Text", "TRA_SETTLERS" },
                            ["VALUE_MATCH"]        = "TRA_SETTLERS",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Text", "TRA_SETTLER" }, -- TRA_SETTLERS
                            },
                        },
                    }
                },
                --#endregion

                --#region OSD issues
                { -- METADATA/SIMULATION/SCANNING/SCANEVENTTABLETUTORIAL.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SCANNING/SCANEVENTTABLETUTORIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Name", "RUIN_FAR" },
                            ["VALUE_MATCH"]        = "SIGNAL_UNKNOWN",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "OSDMessage", "UI_SIGNAL_TREASURERUIN" }, -- SIGNAL_UNKNOWN
                            },
                        },
                    }
                },
                { -- METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Name", "RUIN" },
                            ["VALUE_MATCH"]        = "SIGNAL_UNKNOWN",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "OSDMessage", "UI_SIGNAL_TREASURERUIN" }, -- SIGNAL_UNKNOWN
                            },
                        },
                    }
                },
                { -- METADATA/SIMULATION/MISSIONS/TABLES/MISSIONTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/MISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        { -- Return to the Technician
                            ["SPECIAL_KEY_WORDS"]  = { "ObjectiveID", "UI_EXOTUT_RET_OSD" },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "UI_EXOTUT_RET_OSD",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "ObjectiveID", "MISSION_COST_NOCOST_VEHICLE" }, -- UI_EXOTUT_RET_OSD
                            },
                        },
                        { -- Return to the Farmer
                            ["SPECIAL_KEY_WORDS"]  = { "ObjectiveID", "UI_FARMER_RET_OSD" },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "UI_FARMER_RET_OSD",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "ObjectiveID", "MISSION_COST_NOCOST_FARMER" }, -- UI_FARMER_RET_OSD
                            },
                        },
                        { -- Return to the Armourer
                            ["SPECIAL_KEY_WORDS"]  = { "ObjectiveID", "UI_WEAPGUY_RET_OSD" },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "UI_WEAPGUY_RET_OSD",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "ObjectiveID", "MISSION_COST_NOCOST_WEAPONS" }, -- UI_WEAPGUY_RET_OSD
                            },
                        },
                        { -- Return to the Scientist
                            ["SPECIAL_KEY_WORDS"]  = { "ObjectiveID", "UI_SCIENTIST_RET_OSD" },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "UI_SCIENTIST_RET_OSD",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "ObjectiveID", "MISSION_COST_NOCOST_SCIENCE" }, -- UI_SCIENTIST_RET_OSD
                            },
                        },
                        { -- Return to the Overseer
                            ["SPECIAL_KEY_WORDS"]  = { "ObjectiveID", "UI_OVERSEER_RET_OSD" },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "UI_OVERSEER_RET_OSD",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "ObjectiveID", "UI_COMM_RET_OBJ" }, -- UI_OVERSEER_RET_OSD
                            },
                        },
                    }
                },
                { -- METADATA/SIMULATION/MISSIONS/TABLES/RECURRINGMISSIONTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/RECURRINGMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        { -- Return to the Farmer
                            ["SPECIAL_KEY_WORDS"]  = { "ObjectiveID", "UI_FARMER_RET_OSD" },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "UI_FARMER_RET_OSD",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "ObjectiveID", "MISSION_COST_NOCOST_FARMER" }, -- UI_FARMER_RET_OSD
                            },
                        },
                        { -- Return to the Overseer
                            ["SPECIAL_KEY_WORDS"]  = { "ObjectiveID", "UI_OVERSEER_RET_OSD" },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "UI_OVERSEER_RET_OSD",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "ObjectiveID", "UI_COMM_RET_OBJ" }, -- UI_OVERSEER_RET_OSD
                            },
                        },
                    }
                },
                --#endregion
            }
        }
    }
}
