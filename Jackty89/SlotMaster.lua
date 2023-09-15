ModName = "SlotMaster"
Author = "Jackty89"

InventoryTablePath = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN"
DefaultRealityPath = "METADATA/REALITY/DEFAULTREALITY.MBIN"
DefaultSaveDatePath = "METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN"

MaxInventoryCap = 120
MaxTechCap = 60

InventoryWidth = 10
InventoryHeight = 12

TechWidth = 10
TechHeight = 6

SpecialTechWidth = 10
SpecialTechHeight = 6

ImproveShip = true
ImproveWeapon = true
ImproveAlien = true
ImproveVehicle = true
ImproveInventory = true
ImproveFreighter = true

ImproveSpecialSlots = false
MaxSlot = false

InputUserImproveShip = {ImproveShip,
[[
    Would you like improve ship slots?
    Default = Y | Current = >> ]] .. (ImproveShip and "Y" or "N") .. [[ <<
]]}
InputUserImproveWeapon = {ImproveWeapon,
[[
    Would you like improve weapon slots?
    Default = Y | Current = >> ]] .. (ImproveWeapon and "Y" or "N") .. [[ <<
]]}
InputUserImproveAlien = {ImproveAlien,
[[
    Would you like improve living ship slots?
    Default = Y | Current = >> ]] .. (ImproveAlien and "Y" or "N") .. [[ <<
]]}
InputUserImproveVehicle = {ImproveVehicle,
[[
    Would you like improve exocraft slots?
    Default = Y | Current = >> ]] .. (ImproveVehicle and "Y" or "N") .. [[ <<
]]}
InputUserImproveInventory = {ImproveInventory,
[[
    Would you like improve ship slots?
    Default = Y | Current = >> ]] .. (ImproveInventory and "Y" or "N") .. [[ <<
]]}
InputUserImproveFreighter = {ImproveFreighter,
[[
    Would you like improve freighter slots?
    Default = Y | Current = >> ]] .. (ImproveFreighter and "Y" or "N") .. [[ <<
]]}

InputUserImproveSpecialSlots = {ImproveSpecialSlots,
[[
    Would you like all your suit slots be overcharged?
    This change is permanent unless by reverting with Save Editing.
    Default = N | Current = >> ]] .. (ImproveSpecialSlots and "Y" or "N") .. [[ <<
]]}
InputUserMaxSlot = {MaxSlot,
[[
    Would you like max slot on all inventories?
    Default = N | Current = >> ]] .. (MaxSlot and "Y" or "N") .. [[ <<
]]}

ImproveShip = GUIF(InputUserImproveShip, 10)
ImproveWeapon = GUIF(InputUserImproveWeapon, 10)
ImproveAlien = GUIF(InputUserImproveAlien, 10)
ImproveVehicle = GUIF(InputUserImproveVehicle, 10)
ImproveInventory = GUIF(InputUserImproveInventory, 10)
ImproveFreighter = GUIF(InputUserImproveFreighter, 10)

ImproveSpecialSlots = GUIF(InputUserImproveSpecialSlots,10)
MaxSlot = GUIF(InputUserMaxSlot, 10)

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

    "RobotSmall",
    "RobotMedium",
    "RobotLarge",

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
    "Sail",
    "Robot"
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
                    ["MBIN_FILE_SOURCE"] = InventoryTablePath
                },
                {
                    ["MBIN_FILE_SOURCE"] = DefaultRealityPath
                },
                {
                    ["MBIN_FILE_SOURCE"] = DefaultSaveDatePath
                }
            }
        }
    }
}

local ChangesToInventoryTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]

function EditInventory(type, maxSlot)
    print(type)
    if ChangesToInventoryTable["EXML_CHANGE_TABLE"] == nil then
        print("Initialize EXML_CHANGE_TABLE")
        ChangesToInventoryTable["EXML_CHANGE_TABLE"] = {}
    end

    if maxSlot or string.find(type, "Vehicle") then
        print("vehicle "..type)
        ChangesToInventoryTable["EXML_CHANGE_TABLE"][#ChangesToInventoryTable["EXML_CHANGE_TABLE"] + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {type, "GcInventoryLayoutGenerationDataEntry.xml"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"MinSlots", MaxInventoryCap},
                {"MaxSlots", MaxInventoryCap},
                {"MinTechSlots", MaxTechCap},
                {"MaxTechSlots", MaxTechCap}
            }
        }
    end

    if ImproveSpecialSlots then
        ChangesToInventoryTable["EXML_CHANGE_TABLE"][#ChangesToInventoryTable["EXML_CHANGE_TABLE"] + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {type, "GcInventoryLayoutGenerationDataEntry.xml"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"MaxNumSpecialTechSlots", (SpecialTechHeight * SpecialTechWidth)}
            }
        }

        ChangesToInventoryTable["EXML_CHANGE_TABLE"][#ChangesToInventoryTable["EXML_CHANGE_TABLE"] + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {type, "GcInventoryLayoutGenerationDataEntry.xml", "SpecialTechSlotMaxIndex", "GcInventoryIndex.xml"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"X", SpecialTechWidth},
                {"Y", SpecialTechHeight}
            }
        }
    end
    if type ~= "Suite" then
        ChangesToInventoryTable["EXML_CHANGE_TABLE"][#ChangesToInventoryTable["EXML_CHANGE_TABLE"] + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {type, "GcInventoryLayoutGenerationDataEntry.xml", "Bounds", "GcInventoryLayoutGenerationBounds.xml"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"MaxWidthSmall",     InventoryWidth},
                {"MaxHeightSmall",    InventoryHeight},
                {"MaxWidthStandard",  InventoryWidth},
                {"MaxHeightStandard", InventoryHeight},
                {"MaxWidthLarge",     InventoryWidth},
                {"MaxHeightLarge",    InventoryHeight}
            }
        }

        ChangesToInventoryTable["EXML_CHANGE_TABLE"][#ChangesToInventoryTable["EXML_CHANGE_TABLE"] + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {type, "GcInventoryLayoutGenerationDataEntry.xml", "TechBounds", "GcInventoryLayoutGenerationBounds.xml"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"MaxWidthSmall",     TechWidth},
                {"MaxHeightSmall",    TechHeight},
                {"MaxWidthStandard",  TechWidth},
                {"MaxHeightStandard", TechHeight},
                {"MaxWidthLarge",     TechWidth},
                {"MaxHeightLarge",    TechHeight}
            }
        }
    end
end

function ImproveClassSlotLimit(type)
    ChangesToInventoryTable["EXML_CHANGE_TABLE"][#ChangesToInventoryTable["EXML_CHANGE_TABLE"] + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", type, "MaxInventoryCapacity"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"C", MaxInventoryCap},
            {"B", MaxInventoryCap},
            {"A", MaxInventoryCap},
            {"S", MaxInventoryCap}
        }
    }

    ChangesToInventoryTable["EXML_CHANGE_TABLE"][#ChangesToInventoryTable["EXML_CHANGE_TABLE"] + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", type, "MaxTechInventoryCapacity"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"C", MaxTechCap},
            {"B", MaxTechCap},
            {"A", MaxTechCap},
            {"S", MaxTechCap}
        }
    }
end

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

    ChangesToInventoryTable["EXML_CHANGE_TABLE"][#ChangesToInventoryTable["EXML_CHANGE_TABLE"] + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"WeaponInventoryMaxUpgradeSize", "GcWeaponInventoryMaxUpgradeCapacity.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"C", MaxTechCap},
            {"B", MaxTechCap},
            {"A", MaxTechCap},
            {"S", MaxTechCap}
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

local ChangesToDefaultReality = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]
function NewSaveStartingSlots()
    ChangesToDefaultReality["EXML_CHANGE_TABLE"] = {}
    ChangesToDefaultReality["EXML_CHANGE_TABLE"][#ChangesToDefaultReality["EXML_CHANGE_TABLE"]  + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"SuitStartingSlotLayout", "GcInventoryLayout.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Slots", MaxInventoryCap}
        }
    }
    ChangesToDefaultReality["EXML_CHANGE_TABLE"] [#ChangesToDefaultReality["EXML_CHANGE_TABLE"]  + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ShipStartingLayout", "GcInventoryLayout.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Slots", MaxInventoryCap}
        }
    }
    ChangesToDefaultReality["EXML_CHANGE_TABLE"] [#ChangesToDefaultReality["EXML_CHANGE_TABLE"]  + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"SuitTechOnlyStartingSlotLayout", "GcInventoryLayout.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Slots", MaxTechCap}
        }
    }
    ChangesToDefaultReality["EXML_CHANGE_TABLE"] [#ChangesToDefaultReality["EXML_CHANGE_TABLE"]  + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ShipTechOnlyStartingLayout", "GcInventoryLayout.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Slots", MaxTechCap}
        }
    }
end

function SpecialSlot(row, col)
    return
    [[
      <Property value="GcInventorySpecialSlot.xml">
        <Property name="Type" value="GcInventorySpecialSlotType.xml">
          <Property name="InventorySpecialSlotType" value="TechBonus" />
        </Property>
        <Property name="Index" value="GcInventoryIndex.xml">
          <Property name="X" value="]]..row..[[" />
          <Property name="Y" value="]]..col..[[" />
        </Property>
      </Property>
    ]]
end

-- local ChangesToDefaultSaveData = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]
local ChangesToDefaultSaveData = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]
function SaveDataSpecialSlots()
    local specialTechEntries = {}
    for row = 0, SpecialTechWidth, 1 do
        for col = 0, SpecialTechHeight, 1 do
            table.insert(specialTechEntries, SpecialSlot(row, col))
        end
    end

    ChangesToDefaultSaveData["EXML_CHANGE_TABLE"] = 
    {
        {
            ["PRECEDING_KEY_WORDS"] = {"Inventory_TechOnly", "SpecialSlots"},
            ["ADD"]	= table.concat(specialTechEntries)
        },
        {
            ["PRECEDING_KEY_WORDS"] = {"Buggy", "Inventory_TechOnly", "SpecialSlots"},
            ["ADD"]	= table.concat(specialTechEntries)
        },
        {
            ["PRECEDING_KEY_WORDS"] = {"Bike", "Inventory_TechOnly", "SpecialSlots"},
            ["ADD"]	= table.concat(specialTechEntries)
        },
        {
            ["PRECEDING_KEY_WORDS"] = {"Truck", "Inventory_TechOnly", "SpecialSlots"},
            ["ADD"]	= table.concat(specialTechEntries)
        },
        {
            ["PRECEDING_KEY_WORDS"] = {"WheeledBike", "Inventory_TechOnly", "SpecialSlots"},
            ["ADD"]	= table.concat(specialTechEntries)
        },
        {
            ["PRECEDING_KEY_WORDS"] = {"Hovercraft", "Inventory_TechOnly", "SpecialSlots"},
            ["ADD"]	= table.concat(specialTechEntries)
        },
        {
            ["PRECEDING_KEY_WORDS"] = {"Submarine", "Inventory_TechOnly", "SpecialSlots"},
            ["ADD"]	= table.concat(specialTechEntries)
        },
        {
            ["PRECEDING_KEY_WORDS"] = {"Mech", "Inventory_TechOnly", "SpecialSlots"},
            ["ADD"]	= table.concat(specialTechEntries)
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
    if MaxSlot then
        NewSaveStartingSlots()
    end
end
if ImproveFreighter then
    ImproveFreighterInventory()
end

if ImproveSpecialSlots then
    SaveDataSpecialSlots()
end