NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlySpawnCount.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- GCGAMEPLAYGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "EarlyPiratesToBeKilled", 5 }, -- 10
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PirateEarlySpawnChances" },
                            ["LINE_OFFSET"]         = "+3",
                            ["VALUE_MATCH"]         = "0.2",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "IGNORE", 0.5 }, -- 0.2
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PirateEarlySpawnChances" },
                            ["LINE_OFFSET"]         = "+4",
                            ["VALUE_MATCH"]         = "0.5",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "IGNORE", 0.8 }, -- 0.5
                            }
                        },
                    }
                },
                --
                -- METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PirateSpawns", "Count" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", 1 },
                                { "y", 2 },
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PirateSpawns", "Count", "Count" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", 1 },
                                { "y", 3 },
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PlanetaryPirateFlybySpawns", "Count" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", 3 }, -- 1
                                { "y", 6 }, -- 3
                            },
                        },
                    }
                },
                --
                -- METADATA/SIMULATION/MISSIONS/NPCMISSIONTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/SIMULATION/MISSIONS/NPCMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- spawn all pirate at once, without reinforcements
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
