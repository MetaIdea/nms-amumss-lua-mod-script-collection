ModeName = "NoStarterShipChallenge"
Author = "Jackty89"

Pick_Up_Id_List =
{
    "GARAGE_B",
    "GARAGE_S",
    "GARAGE_M",
    "GARAGE_L",
    "GARAGE_MECH",
    "GARAGE_SUB"
}

Items_To_Add_To_KnownProducts =
{
    "CARBON_SEAL",
    "BUILDBEACON",
    "BASE_FLAG",
    "BP_ANALYSER",
    "ANTIMATTER",
    "AM_HOUSING",
    "BASE_SWAMP3"
}

Items_To_Add_To_KnownTech =
{
    "TERRAINEDITOR",
    "HYPERDRIVE",
    "STRONGLASER"
}

Want_Beacon = true
Input_Save_Beacon =
{
    Want_Beacon,
    [[
        Would you like a save beacon?
        Default = Y | Current = >> ]] .. (Want_Beacon and "Y" or "N") .. [[ <<
    ]]
}
Want_Beacon = GUIF(Input_Save_Beacon, 10)

Want_Garage = true
Input_Geobay =
{
    Want_Garage,
    [[
        Would you like a Geobay?
        Default = Y | Current = >> ]] .. (Want_Garage and "Y" or "N") .. [[ <<
    ]]
}
Want_Garage = GUIF(Input_Geobay, 10)

Garage_Choice = 5
if Want_Garage then
    Input_Garage_Choice =
    {
        Garage_Choice,
        [[
            Which Geobay do you want
            * 1 = "Pilgrim Geobay"
            * 2 = "Nomad Geobay"
            * 3 = "Roamer Geobay"
            * 4 = "Colossus Geobay"
            * 5 = "Minotaur Geobay"
            * 6 = "Nautilon Geobay"
            Default = 4 | Current = >> ]] .. Garage_Choice .. [[ <<
        ]]
    }
    Garage_Choice = GUIF(Input_Garage_Choice, 10)
end

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModeName .. ".pak",
    ["MOD_DESCRIPTION"] = ModeName,
    ["MOD_AUTHOR"] = Author,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/GAMESTATE/DIFFICULTYCONFIG.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                }
            }
        }
    }
}

local Changes_To_Default_Reality = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local Changes_To_Default_Save_Data = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local Changes_To_Difficulty_Config = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]
local Changes_To_Building_Globals = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["EXML_CHANGE_TABLE"]
local Changes_To_Base_Building_Objects = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][5]["EXML_CHANGE_TABLE"]
local Changes_To_Unlockable_Item_Trees = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][6]["EXML_CHANGE_TABLE"]


function Create_Masters()
    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["SEC_EMPTY"] = "Known_Products"
    }
    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["SEC_EMPTY"] = "Known_Tech"
    }

    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"KnownProducts", "NMSString0x10.xml"},
        ["SEC_SAVE_TO"] = "NMSString0x10_Section"
    }
    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["SEC_EMPTY"] = "Inventory_Elements"
    }
    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Inventory_TechOnly", "GcInventoryContainer.xml"},
        ["PRECEDING_KEY_WORDS"] = {"Slots", "GcInventoryElement.xml"},
        ["SEC_SAVE_TO"] = "Inventory_Element"
    }
end

function Edit_Default_reality()
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ShipStartingLayout", "GcInventoryLayout.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Slots", 0}
        }
    }
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ShipTechOnlyStartingLayout", "GcInventoryLayout.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Slots", 0}
        }
    }
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ShipStartingLayout", "GcInventoryLayout.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Slots", 0}
        }
    }
end

function Create_New_NMSString0x10_Sections(value, master_section)
    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["SEC_EDIT"] = "NMSString0x10_Section",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", value},
        }
    }
    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["SEC_EDIT"] = master_section,
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = "NMSString0x10_Section"
    }
end

function Edit_Inventory_Element(value)
    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["SEC_EDIT"] = "Inventory_Element",
        ["SPECIAL_KEY_WORDS"] = {"Type", "GcInventoryType.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"InventoryType", "Product"},
        }
    }
    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["SEC_EDIT"] = "Inventory_Element",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Id", value},
            {"Amount", "100"},
            {"MaxAmount", "100"},
            {"DamageFactor", "0"},
            {"FullyInstalled", "True"},
            {"X", "-1"},
            {"Y", "-1"}
        }
    }
    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["SEC_EDIT"] = "Inventory_Elements",
        ["SEC_ADD_NAMED"] = "Inventory_Element"
    }
end

function Edit_Starter_ShipSlots_And_Inventory_Items()
    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ShipInventory", "GcInventoryContainer.xml"},
        ["PRECEDING_KEY_WORDS"] = {"Slots"},
        ["REMOVE"] = "SECTION"
    }
    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ShipLayout", "GcInventoryLayout.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Slots", 1}
        }
    }
    -- for (int i = 0; i <= defaultSaveData.State.ShipLayout.Slots; i++)
    --     defaultSaveData.State.ShipInventory.Slots.Add(Inventory.Technology("SHIPSLOT_DMG12", 100, 100));

    for _index, product in ipairs(Items_To_Add_To_KnownProducts) do
        Create_New_NMSString0x10_Sections(product, "Known_Products")
    end
    for _index, tech in ipairs(Items_To_Add_To_KnownTech) do
        Create_New_NMSString0x10_Sections(tech, "Known_Tech")
    end

    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
        ["SEC_ADD_NAMED"] = "Known_Products"
    }

    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"KnownTech"},
        ["SEC_ADD_NAMED"] = "Known_Tech"
    }
    if Want_Garage then
        Edit_Inventory_Element(Pick_Up_Id_List[Garage_Choice])
    end
    if Want_Beacon then
        Edit_Inventory_Element("BUILDBEACON")
    end
    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"State", "GcPlayerStateData.xml", "Inventory", "GcInventoryContainer.xml"},
        ["PRECEDING_KEY_WORDS"] = {"Slots"},
        ["SECTION_ACTIVE"] = 1,
        ["CREATE_HOS"] = "TRUE",
        ["SEC_ADD_NAMED"] = "Inventory_Elements"
    }
end

function Edit_Starting_Weapons()
    Changes_To_Difficulty_Config[#Changes_To_Difficulty_Config + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"StartWithAllItemsKnownDisabledData", "GcDifficultyStartWithAllItemsKnownOptionData.xml", "InitialShipInventory", "GcInventoryContainer.xml"},
        ["PRECEDING_KEY_WORDS"] = {"Slots"},
        ["REMOVE"] = "SECTION"
    }
    Changes_To_Difficulty_Config[#Changes_To_Difficulty_Config + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"StartWithAllItemsKnownDisabledData", "GcDifficultyStartWithAllItemsKnownOptionData.xml", "InitialWeaponInventory", "GcInventoryContainer.xml", "Id", "SCAN1"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"DamageFactor", 0}
        }
    }

    Changes_To_Difficulty_Config[#Changes_To_Difficulty_Config + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"StartWithAllItemsKnownEnabledData", "GcDifficultyStartWithAllItemsKnownOptionData.xml", "InitialShipInventory", "GcInventoryContainer.xml"},
        ["PRECEDING_KEY_WORDS"] = {"Slots"},
        ["REMOVE"] = "SECTION"
    }
    Changes_To_Difficulty_Config[#Changes_To_Difficulty_Config + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"StartWithAllItemsKnownEnabledData", "GcDifficultyStartWithAllItemsKnownOptionData.xml", "InitialWeaponInventory", "GcInventoryContainer.xml", "Id", "SCAN1"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"DamageFactor", 0}
        }
    }
end

function Edit_Starter_Ship_Location()
    Changes_To_Building_Globals[#Changes_To_Building_Globals + 1] =
    {
        ["VALUE_CHANGE_TABLE"] =
        {
            {"StartCrashSiteMinDistance", 500000},
            {"StartCrashSiteMaxDistance", 1000000},
            {"StartShelterMinDistance", 2500},
            {"StartShelterMaxDistance", 5000}
        }
    }
end

function Pick_Up_Geobays()
    for _index, item in ipairs(Pick_Up_Id_List) do
        Changes_To_Base_Building_Objects[#Changes_To_Base_Building_Objects + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", item},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"CanPickUp", "True"}
            }
        }
    end
end


function Base_Parts_Delux()
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"BaseParts", "GcUnlockableItemTrees.xml"},
        ["PRECEDING_KEY_WORDS"] = {"Trees"},
        ["SEC_SAVE_TO"] = "Base_parts"
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"BasicBaseParts", "GcUnlockableItemTrees.xml"},
        ["PRECEDING_KEY_WORDS"] = {"Trees"},
        ["REMOVE"] = "SECTION",
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"BasicBaseParts", "GcUnlockableItemTrees.xml"},
        ["SEC_ADD_NAMED"] = "Base_parts"
    }
end

Create_Masters()
Edit_Default_reality()
Edit_Starter_ShipSlots_And_Inventory_Items()
Edit_Starting_Weapons()
Edit_Starter_Ship_Location()
Pick_Up_Geobays()
Base_Parts_Delux()