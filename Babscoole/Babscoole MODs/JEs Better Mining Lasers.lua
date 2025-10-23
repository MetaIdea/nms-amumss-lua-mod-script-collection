-- Original game settings in comments
L_Bonus = 40  -- Default is 20
S_Bonus = 75  -- Default is 40


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "JEs Better Mining Lasers",
["MOD_DESCRIPTION"] = "Adjusts mining beam damage so it isn't as impacted by having Enemy Strength set at higher difficulty",
["MOD_AUTHOR"]      = "Jaggid Edje and Babscoole",
["NMS_VERSION"]     = "6.10",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "LASER", "StatsType", "Weapon_Laser_Damage"}, -- Mining Laser
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", L_Bonus}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SENT_LASER", "StatsType", "Weapon_Laser_Damage"}, -- Sentinel Mining Laser
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", L_Bonus}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SOUL_LASER", "StatsType", "Weapon_Laser_Damage"}, -- Animus Beam
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", S_Bonus}
                            }
                        }
                    }
                }
            }
        }
    }
}