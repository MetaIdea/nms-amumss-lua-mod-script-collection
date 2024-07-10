Author = "Jackty89"
Mod_Name = "NoCostBasicTech"

Technology_Table_Path = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
-- Player_Weapon_Properties_Table_Path = "METADATA/REALITY/TABLES/PLAYERWEAPONPROPERTIESTABLE.MBIN"

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
                    ["MBIN_FILE_SOURCE"] = Technology_Table_Path,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- REMOVE Weapon_Laser_Drain and Weapon_Laser_ReloadTime (remove charge by's) or is it value or Fragment cost?
                            -- Reduce damage Weapon_Laser_Damage
                            ["SPECIAL_KEY_WORDS"] = {"ID", "LASER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Chargeable", "False"},
                                {"FragmentCost", 0},
                                {"Value", 0}
                            }
                        },
                        {
                            -- REMOVE Weapon_Laser_Drain and Weapon_Laser_ReloadTime (remove charge by's)
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TERRAINEDITOR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Chargeable", "False"}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"ResourceReducer", "1"},
                                {"ResourceMinAmount", "10"},
                                {"ResourceMaxAmount", "20"},
                                {"ResourceCommonReducer", "1"},
                                {"ResourceCommonMinAmount", "10"},
                                {"ResourceCommonMaxAmount", "80"},
                                {"ResourceDirtReducer", "1"},
                                {"ResourceDirtMinAmount", "10"},
                                {"ResourceDirtMaxAmount", "80"}
                            }
                        }
                    }
                }
                -- {
                --     ["MBIN_FILE_SOURCE"] = Player_Weapon_Properties_Table_Path,
                --     ["EXML_CHANGE_TABLE"] =
                --     {
                --         {
                --             ["SPECIAL_KEY_WORDS"] = {"DefaultProjectile", "FLAMETHROW"},
                --             ["VALUE_CHANGE_TABLE"] =
                --             {
                --                 {"DefaultProjectile", DefaultProjectile[Effect_Choice]}
                --             }
                --         }
                --     }
                -- }
            }
        }
    }
}
