Author = "Jackty89"
Mod_Name = "BurnBabyBurn"

Unlockable_Item_Trees_Path = "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN"
Technology_Table_Path = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
Player_Weapon_Properties_Table_Path = "METADATA/REALITY/TABLES/PLAYERWEAPONPROPERTIESTABLE.MBIN"

New_Weapon_Stats =
{
    {
        ["STAT_TYPE"] = "Weapon_FireDOT",
        ["BONUS"] = "100",
        ["LEVEL"] = "1"
    },
    {
        ["STAT_TYPE"] = "Weapon_FireDOT_Duration",
        ["BONUS"] = "10",
        ["LEVEL"] = "1"
    },
    {
        ["STAT_TYPE"] = "Weapon_FireDOT_DPS",
        ["BONUS"] = "500",
        ["LEVEL"] = "3"
    },
    {
        ["STAT_TYPE"] = "Weapon_Projectile_Bounce",
        ["BONUS"] = "2",
        ["LEVEL"] = "3"
    },
    {
        ["STAT_TYPE"] = "Weapon_Projectile",
        ["BONUS"] = "50",
        ["LEVEL"] = "1"
    }
}

DefaultProjectile =
{
    "FLAMETHROW",
    "MINE_GREN",
    "GRENADE",
    "CANNON",
    "SMG",
    "SHOTGUN",
    "BOLTGUN",
    "STUN_GREN",
}

Effect_Choice = 1
Input_Effect_Choice =
{
    Effect_Choice,
    [[
        What Effect should the new flamerthower projectile look like?
        This is optional. Leave on default if you want flames.
        * 1 = "FLAMETHROW"
        * 2 = "MINE_GREN"
        * 3 = "GRENADE"
        * 4 = "CANNON"
        * 5 = "SMG"
        * 6 = "SHOTGUN"
        * 7 = "BOLTGUN"
        * 8 = "STUN_GREN"
        Default = 1 | Current = >> ]] .. Effect_Choice .. [[ <<
    ]]
}
Effect_Choice = GUIF(Input_Effect_Choice, 10)
NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = Mod_Name..".pak",
    ["MOD_DESCRIPTION"] = Mod_Name,
    ["MOD_AUTHOR"] = Author,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = Unlockable_Item_Trees_Path,
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = Technology_Table_Path,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WikiEnabled", "True"},
                                {"ChargeMultiplier", "2"},
                                {"FragmentCost", "2500"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME" , "TechShopRarity", "GcTechnologyRarity.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TechnologyRarity", "Common"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME" , "Rarity", "GcTechnologyRarity.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TechnologyRarity", "Common"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME" },
                            ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_Dispersion"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "15"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME" },
                            ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_Range"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "250"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME" },
                            ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_BulletsPerShot"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "5"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME" },
                            ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_Damage"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "150"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME" },
                            ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_Rate"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "12"}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = Player_Weapon_Properties_Table_Path,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultProjectile", "FLAMETHROW"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultProjectile", DefaultProjectile[1]}
                            }
                        }
                    }
                }
            }
        }
    }
}

local Changes_To_Unlockable_Item_Trees = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local Changes_To_Technology_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

function Add_Flame_Thrower()
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Unlockable", "T_WALL_H"},
        ["PRECEDING_KEY_WORDS"] = {"GcUnlockableItemTreeNode.xml"},
        ["SEC_SAVE_TO"] = "Flame_Thrower",
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SEC_EDIT"] = "Flame_Thrower",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Unlockable", "FLAME"},
        }
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Title", "UI_WEAP_TECH_TREE", "Title", "UI_TECH_TREE_SUB","Unlockable", "LASER"},
        ["PRECEDING_KEY_WORDS"] = {"Children"},
        ["SEC_ADD_NAMED"] = "Flame_Thrower"
    }
end

function Single_Stat(Stat_Type, Bonus, Level)
    Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME"},
        ["PRECEDING_KEY_WORDS"] = {"GcStatsBonus.xml"},
        ["SEC_SAVE_TO"] = Stat_Type.."SEC"
    }

    Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
    {
        ["SEC_EDIT"] = Stat_Type.."SEC",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"StatsType", Stat_Type},
            {"Bonus", Bonus},
            {"Level", Level},
        }
    }
    Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
    {
        ["SEC_EDIT"] = "STATS_MASTER",
        ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = Stat_Type.."SEC"
    }
end

function Add_Stats()
    Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME"},
        ["SEC_SAVE_TO"] = "STATS_MASTER"
    }
    for i = 1, #New_Weapon_Stats do
        Single_Stat(New_Weapon_Stats[i]["STAT_TYPE"], New_Weapon_Stats[i]["BONUS"], New_Weapon_Stats[i]["LEVEL"])
    end
    Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
    {
        ["SEC_EDIT"] = "STATS_MASTER",
        ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME"},
        ["REMOVE"] = "SECTION",
    }
    Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME"},
        ["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
        ["SEC_ADD_NAMED"] = "STATS_MASTER"
    }
end

Add_Flame_Thrower()
Add_Stats()