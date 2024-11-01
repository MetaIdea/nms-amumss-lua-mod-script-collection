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
                        -- new typos since 5.0, may be 4.60, idk
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Text", "WAR_SETTLERS" },
                            ["VALUE_MATCH"]        = "WAR_SETTLERS",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Text", "WAR_SETTLER" }, -- WAR_SETTLERS
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Text", "TRA_SETTLERS" },
                            ["VALUE_MATCH"]        = "TRA_SETTLERS",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Text", "TRA_SETTLER" }, -- TRA_SETTLERS
                            },
                        },
                    }
                },

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
                        -- regexp: name="OSDMessage" value="UI_.*_OBJ[0-9]+"
                        { -- Hire a base Scientist -> COORDINATES RECEIVED
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "SCIENTIST1", "Name", "BRIEF_SE_SCIENTIST1" },
                            ["VALUE_MATCH"]        = "UI_OVERSEER5_OBJ1",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "OSDMessage", "UI_COORDINATES_OSD" }, -- UI_OVERSEER5_OBJ1
                            },
                        },
                        { -- Hire an Exocraft Technician -> COORDINATES RECEIVED
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "EXOTUT1", "Name", "BRIEF_SE_EXOTUT1" },
                            ["VALUE_MATCH"]        = "UI_EXOTUT1_OBJ2",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "OSDMessage", "UI_COORDINATES_OSD" }, -- UI_EXOTUT1_OBJ2
                            },
                        },
                        { -- Hire a base Farmer -> COORDINATES RECEIVED
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "FARMER1", "Name", "BRIEF_SE_FARMER1" },
                            ["VALUE_MATCH"]        = "UI_FARMER1_OBJ2",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "OSDMessage", "UI_COORDINATES_OSD" }, -- UI_FARMER1_OBJ2
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
                { -- METADATA/SIMULATION/MISSIONS/TABLES/MULTIPLAYERMISSIONTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/MULTIPLAYERMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        { -- regexp: Property name="OSDMessage" value=".*_MARKER"
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "OSDMessage", "UI_MP_PIRATES_MARKER" },
                                { "OSDMessage", "UI_WIKI_EX_YELLOW_MARKER" },
                                { "OSDMessage", "UI_WIKI_EX_RED_MARKER" },
                                { "OSDMessage", "UI_WIKI_EX_GREEN_MARKER" },
                                { "OSDMessage", "UI_WIKI_EX_BLUE_MARKER" },
                                { "OSDMessage", "UI_WIKI_PLANT_POOP_MARKER" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "OSDMessage", "UI_COORDINATES_OSD" },
                            },
                        },
                    }
                },
                { -- METADATA/SIMULATION/MISSIONS/TABLES/COREMISSIONTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/COREMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        --#region Invalid marker names
                        -- regexp: Property name="MarkerLabel" value="UI_CORE_HOLOHUB_OSD2"
                        { -- Signal Match Detected -> Speak to Artemis
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "MissionID", "ACT1_STEP4", "Name", "SE_ACT1_STEP4_PRIMARY" },
                                { "MissionID", "ACT1_STEP5", "Name", "SE_ACT1_STEP5_PRIMARY" },
                            },
                            ["VALUE_MATCH"]        = "UI_CORE_HOLOHUB_OSD2",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MarkerLabel", "UI_CORE_HOLOHUB_MSG3_ART" }, -- UI_CORE_HOLOHUB_OSD2
                            },
                        },
                        { -- Signal Match Detected -> Speak to Apollo
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "ACT1_STEP8", "Name", "SE_ACT1_STEP8_PRIMARY" },
                            ["VALUE_MATCH"]        = "UI_CORE_HOLOHUB_OSD2",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MarkerLabel", "UI_CORE_ACT2_STEP13_MSG" }, -- UI_CORE_HOLOHUB_OSD2
                            },
                        },
                        --#endregion

                        -- regexp: name="OSDMessage" value="UI_.*_OBJ[0-9]+"
                        { -- Locate Apollo's contact -> COORDINATES RECEIVED
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "MissionID", "ACT1_STEP9", "Name", "SE_ACT1_STEP9_BASE_NPC" },
                                { "MissionID", "ACT1_STEP9", "Name", "SE_ACT1_STEP9_BASE_NPC_ALT" },
                            },
                            ["VALUE_MATCH"]        = "UI_CORE_ACT1_STEP9_OBJ1",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "OSDMessage", "UI_COORDINATES_OSD" }, -- UI_CORE_ACT1_STEP9_OBJ1
                            },
                        },
                    }
                },
                --#endregion

                --#region Using a chart shows the message "Inventory Full"
                { -- METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "ID", "CHART_HIVE" },
                                { "ID", "NAV_DATA_DROP" },
                                { "ID", "TUT_STARMAP" },
                                { "ID", "A1S6_STARMAP" },
                            },
                            ["VALUE_MATCH"]        = "INTRCT_NOROOM_L",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RewardFailedLocID", "" }, -- INTRCT_NOROOM_L
                            },
                        },
                    }
                },
                --#endregion
            }
        }
    }
}
