ModName                                  = "InventoryRebalance"

DIFFICULTYCONFIG                         = "METADATA/GAMESTATE/DIFFICULTYCONFIG.MBIN"

SubstanceAndProductSizeLimit             = 9999999

-- Standard == NORMAL
SubstanceInventorySizeStandard           = 50000
SubstanceCargoSizeStandard               = 100000
ProductInventorySizeStandard             = 50
ProductCargoSizeStandard                 = 100

-- Restricted == Survival/Perma
SubstanceCargoSizeRestricted              = 1000
SubstanceShipInventorySizeRestricted      = 2000
SubstanceShipCargoSizeRestricted          = 2000
SubstanceFreighterInventorySizeRestricted = 5000
SubstanceFreighterCargoSizeRestricted     = 5000
SubstanceVehicleInventorySizeRestricted   = 2000
SubstanceChestAndCapSizeRestricted        = 5000

ProductShipInventorySizeRestricted       = 10
ProductShipCargoSizeRestricted           = 10
ProductFreighterInventorySizeRestricted  = 25
ProductFreighterCargoSizeRestricted      = 25
ProductVehicleInventorySizeRestricted    = 10
ProductChestAndCapSizeRestricted         = 25

ExtraChanges = false
Choice = 2

InputExtraChanges = {ExtraChanges,
[[
    Do want to also change the highest difficulty stacksizes?
    Default = N | Current = >> ]] .. (ExtraChanges and "Y" or "N") .. [[ <<
]]}

ExtraChanges = GUIF(InputExtraChanges, 10)

if ExtraChanges then

    Input_Choice = {Choice,
    [[
        Which edits do you want to use the Normal (1) or Surival/Perma (2) ?
        Default = ]]..Choice..[[ <<
    ]]}
    Choice = GUIF(Input_Choice, 10)
end

Edit_keys = {"NORMAL", "RESTRICED"}

Value_Change_Edits =
{
    ["NORMAL"] =
    {
        ["STACK_SIZE"] ={
            {"SubstanceStackLimit", SubstanceAndProductSizeLimit},
            {"ProductStackLimit",   SubstanceAndProductSizeLimit}
        },
        ["VCT_EDITS_SUB"] =
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
        },
        ["VCT_EDITS_PROD"] =
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
    ["RESTRICED"] =
    {
        ["STACK_SIZE"] ={
            {"SubstanceStackLimit", SubstanceAndProductSizeLimit},
            {"ProductStackLimit",   SubstanceAndProductSizeLimit}
        },
        ["VCT_EDITS_SUB"] =
        {
            {"PersonalCargo",     SubstanceCargoSizeRestricted},
            {"Ship",              SubstanceShipInventorySizeRestricted},
            {"ShipCargo",         SubstanceShipCargoSizeRestricted},
            {"Freighter",         SubstanceFreighterInventorySizeRestricted},
            {"FreighterCargo",    SubstanceFreighterCargoSizeRestricted},
            {"Vehicle",           SubstanceVehicleInventorySizeRestricted},
            {"Chest",             SubstanceChestAndCapSizeRestricted},
            {"BaseCapsule",       SubstanceChestAndCapSizeRestricted}
        },
        ["VCT_EDITS_PROD"] =
        {
            {"Ship",              ProductShipInventorySizeRestricted},
            {"ShipCargo",         ProductShipCargoSizeRestricted},
            {"Freighter",         ProductFreighterInventorySizeRestricted},
            {"FreighterCargo",    ProductFreighterCargoSizeRestricted},
            {"Vehicle",           ProductVehicleInventorySizeRestricted},
            {"Chest",             ProductChestAndCapSizeRestricted},
            {"BaseCapsule",       ProductChestAndCapSizeRestricted}
        }
    }
}


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
                        -- high == normal difficulty
                        {
                            ["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["VALUE_CHANGE_TABLE"]  = Value_Change_Edits["NORMAL"]["STACK_SIZE"]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  = Value_Change_Edits["NORMAL"]["VCT_EDITS_SUB"]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"High", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  = Value_Change_Edits["NORMAL"]["VCT_EDITS_PROD"]
                        },
                        -- Restricted == Survival/Perma
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["VALUE_CHANGE_TABLE"] = Value_Change_Edits["RESTRICED"]["STACK_SIZE"]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  = Value_Change_Edits["RESTRICED"]["VCT_EDITS_SUB"]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  = Value_Change_Edits["RESTRICED"]["VCT_EDITS_PROD"]
                        }
                    }
                }
            }
        }
    }
}

DifficultyConfigTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
function EditStackSizesLow()
    Vct_Stack_Size = Value_Change_Edits[Edit_keys[Choice]]["STACK_SIZE"]
    Vct_Edits_Sub = Value_Change_Edits[Edit_keys[Choice]]["VCT_EDITS_SUB"]
    Vct_Edits_Prod = Value_Change_Edits[Edit_keys[Choice]]["VCT_EDITS_PROD"]

    -- low is the highest difficulty
    DifficultyConfigTable[#DifficultyConfigTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"low", "GcDifficultyInventoryStackSizeOptionData.xml"},
        ["VALUE_CHANGE_TABLE"]  = Vct_Stack_Size
    }
    DifficultyConfigTable[#DifficultyConfigTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"low", "GcDifficultyInventoryStackSizeOptionData.xml"},
        ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
        ["VALUE_CHANGE_TABLE"]  = Vct_Edits_Sub
    }
    DifficultyConfigTable[#DifficultyConfigTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"low", "GcDifficultyInventoryStackSizeOptionData.xml"},
        ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
        ["VALUE_CHANGE_TABLE"]  = Vct_Edits_Prod
    }
end

if ExtraChanges then
    EditStackSizesLow()
end