NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "PirateMissionRedux.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Spawn all pirate at once, without reinforcements for pirate missions (civil space station).",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/SIMULATION/MISSIONS/NPCMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "AttackDefinition", "PIRATE" },
                            ["VALUE_MATCH"]        = "3",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "NumSquads", 1 },
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "TargetStat", "MISSION_PIRATES" },
                            ["VALUE_MATCH"]        = "6",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountPastTarget", 1 },
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "TargetStat", "MISSION_PIRATES" },
                            ["VALUE_MATCH"]        = "9",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountPastTarget", 1 },
                            },
                        },
                    }
                },
            }
        }
    }
}
