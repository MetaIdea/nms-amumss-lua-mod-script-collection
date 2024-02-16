NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "BugFixes444.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Still there as of 4.47",
    ["NMS_VERSION"]     = "4.44",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA/SIMULATION/MISSIONS/NPCMISSIONTABLE.MBIN
                --
                -- have been fixed in 4.50
                -- {
                --     ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/NPCMISSIONTABLE.MBIN",
                --     ["EXML_CHANGE_TABLE"] = {
                --         {
                --             ["SPECIAL_KEY_WORDS"]  = { "Message", "UI_HIDE_SEEK_OBJ_TIP" },
                --             ["VALUE_MATCH"]        = "UI_HIDE_SEEK_OBJ_TIP",
                --             ["VALUE_CHANGE_TABLE"] = {
                --                 { "Message", "UI_HIDESEEK_OBJ1_MSG3" }, -- UI_HIDE_SEEK_OBJ_TIP
                --             },
                --         },
                --         {
                --             ["SPECIAL_KEY_WORDS"]  = { "Message", "UI_HIDE_SEEK_OBJ" },
                --             ["VALUE_MATCH"]        = "UI_HIDE_SEEK_OBJ",
                --             ["VALUE_CHANGE_TABLE"] = {
                --                 { "Message", "UI_HIDESEEK_OBJ1_MSG8" }, -- UI_HIDE_SEEK_OBJ
                --             },
                --         },
                --     }
                -- },
                --
                -- METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENSPEECHTABLE.MBIN
                --
                -- still there as of 4.50
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENSPEECHTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Text", "EXP_SETTLERS" },
                            ["VALUE_MATCH"]        = "EXP_SETTLERS",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Text", "EXP_SETTLER" }, -- EXP_SETTLERS
                            },
                        },
                    }
                },
            }
        }
    }
}
