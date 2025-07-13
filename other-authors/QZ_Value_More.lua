NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "QZ_Value_More.pak",
    ["MOD_AUTHOR"] = "BCC",
    ["LUA_AUTHOR"] = "BCC",
    ["MOD_DESCRIPTION"] = "Increases the value of quartzite and it's activated version, as well as making them make more materials when refining than indium.",
    ["NMS_VERSION"] = "5.71",
    ["MODIFICATIONS"] = {{
        ["MBIN_CHANGE_TABLE"] = {
            {
                ["MBIN_FILE_SOURCE"] = [[METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN]],
                ["EXML_CHANGE_TABLE"] = {
                    {
                        ["SPECIAL_KEY_WORDS"] = {"Name", "UI_PURPLE2_NAME"},
                        ["VALUE_CHANGE_TABLE"] = {
                            {"BaseValue", "264"},  -- Original value was 132
                        }
                    },
                    {
                        ["SPECIAL_KEY_WORDS"] = {"Name", "UI_EX_PURPLE_NAME"},
                        ["VALUE_CHANGE_TABLE"] = {
                            {"BaseValue", "330"},  -- Original value was 165
                        }
                    }
                }
            },
            {
                ["MBIN_FILE_SOURCE"] = [[METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN]],
                ["EXML_CHANGE_TABLE"] = {
                    {
                        ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_340"}, -- 2 Quartzite -> 4 Chromatic Metal by default
                        ["PRECEDING_KEY_WORDS"] = {"Result"},
                        ["VALUE_CHANGE_TABLE"] = {
                            {"Amount", "6"},  -- Original value was 4
                        }
                    },
                    {
                        ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_342"}, -- 1 Ferrite Dust + 1 Quartzite -> 4 Magnetised Ferrite by default
                        ["PRECEDING_KEY_WORDS"] = {"Result"},
                        ["VALUE_CHANGE_TABLE"] = {
                            {"Amount", "6"},  -- Original value was 4
                        }
                    },
                    {
                        ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_343"}, -- 1 Pure Ferrite + 1 Quartzite -> 4 Chromatic Metal by default
                        ["PRECEDING_KEY_WORDS"] = {"Result"},
                        ["VALUE_CHANGE_TABLE"] = {
                            {"Amount", "6"},  -- Original value was 4
                        }
                    },
                    {
                        ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_344"}, -- 1 Gold + 1 Silver + 1 Quartzite -> 30 Chromatic Metal by default
                        ["PRECEDING_KEY_WORDS"] = {"Result"},
                        ["VALUE_CHANGE_TABLE"] = {
                            {"Amount", "50"},  -- Original value was 30
                        }
                    },
                    {
                        ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_337"}, -- 1 Activated Quartzite -> 4 Chromatic Metal by default
                        ["PRECEDING_KEY_WORDS"] = {"Result"},
                        ["VALUE_CHANGE_TABLE"] = {
                            {"Amount", "6"},  -- Original value was 4
                        }
                    },
                    {
                        ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_338"}, -- 1 Ferrite Dust + 1 Activated Quartzite -> 8 Magnetised Ferrite by default
                        ["PRECEDING_KEY_WORDS"] = {"Result"},
                        ["VALUE_CHANGE_TABLE"] = {
                            {"Amount", "12"},  -- Original value was 8
                        }
                    },
                    {
                        ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_339"}, -- 1 Pure Ferrite + 1 Activated Quartzite -> 8 Chromatic Metal by default
                        ["PRECEDING_KEY_WORDS"] = {"Result"},
                        ["VALUE_CHANGE_TABLE"] = {
                            {"Amount", "12"},  -- Original value was 8
                        }
                    }
                }
            }
        }
    }}
}