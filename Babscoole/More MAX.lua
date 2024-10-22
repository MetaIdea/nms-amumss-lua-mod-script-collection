NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]  = "More MAX Upgradeable Slots.pak",
    ["MOD_AUTHOR"]    = "Dunzz",
    ["LUA_AUTHOR"]    = "Babscoole",
    ["NMS_VERSION"]   = "5.03",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleSmall", "GcInventoryLayoutGenerationDataEntry.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", "120"},
                                {"MaxSlots", "120"},
                                {"MinTechSlots", "60"},
                                {"MaxTechSlots", "60"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleMedium", "GcInventoryLayoutGenerationDataEntry.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", "120"},
                                {"MaxSlots", "120"},
                                {"MinTechSlots", "60"},
                                {"MaxTechSlots", "60"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleLarge", "GcInventoryLayoutGenerationDataEntry.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", "120"},
                                {"MaxSlots", "120"},
                                {"MinTechSlots", "60"},
                                {"MaxTechSlots", "60"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Suit", "GcInventoryLayoutGenerationDataEntry.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", "120"},
                                {"MaxSlots", "120"},
                                {"MinTechSlots", "60"},
                                {"MaxTechSlots", "60"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Suit", "GcInventoryLayoutGenerationDataEntry.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Bounds"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxWidthSmall", "10"},
                                {"MaxHeightSmall", "12"},
                                {"MaxWidthStandard", "10"},
                                {"MaxHeightStandard", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Freighter", "MaxInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "120"},
                                {"B", "120"},
                                {"A", "120"},
                                {"S", "120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Freighter", "MaxTechInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "99"},
                                {"B", "99"},
                                {"A", "99"},
                                {"S", "99"}, 
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Dropship", "MaxInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "120"},
                                {"B", "120"},
                                {"A", "120"},
                                {"S", "120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Dropship", "MaxTechInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "99"},
                                {"B", "99"},
                                {"A", "99"},
                                {"S", "99"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Fighter", "MaxInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "120"},
                                {"B", "120"},
                                {"A", "120"},
                                {"S", "120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Fighter", "MaxTechInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "99"},
                                {"B", "99"},
                                {"A", "99"},
                                {"S", "99"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Scientific", "MaxInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "120"},
                                {"B", "120"},
                                {"A", "120"},
                                {"S", "120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Scientific", "MaxTechInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "99"},
                                {"B", "99"},
                                {"A", "99"},
                                {"S", "99"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Shuttle", "MaxInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "120"},
                                {"B", "120"},
                                {"A", "120"},
                                {"S", "120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Shuttle", "MaxTechInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "99"},
                                {"B", "99"},
                                {"A", "99"},
                                {"S", "99"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Royal", "MaxInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "120"},
                                {"B", "120"},
                                {"A", "120"},
                                {"S", "120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Royal", "MaxTechInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "99"},
                                {"B", "99"},
                                {"A", "99"},
                                {"S", "99"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Alien", "MaxInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "120"},
                                {"B", "120"},
                                {"A", "120"},
                                {"S", "120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Alien", "MaxTechInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "99"},
                                {"B", "99"},
                                {"A", "99"},
                                {"S", "99"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Sail", "MaxInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "120"},
                                {"B", "120"},
                                {"A", "120"},
                                {"S", "120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Sail", "MaxTechInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "99"},
                                {"B", "99"},
                                {"A", "99"},
                                {"S", "99"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Robot", "MaxInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "120"},
                                {"B", "120"},
                                {"A", "120"},
                                {"S", "120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", "Robot", "MaxTechInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "99"},
                                {"B", "99"},
                                {"A", "99"},
                                {"S", "99"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WeaponInventoryMaxUpgradeSize", "MaxInventoryCapacity"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "99"},
                                {"B", "99"},
                                {"A", "99"},
                                {"S", "99"},
                            }
                        },
                    }
                },
            }
        },
    }
}