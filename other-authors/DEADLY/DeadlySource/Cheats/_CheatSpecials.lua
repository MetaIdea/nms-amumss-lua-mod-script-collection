NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "CheatSpecials.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.44",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "NAVDATA", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "AmountMin", "400" },
                                { "AmountMax", "400" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "NAVDATA", "Currency", "Nanites" },
                            ["VALUE_MATCH"]        = "Nanites",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Currency", "Specials" },
                            }
                        },
                    }
                },
            }
        },
    }
}
