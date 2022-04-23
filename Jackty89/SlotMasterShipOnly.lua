ModName = "SlotMasterShip"
Author = "Jackty89"

FilePath = {"METADATA\\GAMESTATE\\DEFAULTINVENTORYBALANCE.MBIN", "METADATA\\GAMESTATE\\DEFAULTINVENTORYBALANCESURVIVAL.MBIN"}
InventoryTablePath = "METADATA\\REALITY\\TABLES\\INVENTORYTABLE.MBIN"

TechWidth = 8
TechHeight = 6

AlienShipInventory = "48"
AlienShipTech = "48"
AlienShipCargo = "48"

AlienEdits = {
    "AlienSmall",
    "AlienMedium",
    "AlienLarge"
}

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName.. ".pak",
    ["MOD_DESCRIPTION"] = ModName,
    ["MOD_AUTHOR"] = Author,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = InventoryTablePath,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"40","48"},
                                {"40","48"},
                                {"36","48"},
                                {"36","48"},
                                {"35","48"},
                                {"35","48"},
                                {"32","48"},
                                {"32","48"},
                                {"24","48"},
                                {"24","48"},
                                {"21","48"},
                                {"21","48"},
                                {"14","48"},
                                {"14","48"},
                                {"12","48"},
                                {"12","48"},
                                {"9","48"},
                                {"9","48"},
                                {"7","48"},
                                {"7","48"},
                                {"6","48"},
                                {"6","48"},
                                {"5","48"},
                                {"5","48"},
                                {"0","48"},
                                {"0","48"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WeaponInventoryMaxUpgradeSize", "GcWeaponInventoryMaxUpgradeCapacity.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "48"},
                                {"B", "48"},
                                {"A", "48"},
                                {"S", "48"}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = FilePath,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlayerPersonalInventoryTechWidth", TechWidth},
                                {"PlayerPersonalInventoryTechHeight", TechHeight}
                            }
                        }
                    }
                }
            }
        }
    }
}

local ChangesToInventoryTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #AlienEdits do
    ChangesToInventoryTable[#ChangesToInventoryTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {AlienEdits[i], "GcInventoryLayoutGenerationDataEntry.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"MinSlots", AlienShipInventory},
            {"MaxSlots", AlienShipInventory},
            {"MinTechSlots", AlienShipTech},
            {"MaxTechSlots", AlienShipTech},
            {"MinCargoSlots", AlienShipCargo},
            {"MaxCargoSlots", AlienShipCargo}
        }
    }
end