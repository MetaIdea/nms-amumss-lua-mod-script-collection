ModName                                  = "SubstanceItemStackMultiplierX100"

GCGAMEPLAYGLOBALS                        = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"
-- INVENTORYTABLE                        = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN"

SubstanceAndProcductSizeLimit            = 9999999

SubstanceInventorySizeAll                = 999999
SubstanceCargoSizeAll                    = 999999
ProductInventorySizeAll                  = 250000
ProductCargoSizeAll                      = 500000

Types = {"High", "Normal", "Low"}

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]        = ModName..".pak",
    ["MOD_DESCRIPTION"]     = "Rebalance of Inventory Size",
    ["MOD_AUTHOR"]          = "Kyler45",
    ["MODIFICATIONS"]       =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]    = GCGAMEPLAYGLOBALS,
                    ["EXML_CHANGE_TABLE"]   =
                    {
                    }
                }
            }
        }
    }
}

GamePlayGlobalsTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
function EditStackSizes(currentType)

    GamePlayGlobalsTable[#GamePlayGlobalsTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {currentType, "GcDifficultyInventoryStackSizeOptionData.xml"},
        ["VALUE_CHANGE_TABLE"]  =
        {
            {"SubstanceStackLimit", SubstanceAndProcductSizeLimit},
            {"ProductStackLimit",   SubstanceAndProcductSizeLimit},
        }
    }
    GamePlayGlobalsTable[#GamePlayGlobalsTable + 1] =
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
    GamePlayGlobalsTable[#GamePlayGlobalsTable + 1] =
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