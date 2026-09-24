---------- Remove Technology Overload Plus - Cosmos 7.04 ----------

-- Technology overload
NUMBER_SAME_TECH = 9999
-- How many mods of the same type you can equip without triggering technology overload;
-- mod default is 9999; vanilla default is 3;

-- Maximum upgradeable technology slots by class
C_CLASS_TECH = 30
B_CLASS_TECH = 40
A_CLASS_TECH = 50
S_CLASS_TECH = 60

-- Maximum upgradeable cargo/general inventory slots by class
C_CLASS_INV = 60
B_CLASS_INV = 80
A_CLASS_INV = 100
S_CLASS_INV = 120

-- Maximum upgradeable multitool slots by class
C_CLASS_TOOL = 30
B_CLASS_TOOL = 40
A_CLASS_TOOL = 50
S_CLASS_TOOL = 60

-- Exocrafts do not use the normal purchasable inventory-upgrade path.
-- These values set their fixed cargo/technology capacities directly.
EXOCRAFT_CARGO_SLOTS = 120
EXOCRAFT_TECH_SLOTS  = 60

-- Exosuit maximum bounds
EXOSUIT_CARGO_WIDTH  = 10
EXOSUIT_CARGO_HEIGHT = 12
EXOSUIT_TECH_WIDTH   = 10
EXOSUIT_TECH_HEIGHT  = 6

-- Cosmos 7.04 notes:
-- * Ship/Corvette cargo upgrade limits are controlled by MaxInventoryCapacity.
--   The legacy MaxCargoInventoryCapacity arrays remain zero in current game data
--   and are intentionally not modified.
-- * CorvetteStorage remains untouched because it is a separate storage inventory
--   and already exceeds the Plus cargo target.
-- * Exocrafts (VehicleSmall, VehicleMedium, and VehicleLarge) are set directly to 120 cargo
--   and 60 technology slots because exocrafts have no normal slot-upgrade path.


NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "cb Remove Technology Overload Plus",
    ["MOD_AUTHOR"]      = "chronicallybored",
    ["NMS_VERSION"]     = "7.04",
    ["MOD_DESCRIPTION"] = "Removes technology overload, expands class-based inventory/technology caps for ships, freighters and multitools, expands all exocraft inventory classes, and preserves expanded exosuit bounds.",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxNumSameGroupTech", NUMBER_SAME_TECH},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Freighter", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_INV},
                                {"B", B_CLASS_INV},
                                {"A", A_CLASS_INV},
                                {"S", S_CLASS_INV},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Freighter", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_TECH},
                                {"B", B_CLASS_TECH},
                                {"A", A_CLASS_TECH},
                                {"S", S_CLASS_TECH},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_INV},
                                {"B", B_CLASS_INV},
                                {"A", A_CLASS_INV},
                                {"S", S_CLASS_INV},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_TECH},
                                {"B", B_CLASS_TECH},
                                {"A", A_CLASS_TECH},
                                {"S", S_CLASS_TECH},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_INV},
                                {"B", B_CLASS_INV},
                                {"A", A_CLASS_INV},
                                {"S", S_CLASS_INV},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_TECH},
                                {"B", B_CLASS_TECH},
                                {"A", A_CLASS_TECH},
                                {"S", S_CLASS_TECH},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_INV},
                                {"B", B_CLASS_INV},
                                {"A", A_CLASS_INV},
                                {"S", S_CLASS_INV},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_TECH},
                                {"B", B_CLASS_TECH},
                                {"A", A_CLASS_TECH},
                                {"S", S_CLASS_TECH},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_INV},
                                {"B", B_CLASS_INV},
                                {"A", A_CLASS_INV},
                                {"S", S_CLASS_INV},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_TECH},
                                {"B", B_CLASS_TECH},
                                {"A", A_CLASS_TECH},
                                {"S", S_CLASS_TECH},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_INV},
                                {"B", B_CLASS_INV},
                                {"A", A_CLASS_INV},
                                {"S", S_CLASS_INV},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_TECH},
                                {"B", B_CLASS_TECH},
                                {"A", A_CLASS_TECH},
                                {"S", S_CLASS_TECH},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_INV},
                                {"B", B_CLASS_INV},
                                {"A", A_CLASS_INV},
                                {"S", S_CLASS_INV},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_TECH},
                                {"B", B_CLASS_TECH},
                                {"A", A_CLASS_TECH},
                                {"S", S_CLASS_TECH},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Corvette", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_INV},
                                {"B", B_CLASS_INV},
                                {"A", A_CLASS_INV},
                                {"S", S_CLASS_INV},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Corvette", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_TECH},
                                {"B", B_CLASS_TECH},
                                {"A", A_CLASS_TECH},
                                {"S", S_CLASS_TECH},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"S", S_CLASS_INV},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"S", S_CLASS_TECH},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"S", S_CLASS_INV},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcShipInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"S", S_CLASS_TECH},
                            }
                        },

                        -- Multitool upgrade cap
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WeaponInventoryMaxUpgradeSize", "GcWeaponInventoryMaxUpgradeCapacity"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", C_CLASS_TOOL},
                                {"B", B_CLASS_TOOL},
                                {"A", A_CLASS_TOOL},
                                {"S", S_CLASS_TOOL},
                            }
                        },

                        -- Exocraft capacities
                        -- VehicleSmall: Nomad + Pilgrim
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleSmall", "GcInventoryLayoutGenerationDataEntry"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots",     EXOCRAFT_CARGO_SLOTS},
                                {"MaxSlots",     EXOCRAFT_CARGO_SLOTS},
                                {"MinTechSlots", EXOCRAFT_TECH_SLOTS},
                                {"MaxTechSlots", EXOCRAFT_TECH_SLOTS},
                            }
                        },

                        -- VehicleMedium: Roamer + Minotaur + Nautilon
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleMedium", "GcInventoryLayoutGenerationDataEntry"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots",     EXOCRAFT_CARGO_SLOTS},
                                {"MaxSlots",     EXOCRAFT_CARGO_SLOTS},
                                {"MinTechSlots", EXOCRAFT_TECH_SLOTS},
                                {"MaxTechSlots", EXOCRAFT_TECH_SLOTS},
                            }
                        },

                        -- VehicleLarge: Colossus
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleLarge", "GcInventoryLayoutGenerationDataEntry"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots",     EXOCRAFT_CARGO_SLOTS},
                                {"MaxSlots",     EXOCRAFT_CARGO_SLOTS},
                                {"MinTechSlots", EXOCRAFT_TECH_SLOTS},
                                {"MaxTechSlots", EXOCRAFT_TECH_SLOTS},
                            }
                        },

                        -- Exosuit cargo/general maximum bounds
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Suit", "GcInventoryLayoutGenerationDataEntry"},
                            ["PRECEDING_KEY_WORDS"] = {"Bounds"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxWidthLarge", EXOSUIT_CARGO_WIDTH},
                                {"MaxHeightLarge", EXOSUIT_CARGO_HEIGHT},
                            }
                        },

                        -- Exosuit technology maximum bounds
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Suit", "GcInventoryLayoutGenerationDataEntry"},
                            ["PRECEDING_KEY_WORDS"] = {"TechBounds"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxWidthLarge", EXOSUIT_TECH_WIDTH},
                                {"MaxHeightLarge", EXOSUIT_TECH_HEIGHT},
                            }
                        },
                    }
                },
            }
        },
    }
}
