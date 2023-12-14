ModName = "AddDerelictFreighterLootToStore"
Author = "Jackty89"

DefaultRealityPath = "METADATA/REALITY/DEFAULTREALITY.MBIN"
UnlockableItemTreesPath = "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN"

MAINTREE = "UI_PURCHASABLE_BASEPARTS_TREE"
ROOT = "SLIME_MED"
TECHSUB = "UI_DECORATION_TREE"
COSTTYPE = "SALVAGE"

List_Of_Ids =
{
    "MEDTUBE",
    "HEATER",
    "FOORLIGHT",
    "PLANTTUBE",
    "ABAND_SHELF",
    "ABAND_CRATE_M",
    "ABAND_CRATE_L",
    "ABAND_CRATE_XL",
    "ABAND_CASE",
    "FOOTLOCKER",
    "ABAND_BENCH",
    "PALLET",
    "LOCKER2",
    "ABAND_BARREL"
}

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName .. ".pak",
    ["MOD_DESCRIPTION"] = ModName,
    ["MOD_AUTHOR"] = Author,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = DefaultRealityPath,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "Scrap"},
                            ["MATH_OPERATION"] = "+",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", #List_Of_Ids},
                                {"MaxItemsForSale", #List_Of_Ids}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = UnlockableItemTreesPath,
                    ["EXML_CHANGE_TABLE"] = {}
                }
            }
        }
    }
}

local Changes_To_Default_Reality = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local Changes_To_Unlockable_Item_Trees = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

function Create_Mapshop_Entry(Mapshop_Entry_Id)
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Value", Mapshop_Entry_Id},
        ["REMOVE"] = "SECTION"
    }
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "Scrap", "AlwaysPresentProducts", "NMSString0x10.xml"},
        ["SEC_SAVE_TO"] = "MAPSHOP_ENTRY"
    }
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["SEC_EDIT"] = "MAPSHOP_ENTRY",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", Mapshop_Entry_Id}
        }
    }
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Value", "DECAL_HAZARD"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = "MAPSHOP_ENTRY"
    }
end

function Edit_Store_Entries()
    for i = 1, #List_Of_Ids do
        Create_Mapshop_Entry(List_Of_Ids[i])
    end
end

function Create_New_Tree_Root()
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"BaseParts", "GcUnlockableItemTrees.xml"},
        ["PRECEDING_KEY_WORDS"] = {"Trees", "GcUnlockableItemTree.xml"},
        ["SEC_SAVE_TO"] = "NEW_BASE_BUILDING_ROOT_SEC"
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SEC_EDIT"] = "NEW_BASE_BUILDING_ROOT_SEC",
        ["PRECEDING_KEY_WORDS"] = { "GcUnlockableItemTreeNode.xml"},
        ["REPLACE_TYPE"] = "ALL",
        ["REMOVE"] = "SECTION"
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SEC_EDIT"] = "NEW_BASE_BUILDING_ROOT_SEC",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"CostTypeID", COSTTYPE},
        }
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SEC_EDIT"] = "NEW_BASE_BUILDING_ROOT_SEC",
        ["PRECEDING_KEY_WORDS"] = {"Root"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Unlockable", ROOT},
        }
    }
end

function Create_Item_Tree_Node(Item_Id)
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"BaseParts", "GcUnlockableItemTrees.xml", "Unlockable", "MAINROOMFRAME"},
        ["SEC_SAVE_TO"] = "ITEM_TREE_NODE"
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SEC_EDIT"] = "ITEM_TREE_NODE",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Unlockable", Item_Id},
        }
    }
end

function Create_New_Item_Trees()
    Create_New_Tree_Root()
    Elements_in_branch = 0
    for i = 1, #List_Of_Ids do
        Item_Id = List_Of_Ids[i]
        Old_id = ""
        Elements_in_branch = Elements_in_branch +1
        Create_Item_Tree_Node(Item_Id)
        if Elements_in_branch == 1 then
            Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
            {
                ["SEC_EDIT"] = "NEW_BASE_BUILDING_ROOT_SEC",
                ["PRECEDING_KEY_WORDS"] = {"Children"},
                ["CREATE_HOS"] = "TRUE",
                ["SEC_ADD_NAMED"] = "ITEM_TREE_NODE"
            }
        elseif Elements_in_branch > 1 then
            Old_id = List_Of_Ids[i -1]
            Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
            {
                ["SEC_EDIT"] = "NEW_BASE_BUILDING_ROOT_SEC",
                ["SPECIAL_KEY_WORDS"] = {"Unlockable", Old_id},
                ["PRECEDING_KEY_WORDS"] = {"Children"},
                ["CREATE_HOS"] = "TRUE",
                ["SEC_ADD_NAMED"] = "ITEM_TREE_NODE"
            }
        end
        if Elements_in_branch == 4 then
            Elements_in_branch = 0
        end
    end

    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Title", MAINTREE, "Title", TECHSUB},
        ["REPLACE_TYPE"] = "ADDAFTERSECTION",
        ["SEC_ADD_NAMED"] = "NEW_BASE_BUILDING_ROOT_SEC"
    }
end

Edit_Store_Entries()
Create_New_Item_Trees()