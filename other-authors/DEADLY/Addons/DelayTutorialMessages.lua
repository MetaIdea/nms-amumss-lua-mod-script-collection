DELAY_SECONDS = 7200

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "DelayTutorialMessages.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TUTORIALMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "INV_HINT_MAP", "Stage", "GcMissionSequenceWait.xml" },
                            ["VALUE_MATCH"]        = "90",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Time", DELAY_SECONDS }, -- 90
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "ROBOCHART_HINT", "Stage", "GcMissionSequenceWait.xml" },
                            ["VALUE_MATCH"]        = "210",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Time", DELAY_SECONDS }, -- 210
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "CHART_T_HINT", "Stage", "GcMissionSequenceWait.xml" },
                            ["VALUE_MATCH"]        = "60",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Time", DELAY_SECONDS }, -- 60
                            },
                        },
                    }
                },
            }
        }
    }
}
