NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_JetpackNoConsumeFuel.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "4.64",
    ["MOD_DESCRIPTION"] = "Jetpack no consume fuel",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]	= {
                        { --JetpackTank
                            ["SPECIAL_KEY_WORDS"] = {"ID", "JET1","StatsType","Suit_Jetpack_Tank"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus", 9999},    -- 2.75 ; Jetpack tank size
                            },
                        },
                        { --JetpackDrain
                            ["SPECIAL_KEY_WORDS"] = {"ID", "JET1","StatsType","Suit_Jetpack_Drain"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus", 1},       --1; Life support drain during jetpack use
                            },
                        },
                        { --JetpackRegen
                            ["SPECIAL_KEY_WORDS"] = {"ID", "JET1","StatsType","Suit_Jetpack_Refill"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus", 9999},    --1; 7x tank size = instant refill
                            },
                        },
                    }
                },
            },
        },
    }
}