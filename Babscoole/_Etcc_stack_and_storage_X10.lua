NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Etcc_stack_and_storage_X10.v3.1.pak",
["MOD_AUTHOR"]    = "pottedfrog",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.26",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"High",   "GcDifficultyInventoryStackSizeOptionData.xml"},
                                {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                                {"Low",    "GcDifficultyInventoryStackSizeOptionData.xml"},
                            },
                            ["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SubstanceStackLimit", "99999"},
                                {"ProductStackLimit",   "99999"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"High",   "GcDifficultyInventoryStackSizeOptionData.xml"},
                                {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                                {"Low",    "GcDifficultyInventoryStackSizeOptionData.xml"},
                            },
                            ["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default",           "99999"},
                                {"Personal",          "99999"},
                                {"PersonalCargo",     "99999"},
                                {"Ship",              "99999"},
                                {"ShipCargo",         "99999"},
                                {"Freighter",         "99999"},
                                {"FreighterCargo",    "99999"},
                                {"Vehicle",           "99999"},
                                {"Chest",             "99999"},
                                {"BaseCapsule",       "99999"},
                                {"MaintenanceObject", "99999"},
                                {"UIPopup",           "99999"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"High",   "GcDifficultyInventoryStackSizeOptionData.xml"},
                                {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                                {"Low",    "GcDifficultyInventoryStackSizeOptionData.xml"},
                            },
                            ["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default",           "50"},
                                {"Personal",          "100"},
                                {"PersonalCargo",     "100"},
                                {"Ship",              "100"},
                                {"ShipCargo",         "100"},
                                {"Freighter",         "200"},
                                {"FreighterCargo",    "200"},
                                {"Vehicle",           "100"},
                                {"Chest",             "200"},
                                {"BaseCapsule",       "500"},
                                {"MaintenanceObject", "100"},
                            }
                        },
                        -- {
                            -- ["INTEGER_TO_FLOAT"] = "FORCE",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"SmugglerSellingMarkup",          "0.2"},
                                -- {"IllegalTechProductTradingMod",   "1.66"},
                                -- {"CombatLevelBestWeaponBias",      "0.2"},
                                -- {"CombatLevelBaseValueBoltcaster", "0.66"},
                                -- {"CombatLevelBaseValueShotgun",    "0.1"},
                                -- {"CombatLevelBaseValueRailgun",    "0.2"},
                                -- {"CombatLevelBaseValueSMG",        "0.25"},
                                -- {"CombatLevelBaseValueCannon",     "0.2"},
                                -- {"CombatLevelBaseValueGrenade",    "0.25"},
                                -- {"CombatLevelSClassValue",         "0.1"},
                            -- }
                        -- },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DeconstructRefundPercentage", "1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "U_EXTRACTOR_S"},
                                {"ID", "U_GASEXTRACTOR"},
                                {"ID", "U_SILO_S"},
                                {"ID", "U_BIOGENERATOR"},
                                {"ID", "U_BATTERY_S"},
                            },
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Storage", 10},
                            }
                        },
                    }
                },
            }
        }
    }
}