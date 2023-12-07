NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyDamage.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.44",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA\REALITY\TABLES\DAMAGETABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/DAMAGETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- terrain damage
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "IMPACTDAMAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Damage", 100 }, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "IMPACTGROUND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Damage", 100 }, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "IMPACTSHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Damage", 100 }, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "IMPACTINSTANCE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Damage", 100 }, -- 30
                            }
                        },
                        -- asteroid damage
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "SMALLASTEROID" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Damage", 75 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "MEDIUMASTEROID" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Damage", 100 }, -- 15
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "LARGEASTEROID" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Damage", 125 }, -- 40
                            }
                        },
                    }
                },
            }
        }
    }
}
