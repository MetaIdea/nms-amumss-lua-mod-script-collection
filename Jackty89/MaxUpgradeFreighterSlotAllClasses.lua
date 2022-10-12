ModName = "MaxUpgradeFreighterSlotAllClasses"
Author = "Jackty89"

InventoryTablePath = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN"

MaxInventory     = 120
MaxTech          = 60

InventoryWidth   = 10
InventoryHeight  = 12

TechWidth        = 10
TechHeight       = 6

MaxSlot          = false

FreighterSizes = {
    "FreighterSmall",
    "FreighterMedium",
    "FreighterLarge",
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

function ImproveFreighterInventory()
    for _key, freighterSize in ipairs(FreighterSizes) do
        EditInventory(freighterSize, MaxSlot)
    end
    ImproveClassSlotLimit("Freighter")
end

ImproveFreighterInventory()