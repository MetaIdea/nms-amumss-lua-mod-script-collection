NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "FasterResourceMining3.85a.pak",
["MOD_AUTHOR"]      = "ripshawe",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "3.85a",
["MOD_DESCRIPTION"] = "",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StatsType", "Weapon_Laser_Mining_Speed"},
                            ["SECTION_ACTIVE"] = {"2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "0.25"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StatsType", "Weapon_Laser_MiningBonus"},
                            ["SECTION_ACTIVE"] = {"2"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "16"}
                            }
                        },
                    }
                }
            }
        }
    }
}