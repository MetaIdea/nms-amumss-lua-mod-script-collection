NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "__Bonus_5000%_INTERCEPTOR.pak",
["MOD_AUTHOR"]      = "Tuz1971",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.15",
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
                            ["SPECIAL_KEY_WORDS"] = {"StatsType", "Weapon_Laser_MiningBonus"},
                            ["SECTION_ACTIVE"] = {"2"},
                            ["SECTION_UP"] = 1,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "51"}
                            }
                        },
                    }
                }
            }
        }
    }
}