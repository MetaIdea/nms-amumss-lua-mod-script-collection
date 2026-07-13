MOD_VERSION = "1.0"
NewRecipeTree = {
    {
        ["Title"] = "Forbidden Technology",
        ["CostTypeID"] = "SPECIALS",
        ["Unlockable"] = "TECH_COMP",
        ["Children"] = {
            {"REPAIRKIT", {
                {"PIRATE_PROD", {
                    {"ABAND_LOCATOR", nil},
                    {"POI_LOCATOR", nil},
                    {"CHART_HIVE", nil},
                }},
                {"ILLEGAL_PROD6", {
                    {"S19_TP", {
                        {"PORTAL_JUICE", nil},
                    }},
                    {"SALVAGE_TECH10", nil},
                }},
                {"SENTINEL_LOOT", {
                    {"DRONE_SHARD", {
                        {"SHIPBRAIN_CLEAN", nil},
                        {"SENTFREI_PROD", {
                            {"CHART_ROBOT", nil},
                        }},
                    }},
                }},
            }},
            {"NAV_DATA", {
                {"BP_SALVAGE", {
                    {"FRIG_TOKEN", nil}
                }},
                {"FACT_TOKEN", {
                    {"STATION_KEY", nil}
                }},
            }},
            {"SUIT_INV_TOKEN", {
                {"SHIP_INV_TOKEN", nil},
                {"FREI_INV_TOKEN", nil},
                {"WEAP_INV_TOKEN", nil},
            }},
        },
    }
}

Types =
{
    PRODUCT = "Product",
    SUBSTANCE = "Substance"
}

RequirementsArray =
{
    {
        PRODUCTID = "TECH_COMP",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "CAVE1", REQUIREDAMOUNT = "50", REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = "ROBOT2", REQUIREDAMOUNT = "50", REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = "MICROCHIP", REQUIREDAMOUNT = "2", REQUIREDTYPE = Types.PRODUCT}
        },
        RECIPECOST = 1,
    },
    {
        PRODUCTID = "PORTAL_JUICE",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "ASTEROID1", REQUIREDAMOUNT = "40", REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = "LAND2", REQUIREDAMOUNT = "33", REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = "STELLAR2", REQUIREDAMOUNT = "40", REQUIREDTYPE = Types.SUBSTANCE}
        },
        RECIPECOST = 16,
    },
    {
        PRODUCTID = "REPAIRKIT",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "CASING", REQUIREDAMOUNT = "4", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "CARBON_SEAL", REQUIREDAMOUNT = "3", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 2,
    },
    {
        PRODUCTID = "ILLEGAL_PROD6",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "TECH_COMP", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "MAGNET", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 1,
    },
    {
        PRODUCTID = "PIRATE_PROD",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "ILLEGAL_PROD6", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "NAV_DATA", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 2,
    },
    {
        PRODUCTID = "ABAND_LOCATOR",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "PIRATE_PROD", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "NAV_DATA", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "BP_SALVAGE", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 4,
    },
    {
        PRODUCTID = "POI_LOCATOR",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "PIRATE_PROD", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "CAVE2", REQUIREDAMOUNT = "50", REQUIREDTYPE = Types.SUBSTANCE},
        },
        RECIPECOST = 4,
    },
    {
        PRODUCTID = "CHART_HIVE",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "PIRATE_PROD", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "SENTINEL_LOOT", REQUIREDAMOUNT = "4", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 4,
    },
    {
        PRODUCTID = "SALVAGE_TECH10",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "ALLOY4", REQUIREDAMOUNT = "4", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "MEGAPROD2", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "COMPOUND6", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 8,
    },
    {
        PRODUCTID = "DRONE_SHARD",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "ROBOT2", REQUIREDAMOUNT = "20", REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = "SPACEGUNK5", REQUIREDAMOUNT = "100", REQUIREDTYPE = Types.SUBSTANCE},
        },
        RECIPECOST = 2,
    },
    {
        PRODUCTID = "SHIPBRAIN_CLEAN",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "SHIPBRAIN", REQUIREDAMOUNT = "20", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "ROBOT1", REQUIREDAMOUNT = "16", REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = "MIND_ARC", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 6,
    },
    {
        PRODUCTID = "SENTFREI_PROD",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "SHIPBRAIN", REQUIREDAMOUNT = "3", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "ROBOT1", REQUIREDAMOUNT = "500", REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = "SHIPBRAIN_CLEAN", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 12,
    },
    {
        PRODUCTID = "CHART_ROBOT",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "SHIPBRAIN_CLEAN", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "ROBOT2", REQUIREDAMOUNT = "200", REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = "DRONE_SHARD", REQUIREDAMOUNT = "4", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 8,
    },
    {
        PRODUCTID = "NAV_DATA",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "CASING", REQUIREDAMOUNT = "4", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "MIRROR", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "MICROCHIP", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 1,
    },
    {
        PRODUCTID = "BP_SALVAGE",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "TECH_COMP", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "NAV_DATA", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "CARBON_SEAL", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 1,
    },
    {
        PRODUCTID = "FRIG_TOKEN",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "BP_SALVAGE", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "COMPUTER", REQUIREDAMOUNT = "8", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "ALLOY6", REQUIREDAMOUNT = "4", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 4,
    },
    {
        PRODUCTID = "FACT_TOKEN",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "BP_SALVAGE", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "BIO", REQUIREDAMOUNT = "8", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "ALLOY3", REQUIREDAMOUNT = "4", REQUIREDTYPE = Types.SUBSTANCE},
        },
        RECIPECOST = 4,
    },
    {
        PRODUCTID = "STATION_KEY",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "FRIG_TOKEN", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "FACT_TOKEN", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "COMPUTER", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 1,
    },
    {
        PRODUCTID = "SUIT_INV_TOKEN",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "TECH_COMP", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "BP_SALVAGE", REQUIREDAMOUNT = "4", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "ALLOY1", REQUIREDAMOUNT = "4", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 8,
    },
    {
        PRODUCTID = "FREI_INV_TOKEN",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "SUIT_INV_TOKEN", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "ALLOY2", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 12,
    },
    {
        PRODUCTID = "WEAP_INV_TOKEN",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "SUIT_INV_TOKEN", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "ALLOY5", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 4,
    },
    {
        PRODUCTID = "SHIP_INV_TOKEN",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "SUIT_INV_TOKEN", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = "ALLOY4", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 4,
    },
    {
        PRODUCTID = "SENTINEL_LOOT",
        REQUIREMENTS =
        {
            {REQUIREMENTID = "ROBOT1", REQUIREDAMOUNT = "100", REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = "FARMPROD3", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
        },
        RECIPECOST = 4,
    },
}


NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "ForbiddenTechPassV".. MOD_VERSION,
    ["MOD_AUTHOR"] = "Aristotale",
    ["MOD_DESCRIPTION"] = "",
    ["LUA_AUTHOR"]    = "Aristotale",
    ["NMS_VERSION"]   = "6.x",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                },
            }
        }
    }
}

local RewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]
local ConsumableTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["MXML_CHANGE_TABLE"]
local UnlockableTreeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["MXML_CHANGE_TABLE"]
local ProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["MXML_CHANGE_TABLE"]

function CreateRequirement(Requirement)
    local RequirementID = Requirement.REQUIREMENTID
    local RequirementAmount = Requirement.REQUIREDAMOUNT
    local RequirementInventoryType = Requirement.REQUIREDTYPE

    ProductTable[#ProductTable + 1] =
    {
        SPECIAL_KEY_WORDS = {"ID", "CASING", "Requirements", "GcTechnologyRequirement"},
        SEC_SAVE_TO = "SINGLE_REQ"
    }
    ProductTable[#ProductTable + 1] =
    {
        SEC_EDIT = "SINGLE_REQ",
        VALUE_CHANGE_TABLE =
        {
            {"ID", RequirementID},
            {"InventoryType", RequirementInventoryType},
            {"Amount", RequirementAmount}
        }
    }
    ProductTable[#ProductTable + 1] =
    {
        SEC_EDIT = "PRODUCT_REQ_MASTER",
        ADD_OPTION = "ADDafterSECTION",
        SEC_ADD_NAMED = "SINGLE_REQ"
    }
end

function CreateRequirementSections(Requirements)
    ProductTable[#ProductTable + 1] =
    {
        SEC_EMPTY = "PRODUCT_REQ_MASTER"
    }

    for i = 1, #Requirements do
        CreateRequirement(Requirements[i])
    end
end

function CreateCraftableProducts()
    for i = 1, #RequirementsArray do
        local ProductId = RequirementsArray[i].PRODUCTID
        local Requirements = RequirementsArray[i].REQUIREMENTS
        local RecipeCost = RequirementsArray[i].RECIPECOST
        CreateRequirementSections(Requirements)

        ProductTable[#ProductTable + 1] =
        {
            SPECIAL_KEY_WORDS = {"Id", ProductId},
            VALUE_CHANGE_TABLE =
            {
                {"IsCraftable", "True"},
                {"RecipeCost", RecipeCost},
            }
        }
        ProductTable[#ProductTable + 1] =
        {
            SPECIAL_KEY_WORDS = {"Id", ProductId, "CraftAmountMultiplier", "1"},
            PRECEDING_KEY_WORDS = {"Requirements"},
            CREATE_HOS = "TRUE",
            SEC_ADD_NAMED = "PRODUCT_REQ_MASTER"
        }
    end
end

function AddTreeNodes(nodes)
    local nodeOutput = ""
    for i = 1, #nodes, 1 do
        nodeOutput = nodeOutput .. [[
            <Property name="Children" value="GcUnlockableItemTreeNode" _index="]] .. i .. [[">
                <Property name="Unlockable" value="]] .. nodes[i][1] .. [[" />
        ]]
        if nodes[i][2] == nil then
            nodeOutput = nodeOutput .. [[
                    <Property name="Children" />
                </Property>
            ]]
        else
            nodeOutput = nodeOutput .. [[
                <Property name="Children">
                    ]] .. AddTreeNodes(nodes[i][2]) .. [[
                </Property>
            </Property>
            ]]
        end
    end
    return nodeOutput
end

function ConstructNewRecipeTree()
    RecipeTreeConstructed = ''
    for i = 1, #NewRecipeTree, 1 do
        RecipeTreeConstructed = RecipeTreeConstructed .. [[
            <Property name="Trees" value="GcUnlockableItemTree" _index="99">
                <Property name="Title" value="]] .. NewRecipeTree[i]["Title"] .. [[" />
                <Property name="CostTypeID" value="]] .. NewRecipeTree[i]["CostTypeID"] .. [[" />
                <Property name="Root" value="GcUnlockableItemTreeNode">
                    <Property name="Unlockable" value="]] .. NewRecipeTree[i]["Unlockable"] .. [[" />
                    <Property name="Children">
                        ]] .. AddTreeNodes(NewRecipeTree[i]["Children"]) .. [[
                    </Property>
                </Property>
            </Property>
        ]]
    end
    return RecipeTreeConstructed
end

function AddStuff()
    ConsumableTable[#ConsumableTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {
            {"ID","ALIEN_INV_TOKEN",}
        },
        ["SEC_SAVE_TO"] = "WireLoomConsume",
    }
    ConsumableTable[#ConsumableTable+1] = 
    {
        ["SEC_EDIT"] = "WireLoomConsume",
        ["VALUE_CHANGE_TABLE"] = {
            {"ID", "ACCESS3"},
            {"RewardID", "R_TST_TREE"},
            {"ButtonLocID", "Research Forbidden Tech"},
            {"ButtonSubLocID", "Research Forbidden Tech"},
        }
    }
    ConsumableTable[#ConsumableTable+1] = 
    {
        ["SPECIAL_KEY_WORDS"] = {"Table","GcConsumableItem",},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = "WireLoomConsume"
    }
    RewardTable[#RewardTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"GenericTable","GcGenericRewardTableEntry",},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["ADD"] = [[
        <Property name="GenericTable" value="GcGenericRewardTableEntry" _id="R_TST_TREE">
            <Property name="Id" value="R_TST_TREE" />
            <Property name="List" value="GcRewardTableItemList">
                <Property name="RewardChoice" value="GiveAll" />
                <Property name="OverrideZeroSeed" value="false" />
                <Property name="UseInventoryChoiceOverride" value="false" />
                <Property name="IncrementStat" value="" />
                <Property name="List">
                    <Property name="List" value="GcRewardTableItem" _index="0">
                        <Property name="PercentageChance" value="100.000000" />
                        <Property name="LabelID" value="" />
                        <Property name="Reward" value="GcRewardOpenUnlockTree">
                            <Property name="GcRewardOpenUnlockTree">
                                <Property name="TreeToOpen" value="GcUnlockableItemTreeGroups">
                                    <Property name="UnlockableItemTree" value="Test" />
                                </Property>
                                <Property name="PageIndexOverride" value="0" />
                            </Property>
                        </Property>
                    </Property>
                </Property>
            </Property>
        </Property>
        ]]
    }
    UnlockableTreeTable[#UnlockableTreeTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Title", "TEST", "Test","GcUnlockableItemTrees"},
        ["PRECEDING_KEY_WORDS"] = {"Trees"},
        ["CREATE_HOES"] = "TRUE",
    }
    UnlockableTreeTable[#UnlockableTreeTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Title", "TEST", "Test","GcUnlockableItemTrees"},
        ["VALUE_CHANGE_TABLE"] = {
            {"Title", "Forbidden Technology"}
        },
        ["CREATE_HOES"] = "TRUE",
    }
    UnlockableTreeTable[#UnlockableTreeTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Title", "TEST", "Test","GcUnlockableItemTrees"},
        ["PRECEDING_KEY_WORDS"] = {"Trees"},
        ["CREATE_HOS"] = "TRUE",
        ["ADD"] = ConstructNewRecipeTree(),
    }
    UnlockableTreeTable[#UnlockableTreeTable+1] = 
    {
        ["SPECIAL_KEY_WORDS"] = {"CostTypes","GcUnlockableTreeCostType","CostTypeID","SPECIALS",},
        ["VALUE_CHANGE_TABLE"] = {
            {"TypeID","WALKER_PROD",},
            {"TypeOfCost","Product",},
        }
    }
end

AddStuff()
CreateCraftableProducts()