ModName = "AddDerelictFreighterLootToStore"
Author = "Jackty89"

DefaultRealityPath = "METADATA/REALITY/DEFAULTREALITY.MBIN"
UnlockableItemTreesPath = "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN"

MAINTREE = "UI_PURCHASABLE_BASEPARTS_TREE"
ROOT = "SLIME_MED"
TECHSUB = "UI_DECORATION_TREE"
COSTTYPE = "SALVAGE"
SubList = {}
ListOfIds =
{
    "MEDTUBE",
    "HEATER",
    "FOORLIGHT",
    "PLANTTUBE",
    "LOCKER2",
    "ABAND_SHELF",
    "ABAND_CRATE_M",
    "ABAND_CRATE_L",
    "ABAND_CRATE_XL",
    "ABAND_CASE",
    "FOOTLOCKER",
    "ABAND_BENCH",
    "PALLET",
    "ABAND_BARREL"
}

ListOfIdsSplitForTree =
{
    {
        {"MEDTUBE", "1"},
        {"HEATER", "1"},
        {"FOORLIGHT", "1"},
        {"PLANTTUBE", "1"},

        {"ABAND_SHELF", "2"},
        {"ABAND_CRATE_M", "2"},
        {"ABAND_CRATE_L", "2"},
        {"ABAND_CRATE_XL", "2"},

        {"ABAND_CASE", "3"},
        {"FOOTLOCKER", "3"},
        {"ABAND_BENCH", "3"},
        {"PALLET", "3"},

        {"LOCKER2", "4"},
        {"ABAND_BARREL", "4"}
    }
}

function CreateMapShopEntry(NewId)
    return [[
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="]]..NewId..[[" />
        </Property>
    ]]
end

StarMapShopEntry = ""

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
                                {"MinItemsForSale", #ListOfIds},
                                {"MaxItemsForSale", #ListOfIds}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = UnlockableItemTreesPath,
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                }
            }
        }
    }
}

local ChangesToDefaultReality = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #ListOfIds do
    StarMapShopEntry = StarMapShopEntry .. CreateMapShopEntry(ListOfIds[i])
    ChangesToDefaultReality[#ChangesToDefaultReality + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Value", ListOfIds[i]},
        ["REMOVE"] = "SECTION"
    }
    if i == #ListOfIds then
        ChangesToDefaultReality[#ChangesToDefaultReality + 1] =
        {
            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "Scrap", "AlwaysPresentProducts"},
            ["ADD"] = StarMapShopEntry
        }
    end
end

-- create itemtree
function CreateModTabpageTree(RootTech, Children, CostTypeID)
    return
    [[
        <Property value="GcUnlockableItemTree.xml">
            <Property name="Title" value="]]..TECHSUB..[[" />
            <Property name="CostTypeID" value="]]..CostTypeID..[[" />
            <Property name="Root" value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="]]..RootTech..[[" />
                <Property name="Children">
                ]]..Children..[[
                </Property>
            </Property>
        </Property>
    ]]
end

function CreateTabPageChildren(ItemName, PrevChildMod)
    local result = ""
    if PrevChildMod == "" then
        result =
        [[
            <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="]]..ItemName..[[" />
                <Property name="Children" />
            </Property>
        ]]
    else
        result =
        [[
            <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="]]..ItemName..[[" />
                <Property name="Children">
                ]]..PrevChildMod..[[
                </Property>
            </Property>
        ]]
    end

    return result
end

function CreateSubList(ModlistNumberOld,ModlistNumber, ModId)
    if ModlistNumberOld == ModlistNumber then
        SubList[#SubList+1] = ModId
    else
        SubList = {}
        SubList[#SubList+1] = ModId
    end
end


local ChangesToUnlockableItemTrees = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #ListOfIdsSplitForTree do
    local TechTree = MAINTREE
    local RootTech = ROOT
    local CostType = COSTTYPE

    local Items = ListOfIdsSplitForTree[i]
    local ItemSubsLists = {}

    local Tree = ""
    local Children = {}

    local OldItemListNumber = ""

    for j = 1, #Items do
        local Item = Items[j]
        local ItemID = Item[1]
        local ItemlistNumber = Item[2]

        CreateSubList(OldItemListNumber, ItemlistNumber, ItemID)

        if OldItemListNumber~=ItemlistNumber then
            ItemSubsLists[#ItemSubsLists+1] = SubList
        else
            ItemSubsLists[#ItemSubsLists] = SubList
        end
        OldItemListNumber = ItemlistNumber
    end

    for k = 1, #ItemSubsLists do
        local ItemSubList = ItemSubsLists[k]
        local ModTree = ""
        for l = #ItemSubList, 1, -1  do
            ModTree = CreateTabPageChildren(ItemSubList[l], ModTree)
        end
        table.insert(Children, ModTree)
    end

    Tree = CreateModTabpageTree(RootTech, table.concat(Children), CostType)

    local UnlockableItemTree =
    {
        ["SPECIAL_KEY_WORDS"] = {"Title", TechTree, "Title", TECHSUB},
        ["REPLACE_TYPE"] = "ADDAFTERSECTION",
        ["ADD"]	= Tree
    }
    ChangesToUnlockableItemTrees[#ChangesToUnlockableItemTrees +1] = UnlockableItemTree
end