
--[[ Summery Description:

]]--

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "A_Survival_Inventory_Equal_Normal.pak",
    ["MOD_AUTHOR"]      = "Copper Boltwire",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"]    =  {"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN",},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"DefaultSubstanceMaxAmount",             9999   }, --250
                                {"DefaultProductMaxAmount",                  1   },
                                {"CargoSubstanceStorageMultiplier",          1   }, --2
                                {"CargoProductStorageMultiplier",           10   },
                                {"ShipSubstanceStorageMultiplier",           1   }, --2
                                {"ShipProductStorageMultiplier",             5   },
                                {"FreighterSubstanceStorageMultiplier",      1   }, --4
                                {"FreighterProductStorageMultiplier",       10   },
                                {"ChestSubstanceStorageMultiplier",          1   }, --4
                                {"ChestProductStorageMultiplier",           20   },
                                {"BaseCapsuleSubstanceStorageMultiplier",    1   }, --8
                                {"BaseCapsuleProductStorageMultiplier",    100   },
                                {"DefaultSubstanceStorageMultiplier",        1   },
                                {"DefaultProductStorageMultiplier",          5   },
                                {"SubstanceMaxAmountLimit",               9999   },
                                {"ProductMaxAmountLimit",                 9999   },
                                {"PlayerPersonalInventoryTechWidth",         8   },
                                {"PlayerPersonalInventoryTechHeight",        6   },
                                {"PlayerPersonalInventoryCargoWidth",        8   },
                                {"PlayerPersonalInventoryCargoHeight",       6   },
                                {"DeconstructRefundPercentage",              0.5 },
                            }
                        }
                    }
                }
            }
        }
    }
}