--MUST obtain the TEXTURES folder from within the original mod .pak and place into the AMUMSS\\ModScript\\GlobalMEFTI folder when running this script.

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Spaceship Nuclear Rocket -Aurfram.pak",
["MOD_AUTHOR"]    = "Aurfram",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.51",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPROCKETS", "StatsType", "Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "650000"},
                            }
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPROCKETS", "StatsType", "Ship_Weapons_Guns_Range"},
							["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "50000000"},
                            }
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPROCKETS", "StatsType", "Ship_Weapons_Guns_Scale"},
							["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "25"},
                            }
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPROCKETS", "StatsType", "Ship_Weapons_Guns_Damage_Radius"},
							["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "150"},
                            }
                        },
                    }
                },
            }
        },
    }
}