Author = "Jaggid Edje"
ModName = "Better_MiningLaser"
ModNameSub = "JE"
BaseDescription = "Adjusts mining beam damage so it isn't as impacted by having Enemy Strength set at higher difficulty"
GameVersion = "4.36"
-- ModVersion = "v4.36"
FileSource1 = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

-- Original game settings in comments
L_Bonus = 40     -- Default is 20
S_Bonus = 75	-- Default is 40


NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = ModNameSub.."_"..ModName..".pak",
    ["MOD_DESCRIPTION"]    = BaseDescription,
    ["MOD_AUTHOR"]        = Author,
    ["NMS_VERSION"]        = GameVersion,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = FileSource1,
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "LASER","StatsType","Weapon_Laser_Damage"}, -- Mining Laser
                            ["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", L_Bonus}
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SENT_LASER","StatsType","Weapon_Laser_Damage"}, -- Sentinel Mining Laser
                            ["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", L_Bonus}
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SOUL_LASER","StatsType","Weapon_Laser_Damage"}, -- Animus Beam
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