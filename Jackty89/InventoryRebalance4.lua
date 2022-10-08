ModName                                  = "InventoryRebalance"

GCGAMEPLAYGLOBALS                        = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"
INVENTORYTABLE                           = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN"

SubstanceAndProcductSizeLimit            = 9999999

-- Standard == NORMAL
SubstanceInventorySizeStandard           = 50000
SubstanceCargoSizeStandard               = 100000
ProductInventorySizeStandard             = 50
ProductCargoSizeStandard                 = 100

-- Restriced == Survival/Perma
SubstanceInventorySizeRestriced          = 500
SubstanceCargoSizeRestriced              = 1000
SubstanceShipInventorySizeRestriced      = 2000
SubstanceShipCargoSizeRestriced          = 2000
SubstanceFreighterInventorySizeRestriced = 5000
SubstanceFreighterCargoSizeRestriced     = 5000
SubstanceVehicleInventorySizeRestriced   = 2000
SubstanceChestAndCapSizeRestriced        = 5000

ProductInventorySizeRestricted           = 5
ProductCargoSizeRestricted               = 10
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
                    ["MBIN_FILE_SOURCE"]    = GCGAMEPLAYGLOBALS,
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"SubstanceStackLimit", SubstanceAndProcductSizeLimit},
                                {"ProductStackLimit",   SubstanceAndProcductSizeLimit},
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
                        -- Restriced == Survival/Perma
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SubstanceStackLimit", SubstanceAndProcductSizeLimit},
                                {"ProductStackLimit",   SubstanceAndProcductSizeLimit},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                -- {"Inventory",         SubstanceInventorySizeRestriced},
                                -- {"Personal",          SubstanceInventorySizeRestriced},
                                {"PersonalCargo",     SubstanceCargoSizeRestriced},
                                {"Ship",              SubstanceShipInventorySizeRestriced},
                                {"ShipCargo",         SubstanceShipCargoSizeRestriced},
                                {"Freighter",         SubstanceFreighterInventorySizeRestriced},
                                {"FreighterCargo",    SubstanceFreighterCargoSizeRestriced},
                                {"Vehicle",           SubstanceVehicleInventorySizeRestriced},
                                {"Chest",             SubstanceChestAndCapSizeRestriced},
                                {"BaseCapsule",       SubstanceChestAndCapSizeRestriced},
                                -- {"MaintenanceObject", SubstanceInventorySizeRestriced},
                                -- {"UIPopup",           SubstanceInventorySizeRestriced},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                -- {"Inventory",         ProductInventorySizeRestricted},
                                -- {"Personal",          ProductInventorySizeRestricted},
                                -- {"PersonalCargo",     ProductCargoSizeRestricted},
                                {"Ship",              ProductShipInventorySizeRestricted},
                                {"ShipCargo",         ProductShipCargoSizeRestricted},
                                {"Freighter",         ProductFreighterInventorySizeRestricted},
                                {"FreighterCargo",    ProductFreighterCargoSizeRestricted},
                                {"Vehicle",           ProductVehicleInventorySizeRestricted},
                                {"Chest",             ProductChestAndCapSizeRestricted},
                                {"BaseCapsule",       ProductChestAndCapSizeRestricted},
                                -- {"MaintenanceObject", ProductInventorySizeRestricted},
                                -- {"UIPopup",           ProductInventorySizeRestricted},
                            }
                        }
                    },
                    -- {
                    --     {
                    --         ["VALUE_CHANGE_TABLE"]  =
                    --         {
                    --             {"PersonalInventoryMinWidthMax",      10},
                    --             {"PersonalInventoryMinHeightMax",     15},
                    --             {"PersonalTechInventoryMinWidthMax",  10},
                    --             {"PersonalTechInventoryMinHeightMax", 10},
                    --             {"ShipInventoryMinWidthMax",          10},
                    --             {"ShipInventoryMinHeightMax",         12},
                    --             {"ShipTechInventoryMinWidthMax",      10},
                    --             {"ShipTechInventoryMinHeightMax",     6},
                    --             {"VehicleInventoryMinWidthMax",       10},
                    --             {"VehicleInventoryMinHeightMax",      12},
                    --             {"WeaponInventoryMinWidthMax",        10},
                    --             {"WeaponInventoryMinHeightMax",       5}
                    --         }
                    --     }
                    -- }
                },
                -- {
                --     ["MBIN_FILE_SOURCE"]    = INVENTORYTABLE,
                --     ["EXML_CHANGE_TABLE"]   =
                --     {
                --         {
                --             ["SPECIAL_KEY_WORDS"] = {"Suit", "GcInventoryLayoutGenerationDataEntry.xml"},
                --             ["PRECEDING_KEY_WORDS"] = {"Bounds"},
                --             ["VALUE_CHANGE_TABLE"]  =
                --             {
                --                 {"MaxWidthSmall",     7},
                --                 {"MaxHeightSmall",    5},
                --                 {"MaxWidthStandard",  10},
                --                 {"MaxHeightStandard", 5},
                --                 {"MaxWidthLarge",     10},
                --                 {"MaxHeightLarge",    15}
                --             }
                --         },
                --         {
                --             ["SPECIAL_KEY_WORDS"] = {"Suit", "GcInventoryLayoutGenerationDataEntry.xml"},
                --             ["PRECEDING_KEY_WORDS"] = {"TechBounds"},
                --             ["VALUE_CHANGE_TABLE"]  =
                --             {
                --                 {"MaxWidthSmall",     6},
                --                 {"MaxHeightSmall",    3},
                --                 {"MaxWidthStandard",  10},
                --                 {"MaxHeightStandard", 3},
                --                 {"MaxWidthLarge",     10},
                --                 {"MaxHeightLarge",    10}
                --             }
                --         }
                --     }
                -- }
            }
        }
    }
}