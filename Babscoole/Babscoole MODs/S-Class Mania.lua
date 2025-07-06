NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "S-Class Mania",
["MOD_DESCRIPTION"] = "All Generated Ships, Multi tools, freighters, are S-class with extremely high stats",
["MOD_AUTHOR"]      = "pyronoxomega and Babscoole",
["NMS_VERSION"]     = "5.73",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "0"},
                                {"B", "0"},
                                {"A", "0"},
                                {"S", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"BaseStatID", "FREI_HYPERDRIVE"},
                                {"BaseStatID", "FREI_FLEET"},
                                {"BaseStatID", "SHIP_DAMAGE"},
                                {"BaseStatID", "SHIP_SHIELD"},
                                {"BaseStatID", "SHIP_HYPERDRIVE"},
                                {"BaseStatID", "ALIEN_SHIP"},
                                {"BaseStatID", "WEAPON_DAMAGE"},
                                {"BaseStatID", "WEAPON_MINING"},
                                {"BaseStatID", "WEAPON_SCAN"},
                            },
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "999"},
                                {"Max", "999"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData", "S", "GcInventoryGenerationBaseStatClassData"},
                            ["SECTION_ACTIVE"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "990"},
                                {"Max", "990"},
                            },
                        },
                    }
                }
            }
        }
    }
}