ModName                                  = "InventoryRebalance"

DIFFICULTYCONFIG                         = "METADATA/GAMESTATE/DIFFICULTYCONFIG.MBIN"

SubstanceAndProductSizeLimit             = 9999999

-- Standard == NORMAL
SubstanceInventorySizeStandard           = 50000
SubstanceCargoSizeStandard               = 100000
ProductInventorySizeStandard             = 50
ProductCargoSizeStandard                 = 100

-- Restricted == Survival/Perma
SubstanceCargoSizeRestricted              = 1000
SubstanceShipInventorySizeRestricted      = 2000
SubstanceShipCargoSizeRestricted          = 2000
SubstanceFreighterInventorySizeRestricted = 5000
SubstanceFreighterCargoSizeRestricted     = 5000
SubstanceVehicleInventorySizeRestricted   = 2000
SubstanceChestAndCapSizeRestricted        = 5000

ProductShipInventorySizeRestricted       = 10
ProductShipCargoSizeRestricted           = 10
ProductFreighterInventorySizeRestricted  = 25
ProductFreighterCargoSizeRestricted      = 25
ProductVehicleInventorySizeRestricted    = 10
ProductChestAndCapSizeRestricted         = 25


NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]        = ModName..".pak",
    ["MOD_DESCRIPTION"]     = "Rebalance of InvetorySize and Deconstruction cost",
    ["MOD_AUTHOR"]          = "Jackty89",
    ["MODIFICATIONS"]       =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]    = DIFFICULTYCONFIG,
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"SubstanceStackLimit", SubstanceAndProductSizeLimit},
                                {"ProductStackLimit",   SubstanceAndProductSizeLimit},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Default",             SubstanceInventorySizeStandard},
                                {"Personal",            SubstanceInventorySizeStandard},
                                {"PersonalCargo",       SubstanceCargoSizeStandard},
                                {"Ship",                SubstanceInventorySizeStandard},
                                {"ShipCargo",           SubstanceCargoSizeStandard},
                                {"Freighter",           SubstanceInventorySizeStandard},
                                {"FreighterCargo",      SubstanceCargoSizeStandard},
                                {"Vehicle",             SubstanceInventorySizeStandard},
                                {"Chest",               SubstanceInventorySizeStandard},
                                {"BaseCapsule",         SubstanceInventorySizeStandard},
                                {"MaintenanceObject",   SubstanceInventorySizeStandard},
                                {"UIPopup",             SubstanceInventorySizeStandard},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"High", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Default",           ProductInventorySizeStandard},
                                {"Personal",          ProductInventorySizeStandard},
                                {"PersonalCargo",     ProductCargoSizeStandard},
                                {"Ship",              ProductInventorySizeStandard},
                                {"ShipCargo",         ProductCargoSizeStandard},
                                {"Freighter",         ProductInventorySizeStandard},
                                {"FreighterCargo",    ProductCargoSizeStandard},
                                {"Vehicle",           ProductInventorySizeStandard},
                                {"Chest",             ProductInventorySizeStandard},
                                {"BaseCapsule",       ProductInventorySizeStandard},
                                {"MaintenanceObject", ProductInventorySizeStandard},
                                {"UIPopup",           ProductInventorySizeStandard},
                            }
                        },
                        -- Restricted == Survival/Perma
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SubstanceStackLimit", SubstanceAndProductSizeLimit},
                                {"ProductStackLimit",   SubstanceAndProductSizeLimit},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"PersonalCargo",     SubstanceCargoSizeRestricted},
                                {"Ship",              SubstanceShipInventorySizeRestricted},
                                {"ShipCargo",         SubstanceShipCargoSizeRestricted},
                                {"Freighter",         SubstanceFreighterInventorySizeRestricted},
                                {"FreighterCargo",    SubstanceFreighterCargoSizeRestricted},
                                {"Vehicle",           SubstanceVehicleInventorySizeRestricted},
                                {"Chest",             SubstanceChestAndCapSizeRestricted},
                                {"BaseCapsule",       SubstanceChestAndCapSizeRestricted},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Ship",              ProductShipInventorySizeRestricted},
                                {"ShipCargo",         ProductShipCargoSizeRestricted},
                                {"Freighter",         ProductFreighterInventorySizeRestricted},
                                {"FreighterCargo",    ProductFreighterCargoSizeRestricted},
                                {"Vehicle",           ProductVehicleInventorySizeRestricted},
                                {"Chest",             ProductChestAndCapSizeRestricted},
                                {"BaseCapsule",       ProductChestAndCapSizeRestricted},
                            }
                        }
                    }
                }
            }
        }
    }
}