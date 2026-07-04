local function create_stat_change(tech_id, stat_id, new_value)
    return {
        ["SPECIAL_KEY_WORDS"] = {"ID", tech_id, "StatsType", stat_id},
        ["SECTION_UP"] = 1,
        ["VALUE_CHANGE_TABLE"] = {
            {"Bonus", new_value}
        }
    }
end

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "TechBonusesOverhaul",
    ["MOD_AUTHOR"] = "Exterra Project",
    ["NMS_VERSION"] = "6.45",
    ["MOD_DESCRIPTION"] = "Changing a lot of upgrade bonuses for many technologies",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        create_stat_change("UT_JET", "Suit_Jetpack_Tank", "0.5"),
                        create_stat_change("UT_JET", "Suit_Jetpack_Refill", "1.5"),
                        create_stat_change("UT_JET", "Suit_Stamina_Strength", "0.5"),
                        create_stat_change("UT_JET", "Suit_Stamina_Recovery", "2.0"),
                        
                        create_stat_change("UT_SCAN", "Weapon_Scan_Recharge_Time", "1.0"),
                        create_stat_change("UT_SCAN", "Weapon_Scan_Radius", "1.5"),
                        
                        create_stat_change("UT_SHIPSHIELD", "Ship_Armour_Shield_Strength", "0.5"),
                        
                        create_stat_change("UT_ENERGY", "Suit_Energy", "1.5"),
                        
                        create_stat_change("UT_PROTECT", "Suit_Protection", "1.0"),
                        
                        create_stat_change("UT_SHIPGUN", "Ship_Weapons_Guns_HeatTime", "1.5"),
                        
                        create_stat_change("UT_MINER", "Weapon_Laser_MiningBonus", "2.0"),
                        
                        create_stat_change("UT_LAUNCHER", "Ship_Launcher_TakeOffCost", "0.5"),
                        
                        create_stat_change("UT_SHIPLAS", "Ship_Weapons_Lasers_HeatTime", "1.3"),
                        create_stat_change("UT_SHIPLAS", "Ship_Weapons_ShieldLeech", "0.2"),
                        
                        create_stat_change("UT_WATER", "Suit_Protection_WaterDrain", "1.5"),
                        
                        create_stat_change("UT_RAD", "Suit_Protection_RadDrain", "1.75"),
                        
                        create_stat_change("UT_HOT", "Suit_Protection_HeatDrain", "1.75"),
                        
                        create_stat_change("UT_TOX", "Suit_Protection_ToxDrain", "1.75"),
                        
                        create_stat_change("UT_PULSESPEED", "Ship_PulseDrive_MiniJumpSpeed", "1.5"),
                        
                        create_stat_change("UT_COLD", "Suit_Protection_ColdDrain", "1.75")
                    }
                }
            }
        }
    }
}