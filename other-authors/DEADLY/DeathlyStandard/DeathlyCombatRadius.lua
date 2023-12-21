NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeathlyCombatRadius.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SpaceBattleRadius",                50000 }, -- 13500
                                { "SpaceCombatRadius",                50000 }, -- 5000
                                { "FreighterBattleRadius",            50000 }, -- 5000
                                { "SpaceBattleAnyHostileShipsRadius", 50000 }, -- 10000
                            }
                        },
                    }
                },
            }
        }
    }
}
