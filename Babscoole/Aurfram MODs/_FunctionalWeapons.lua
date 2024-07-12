NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_FunctionalWeapons.pak",
["MOD_AUTHOR"]    = "Aufram",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.72",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPROCKETS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TechnologyCategory", "AllShips"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "SHIPROCKETS", "StatsType", "Ship_Weapons_Guns_Rate"},
                                {"ID", "SHIPROCKETS", "StatsType", "Ship_Weapons_Guns_BulletsPerShot"},
                            },
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "SHIPROCKETS", "StatsType", "Ship_Weapons_Guns_Dispersion"},
                                {"ID", "SHIPROCKETS", "StatsType", "Ship_Weapons_Guns_HeatTime"},
                            },
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "16"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPROCKETS", "StatsType", "Ship_Weapons_Guns_Damage"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1024"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "RAILGUN", "StatsType", "Weapon_Laser_HeatTime"},
                                {"ID", "RAILGUN", "StatsType", "Weapon_Laser_ReloadTime"},
                                {"ID", "RAILGUN", "StatsType", "Weapon_Laser_ChargeTime"},
                                {"ID", "RAILGUN", "StatsType", "Weapon_Laser_Recoil"},
                                {"ID", "RAILGUN", "StatsType", "Weapon_Laser_Drain"},
                            },
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "RAILGUN", "StatsType", "Weapon_Laser_Damage"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "RAILGUN", "StatsType", "Weapon_Laser_Drain"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Stun" />
          </Property>
          <Property name="Bonus" value="1" />
          <Property name="Level" value="1" />
        </Property>
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Stun_Duration" />
          </Property>
          <Property name="Bonus" value="32" />
          <Property name="Level" value="1" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_RAIL_STUN", "StatsType", "Weapon_Stun_Duration"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "2"},
                            }
                        },
                    }
                },
            }
        }
    }
}