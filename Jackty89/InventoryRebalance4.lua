ModName = "InventoryRebalance"

DIFFICULTYCONFIG = "METADATA/GAMESTATE/DIFFICULTYCONFIG.MBIN"

SubstanceAndProductSizeLimit = 9999999

-- Standard == NORMAL
SubstanceInventorySizeStandard = 50000
SubstanceCargoSizeStandard = 100000
ProductInventorySizeStandard = 50
ProductCargoSizeStandard = 100

-- Restricted == Survival/Perma
SubstanceInventorySizeRestricted = 500
SubstanceCargoSizeRestricted = 1000
SubstanceShipInventorySizeRestricted = 2000
SubstanceShipCargoSizeRestricted = 2000
SubstanceFreighterInventorySizeRestricted = 5000
SubstanceFreighterCargoSizeRestricted = 5000
SubstanceVehicleInventorySizeRestricted = 2000
SubstanceChestAndCapSizeRestricted = 5000
SubstanceMaintenanceObjectAndUIPopup = 250

ProductPersonalInventory = 5
ProductPersonalInventoryCargo = 10
ProductShipInventorySizeRestricted = 10
ProductShipCargoSizeRestricted = 10
ProductFreighterInventorySizeRestricted = 25
ProductFreighterCargoSizeRestricted = 25
ProductVehicleInventorySizeRestricted = 10
ProductChestAndCapSizeRestricted = 25
ProductMaintenanceObjectAndUIPopup = 250

ExtraChanges = false
Choice = 2

InputExtraChanges = {ExtraChanges,
[[
    Do want to also change stack-sizes for Harsh invetory stack limit?
    Default = N | Current = >> ]] .. (ExtraChanges and "Y" or "N") .. [[ <<
]]}

ExtraChanges = GUIF(InputExtraChanges, 10)

if ExtraChanges then

    Input_Choice = {Choice,
    [[
        Which edits do you want to use the Normal (1) or Survival/Perma-death (2) ?
        Default = ]]..Choice..[[ <<
    ]]}
    Choice = GUIF(Input_Choice, 10)
end

Edit_keys = {"NORMAL", "RESTRICTED"}

Value_Change_Edits =
{
    NORMAL =
    {
        STACK_SIZE =
        {
            {"SubstanceStackLimit", SubstanceAndProductSizeLimit},
            {"ProductStackLimit", SubstanceAndProductSizeLimit}
        },
        VCT_EDITS_SUB =
        {
            {"Default", SubstanceInventorySizeStandard},
            {"Personal", SubstanceInventorySizeStandard},
            {"PersonalCargo", SubstanceCargoSizeStandard},
            {"Ship", SubstanceInventorySizeStandard},
            {"ShipCargo", SubstanceCargoSizeStandard},
            {"Freighter", SubstanceInventorySizeStandard},
            {"FreighterCargo", SubstanceCargoSizeStandard},
            {"Vehicle", SubstanceInventorySizeStandard},
            {"Chest", SubstanceInventorySizeStandard},
            {"BaseCapsule", SubstanceInventorySizeStandard},
            {"MaintenanceObject", SubstanceInventorySizeStandard},
            {"UIPopup", SubstanceInventorySizeStandard},
        },
        VCT_EDITS_PROD =
        {
            {"Default", ProductInventorySizeStandard},
            {"Personal", ProductInventorySizeStandard},
            {"PersonalCargo", ProductCargoSizeStandard},
            {"Ship", ProductInventorySizeStandard},
            {"ShipCargo", ProductCargoSizeStandard},
            {"Freighter", ProductInventorySizeStandard},
            {"FreighterCargo", ProductCargoSizeStandard},
            {"Vehicle", ProductInventorySizeStandard},
            {"Chest", ProductInventorySizeStandard},
            {"BaseCapsule", ProductInventorySizeStandard},
            {"MaintenanceObject", ProductInventorySizeStandard},
            {"UIPopup", ProductInventorySizeStandard},
        }
    },
    RESTRICTED =
    {
        STACK_SIZE =
        {
            {"SubstanceStackLimit", SubstanceAndProductSizeLimit},
            {"ProductStackLimit", SubstanceAndProductSizeLimit}
        },
        VCT_EDITS_SUB =
        {
            {"Default", SubstanceInventorySizeRestricted},
            {"Personal", SubstanceInventorySizeRestricted}, 
            {"PersonalCargo", SubstanceCargoSizeRestricted},
            {"Ship", SubstanceShipInventorySizeRestricted},
            {"ShipCargo", SubstanceShipCargoSizeRestricted},
            {"Freighter", SubstanceFreighterInventorySizeRestricted},
            {"FreighterCargo", SubstanceFreighterCargoSizeRestricted},
            {"Vehicle", SubstanceVehicleInventorySizeRestricted},
            {"Chest", SubstanceChestAndCapSizeRestricted},
            {"BaseCapsule", SubstanceChestAndCapSizeRestricted},
            {"MaintenanceObject", SubstanceMaintenanceObjectAndUIPopup},
            {"UIPopup", SubstanceMaintenanceObjectAndUIPopup},
        },
        VCT_EDITS_PROD =
        {
            {"Default", ProductPersonalInventory},
            {"Personal", ProductPersonalInventory},
            {"PersonalCargo", ProductPersonalInventoryCargo},
            {"Ship", ProductShipInventorySizeRestricted},
            {"ShipCargo", ProductShipCargoSizeRestricted},
            {"Freighter", ProductFreighterInventorySizeRestricted},
            {"FreighterCargo", ProductFreighterCargoSizeRestricted},
            {"Vehicle", ProductVehicleInventorySizeRestricted},
            {"Chest", ProductChestAndCapSizeRestricted},
            {"BaseCapsule", ProductChestAndCapSizeRestricted}, 
            {"MaintenanceObject", ProductMaintenanceObjectAndUIPopup},
            {"UIPopup", ProductMaintenanceObjectAndUIPopup},
        }
    }
}


NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = ModName,
    MOD_DESCRIPTION = "Rebalance of InventorySize and Deconstruction cost",
    MOD_AUTHOR = "Jackty89",
    MODIFICATIONS =
    {
        {
            MBIN_CHANGE_TABLE =
            {
                {
                    MBIN_FILE_SOURCE = DIFFICULTYCONFIG,
                    MXML_CHANGE_TABLE =
                    {
                        -- high == standard option == normal difficulty
                        {
                            SPECIAL_KEY_WORDS = {"High", "GcDifficultyInventoryStackSizeOptionData"},
                            VALUE_CHANGE_TABLE = Value_Change_Edits.NORMAL.STACK_SIZE
                        },
                        {
                            SPECIAL_KEY_WORDS = {"High", "GcDifficultyInventoryStackSizeOptionData"},
                            PRECEDING_KEY_WORDS = {"MaxSubstanceStackSizes"},
                            VALUE_CHANGE_TABLE = Value_Change_Edits.NORMAL.VCT_EDITS_SUB
                        },
                        {
                            SPECIAL_KEY_WORDS = {"High", "GcDifficultyInventoryStackSizeOptionData"},
                            PRECEDING_KEY_WORDS = {"MaxProductStackSizes"},
                            VALUE_CHANGE_TABLE = Value_Change_Edits.NORMAL.VCT_EDITS_PROD
                        },
                        -- Normal == Restricted == Survival/Perma
                        {
                            SPECIAL_KEY_WORDS = {"Normal", "GcDifficultyInventoryStackSizeOptionData"},
                            VALUE_CHANGE_TABLE = Value_Change_Edits.RESTRICTED.STACK_SIZE
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Normal", "GcDifficultyInventoryStackSizeOptionData"},
                            PRECEDING_KEY_WORDS = {"MaxSubstanceStackSizes"},
                            VALUE_CHANGE_TABLE = Value_Change_Edits.RESTRICTED.VCT_EDITS_SUB
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Normal", "GcDifficultyInventoryStackSizeOptionData"},
                            PRECEDING_KEY_WORDS = {"MaxProductStackSizes"},
                            VALUE_CHANGE_TABLE = Value_Change_Edits.RESTRICTED.VCT_EDITS_PROD
                        }
                    }
                }
            }
        }
    }
}

DifficultyConfigTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]
function EditStackSizesLow()
    Vct_Stack_Size = Value_Change_Edits[Edit_keys[Choice]]["STACK_SIZE"]
    Vct_Edits_Sub = Value_Change_Edits[Edit_keys[Choice]]["VCT_EDITS_SUB"]
    Vct_Edits_Prod = Value_Change_Edits[Edit_keys[Choice]]["VCT_EDITS_PROD"]

    -- low == harsh option == most restrictive setting
    DifficultyConfigTable[#DifficultyConfigTable + 1] =
    {
        SPECIAL_KEY_WORDS = {"low", "GcDifficultyInventoryStackSizeOptionData"},
        VALUE_CHANGE_TABLE = Vct_Stack_Size
    }
    DifficultyConfigTable[#DifficultyConfigTable + 1] =
    {
        SPECIAL_KEY_WORDS = {"low", "GcDifficultyInventoryStackSizeOptionData"},
        PRECEDING_KEY_WORDS = {"MaxSubstanceStackSizes"},
        VALUE_CHANGE_TABLE = Vct_Edits_Sub
    }
    DifficultyConfigTable[#DifficultyConfigTable + 1] =
    {
        SPECIAL_KEY_WORDS = {"low", "GcDifficultyInventoryStackSizeOptionData"},
        PRECEDING_KEY_WORDS = {"MaxProductStackSizes"},
        VALUE_CHANGE_TABLE = Vct_Edits_Prod
    }
end

if ExtraChanges then
    EditStackSizesLow()
end