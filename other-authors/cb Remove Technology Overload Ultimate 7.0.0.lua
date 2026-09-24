---------- Remove Technology Overload Ultimate - Cosmos 7.04 ----------

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

---------- Ultimate: Stack Sizes ----------

-- Existing stack sizes for stackable substances/products are multiplied by this value.
STACK_SIZE_MULTIPLIER = 100

-- Antimatter Reactor compatibility fix for very large product stacks.
ANTIMATTER_AMOUNT = 20

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
    ["MOD_FILENAME"]    = "cb Remove Technology Overload Ultimate",
    ["MOD_AUTHOR"]      = "chronicallybored",
    ["NMS_VERSION"]     = "7.04",
    ["MOD_DESCRIPTION"] = "Includes all Plus features and multiplies existing stack sizes for stackable substances/products by x100.",
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
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/GAMESTATE/DIFFICULTYCONFIG.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData"},
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SubstanceStackLimit", STACK_SIZE_MULTIPLIER},
                                {"ProductStackLimit", STACK_SIZE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default", STACK_SIZE_MULTIPLIER},
                                {"Personal", STACK_SIZE_MULTIPLIER},
                                {"PersonalCargo", STACK_SIZE_MULTIPLIER},
                                {"Ship", STACK_SIZE_MULTIPLIER},
                                {"ShipCargo", STACK_SIZE_MULTIPLIER},
                                {"Freighter", STACK_SIZE_MULTIPLIER},
                                {"FreighterCargo", STACK_SIZE_MULTIPLIER},
                                {"Vehicle", STACK_SIZE_MULTIPLIER},
                                {"Chest", STACK_SIZE_MULTIPLIER},
                                {"BaseCapsule", STACK_SIZE_MULTIPLIER},
                                {"MaintenanceObject", STACK_SIZE_MULTIPLIER},
                                {"UIPopup", STACK_SIZE_MULTIPLIER},
                                {"SeasonTransfer", STACK_SIZE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default", STACK_SIZE_MULTIPLIER},
                                {"Personal", STACK_SIZE_MULTIPLIER},
                                {"PersonalCargo", STACK_SIZE_MULTIPLIER},
                                {"Ship", STACK_SIZE_MULTIPLIER},
                                {"ShipCargo", STACK_SIZE_MULTIPLIER},
                                {"Freighter", STACK_SIZE_MULTIPLIER},
                                {"FreighterCargo", STACK_SIZE_MULTIPLIER},
                                {"Vehicle", STACK_SIZE_MULTIPLIER},
                                {"Chest", STACK_SIZE_MULTIPLIER},
                                {"BaseCapsule", STACK_SIZE_MULTIPLIER},
                                {"MaintenanceObject", STACK_SIZE_MULTIPLIER},
                                {"UIPopup", STACK_SIZE_MULTIPLIER},
                                {"SeasonTransfer", STACK_SIZE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Normal", "GcDifficultyInventoryStackSizeOptionData"},
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SubstanceStackLimit", STACK_SIZE_MULTIPLIER},
                                {"ProductStackLimit", STACK_SIZE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Normal", "GcDifficultyInventoryStackSizeOptionData"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default", STACK_SIZE_MULTIPLIER},
                                {"Personal", STACK_SIZE_MULTIPLIER},
                                {"PersonalCargo", STACK_SIZE_MULTIPLIER},
                                {"Ship", STACK_SIZE_MULTIPLIER},
                                {"ShipCargo", STACK_SIZE_MULTIPLIER},
                                {"Freighter", STACK_SIZE_MULTIPLIER},
                                {"FreighterCargo", STACK_SIZE_MULTIPLIER},
                                {"Vehicle", STACK_SIZE_MULTIPLIER},
                                {"Chest", STACK_SIZE_MULTIPLIER},
                                {"BaseCapsule", STACK_SIZE_MULTIPLIER},
                                {"MaintenanceObject", STACK_SIZE_MULTIPLIER},
                                {"UIPopup", STACK_SIZE_MULTIPLIER},
                                {"SeasonTransfer", STACK_SIZE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Normal", "GcDifficultyInventoryStackSizeOptionData"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default", STACK_SIZE_MULTIPLIER},
                                {"Personal", STACK_SIZE_MULTIPLIER},
                                {"PersonalCargo", STACK_SIZE_MULTIPLIER},
                                {"Ship", STACK_SIZE_MULTIPLIER},
                                {"ShipCargo", STACK_SIZE_MULTIPLIER},
                                {"Freighter", STACK_SIZE_MULTIPLIER},
                                {"FreighterCargo", STACK_SIZE_MULTIPLIER},
                                {"Vehicle", STACK_SIZE_MULTIPLIER},
                                {"Chest", STACK_SIZE_MULTIPLIER},
                                {"BaseCapsule", STACK_SIZE_MULTIPLIER},
                                {"MaintenanceObject", STACK_SIZE_MULTIPLIER},
                                {"UIPopup", STACK_SIZE_MULTIPLIER},
                                {"SeasonTransfer", STACK_SIZE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Low", "GcDifficultyInventoryStackSizeOptionData"},
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SubstanceStackLimit", STACK_SIZE_MULTIPLIER},
                                {"ProductStackLimit", STACK_SIZE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Low", "GcDifficultyInventoryStackSizeOptionData"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default", STACK_SIZE_MULTIPLIER},
                                {"Personal", STACK_SIZE_MULTIPLIER},
                                {"PersonalCargo", STACK_SIZE_MULTIPLIER},
                                {"Ship", STACK_SIZE_MULTIPLIER},
                                {"ShipCargo", STACK_SIZE_MULTIPLIER},
                                {"Freighter", STACK_SIZE_MULTIPLIER},
                                {"FreighterCargo", STACK_SIZE_MULTIPLIER},
                                {"Vehicle", STACK_SIZE_MULTIPLIER},
                                {"Chest", STACK_SIZE_MULTIPLIER},
                                {"BaseCapsule", STACK_SIZE_MULTIPLIER},
                                {"MaintenanceObject", STACK_SIZE_MULTIPLIER},
                                {"UIPopup", STACK_SIZE_MULTIPLIER},
                                {"SeasonTransfer", STACK_SIZE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Low", "GcDifficultyInventoryStackSizeOptionData"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default", STACK_SIZE_MULTIPLIER},
                                {"Personal", STACK_SIZE_MULTIPLIER},
                                {"PersonalCargo", STACK_SIZE_MULTIPLIER},
                                {"Ship", STACK_SIZE_MULTIPLIER},
                                {"ShipCargo", STACK_SIZE_MULTIPLIER},
                                {"Freighter", STACK_SIZE_MULTIPLIER},
                                {"FreighterCargo", STACK_SIZE_MULTIPLIER},
                                {"Vehicle", STACK_SIZE_MULTIPLIER},
                                {"Chest", STACK_SIZE_MULTIPLIER},
                                {"BaseCapsule", STACK_SIZE_MULTIPLIER},
                                {"MaintenanceObject", STACK_SIZE_MULTIPLIER},
                                {"UIPopup", STACK_SIZE_MULTIPLIER},
                                {"SeasonTransfer", STACK_SIZE_MULTIPLIER},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/ANTIMATTERHARVESTER/ENTITIES/ANTIMATTERHARVESTER.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ANTIMATTER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxCapacity", ANTIMATTER_AMOUNT},
                            }
                        },
                    }
                },
            }
        },
    }
}
