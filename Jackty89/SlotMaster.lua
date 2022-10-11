ModName = "SlotMaster"
Author = "Jackty89"

InventoryTablePath = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN"

MaxInventory     = 120
MaxTech          = 60

InventoryWidth   = 10
InventoryHeight  = 12

TechWidth        = 10
TechHeight       = 6


ImproveShip      = true
ImproveWeapon    = true
ImproveAlien     = true
ImproveVehicle   = true
ImproveInventory = true
ImproveFreighter = true

MaxSlot          = false

AlienSizes = {
    "AlienSmall",
    "AlienMedium",
    "AlienLarge"
}

VehicleSizes = {
    "VehicleSmall",
    "VehicleMedium",
    "VehicleLarge"
}

FreighterSizes = {
    "FreighterSmall",
    "FreighterMedium",
    "FreighterLarge",
}

WeaponSizes = {
    "WeaponSmall",
    "WeaponMedium",
    "WeaponLarge"
}

ShipSizes = {
    "SciSmall",
    "SciMedium",
    "SciLarge",
    
    "FgtSmall",
    "FgtMedium",
    "FgtLarge",
    
    "ShuSmall",
    "ShtMedium",
    "ShtLarge",
    
    "DrpSmall",
    "DrpMedium",
    "DrpLarge",
    
    "SailSmall",
    "SailMedium",
    "SailLarge",
    
    "RoySmall",
    "RoyMedium",
    "FreighterLarge"
}

ShipTypes = {
    "Dropship",
    "Fighter",
    "Scientific",
    "Shuttle",
    "Royal",
    "Sail"
}

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = ModName.. ".pak",
    ["MOD_DESCRIPTION"] = ModName,
    ["MOD_AUTHOR"]      = Author,
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = InventoryTablePath,
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                }
            }
        }
    }
}

local ChangesToInventoryTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

function ImproveSuitInventory()
    EditInventory("Suit", MaxSlot)
end

function ImproveShipInventory()
    for _key, shipSize in ipairs(ShipSizes) do
        EditInventory(shipSize, MaxSlot)
    end
    for _key, shipType in ipairs(ShipTypes) do
        ImproveClassSlotLimit(shipType)
    end
end

function ImproveVehicleInventory()
    for _key, vehicleSize in ipairs(VehicleSizes) do
        EditInventory(vehicleSize, true)
    end
end

function ImproveWeaponInventory()
    for _key, weaponSize in ipairs(WeaponSizes) do
        EditInventory(weaponSize, MaxSlot)
    end

    ChangesToInventoryTable[#ChangesToInventoryTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"WeaponInventoryMaxUpgradeSize", "GcWeaponInventoryMaxUpgradeCapacity.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"C", MaxTech},
            {"B", MaxTech},
            {"A", MaxTech},
            {"S", MaxTech}
        }
    }
end

function ImproveFreighterInventory()
    for _key, freighterSize in ipairs(FreighterSizes) do
        EditInventory(freighterSize, MaxSlot)
    end
    ImproveClassSlotLimit("Freighter")
end

function ImproveAlienInventory()
    for _key, alienSize in ipairs(AlienSizes) do
        EditInventory(alienSize, MaxSlot)
    end
    ImproveClassSlotLimit("Alien")
end

function EditInventory(type, maxSlot)
    if maxSlot then
        ChangesToInventoryTable[#ChangesToInventoryTable + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {type, "GcInventoryLayoutGenerationDataEntry.xml"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"MinSlots", MaxInventory},
                {"MaxSlots", MaxInventory},
                {"MinTechSlots", MaxTech},
                {"MaxTechSlots", MaxTech},
            }
        }
    end

    ChangesToInventoryTable[#ChangesToInventoryTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {type, "GcInventoryLayoutGenerationDataEntry.xml", "Bounds", "GcInventoryLayoutGenerationBounds.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"MaxWidthSmall",     InventoryWidth},
            {"MaxHeightSmall",    InventoryHeight},
            {"MaxWidthStandard",  InventoryWidth},
            {"MaxHeightStandard", InventoryHeight},
            {"MaxWidthLarge",     InventoryWidth},
            {"MaxHeightLarge",    InventoryHeight},
        }
    }

    ChangesToInventoryTable[#ChangesToInventoryTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {type, "GcInventoryLayoutGenerationDataEntry.xml", "TechBounds", "GcInventoryLayoutGenerationBounds.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"MaxWidthSmall",     TechWidth},
            {"MaxHeightSmall",    TechHeight},
            {"MaxWidthStandard",  TechWidth},
            {"MaxHeightStandard", TechHeight},
            {"MaxWidthLarge",     TechWidth},
            {"MaxHeightLarge",    TechHeight},
        }
    }
end

function ImproveClassSlotLimit(type)
    ChangesToInventoryTable[#ChangesToInventoryTable + 1] =
    {
        ["PRECEDING_KEY_WORDS "] = {"ShipInventoryMaxUpgradeSize", type, "MaxInventoryCapacity"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"C", MaxInventory},
            {"B", MaxInventory},
            {"A", MaxInventory},
            {"S", MaxInventory}
        }
    }

    ChangesToInventoryTable[#ChangesToInventoryTable + 1] =
    {
        -- ["SPECIAL_KEY_WORDS"] = {type, "GcShipInventoryMaxUpgradeCapacity.xml"},
        ["PRECEDING_KEY_WORDS "] = {"ShipInventoryMaxUpgradeSize", type, "MaxTechInventoryCapacity"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"C", MaxTech},
            {"B", MaxTech},
            {"A", MaxTech},
            {"S", MaxTech}
        }
    }
end

if ImproveShip then
    ImproveShipInventory()
end
if ImproveWeapon then
    ImproveWeaponInventory()
end
if ImproveAlien then
    ImproveAlienInventory()
end
if ImproveVehicle then
    ImproveVehicleInventory()
end
if ImproveInventory then
    ImproveSuitInventory()
end
if ImproveFreighter then
    ImproveFreighterInventory()
end