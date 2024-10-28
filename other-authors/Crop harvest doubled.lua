NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "Crop harvest doubled.pak",
    ["MOD_AUTHOR"] = "liuyueowo",
    ["LUA_AUTHOR"] = "liuyueowo",
    ["NMS_VERSION"] = "5.21",
    ["MOD_DESCRIPTION"] = "Here are the default values from the original version. If you wish to customize the values, please modify the numbers following AmountMin and AmountMax accordingly.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANT_PEARL", "ID", "ALBUMENPEARL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"AmountMin", "1"},
                                {"AmountMax", "1"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANT_GRAV", "ID", "GRAVBALL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"AmountMin", "1"},
                                {"AmountMax", "1"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANT_SACVENOM", "ID", "SACVENOM"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"AmountMin", "1"},
                                {"AmountMax", "1"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANT_BARREN", "ID", "PLANT_DUST"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"AmountMin", "100"},
                                {"AmountMax", "100"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANT_LUSH", "ID", "PLANT_LUSH"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"AmountMin", "25"},
                                {"AmountMax", "25"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANT_CREATURE", "ID", "CREATURE1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"AmountMin", "25"},
                                {"AmountMax", "25"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANT_POOP", "ID", "PLANT_POOP"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"AmountMin", "25"},
                                {"AmountMax", "25"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANT_RADIO", "ID", "PLANT_RADIO"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"AmountMin", "50"},
                                {"AmountMax", "50"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANT_SCORCHED", "ID", "PLANT_HOT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"AmountMin", "50"},
                                {"AmountMax", "50"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANT_SNOW", "ID", "PLANT_SNOW"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"AmountMin", "50"},
                                {"AmountMax", "50"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANT_TOXIC", "ID", "PLANT_TOXIC"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"AmountMin", "50"},
                                {"AmountMax", "50"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANT_NIP", "ID", "NIPNIPBUDS"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"AmountMin", "1"},
                                {"AmountMax", "1"},
                            },
                        },
                    },
                },
            },
        },
    },
}