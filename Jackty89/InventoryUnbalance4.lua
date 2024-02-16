ModName                                  = "InventoryUnbalance"

DIFFICULTYCONFIG                         = "METADATA/GAMESTATE/DIFFICULTYCONFIG.MBIN"

SubstanceAndProductSizeLimit             = 9999999

SubstanceInventorySizeAll                = 50000
SubstanceCargoSizeAll                    = 100000
ProductInventorySizeAll                  = 2500
ProductCargoSizeAll                      = 5000

Types = {"High", "Normal", "Low"}

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
                    }
                }
            }
        }
    }
}

DifficultyConfigTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
function EditStackSizes(currentType)

    DifficultyConfigTable[#DifficultyConfigTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {currentType, "GcDifficultyInventoryStackSizeOptionData.xml"},
        ["VALUE_CHANGE_TABLE"]  =
        {
            {"SubstanceStackLimit", SubstanceAndProductSizeLimit},
            {"ProductStackLimit",   SubstanceAndProductSizeLimit},
        }
    }
    DifficultyConfigTable[#DifficultyConfigTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {currentType, "GcDifficultyInventoryStackSizeOptionData.xml"},
        ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
        ["VALUE_CHANGE_TABLE"]  =
        {
            {"Default",             SubstanceInventorySizeAll},
            {"Personal",            SubstanceInventorySizeAll},
            {"PersonalCargo",       SubstanceCargoSizeAll},
            {"Ship",                SubstanceInventorySizeAll},
            {"ShipCargo",           SubstanceCargoSizeAll},
            {"Freighter",           SubstanceInventorySizeAll},
            {"FreighterCargo",      SubstanceCargoSizeAll},
            {"Vehicle",             SubstanceInventorySizeAll},
            {"Chest",               SubstanceInventorySizeAll},
            {"BaseCapsule",         SubstanceInventorySizeAll},
            {"MaintenanceObject",   SubstanceInventorySizeAll},
            {"UIPopup",             SubstanceInventorySizeAll},
        }
    }
    DifficultyConfigTable[#DifficultyConfigTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {currentType, "GcDifficultyInventoryStackSizeOptionData.xml"},
        ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
        ["VALUE_CHANGE_TABLE"]  =
        {
            {"Default",           ProductInventorySizeAll},
            {"Personal",          ProductInventorySizeAll},
            {"PersonalCargo",     ProductCargoSizeAll},
            {"Ship",              ProductInventorySizeAll},
            {"ShipCargo",         ProductCargoSizeAll},
            {"Freighter",         ProductInventorySizeAll},
            {"FreighterCargo",    ProductCargoSizeAll},
            {"Vehicle",           ProductInventorySizeAll},
            {"Chest",             ProductInventorySizeAll},
            {"BaseCapsule",       ProductInventorySizeAll},
            {"MaintenanceObject", ProductInventorySizeAll},
            {"UIPopup",           ProductInventorySizeAll}
        }
    }
end

for _key, type in pairs(Types) do
    EditStackSizes(type)
end