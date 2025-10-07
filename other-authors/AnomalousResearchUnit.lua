MOD_VERSION = "3.2"
EnableLegacyParts = false
EnableFleetResearch = true
UseNanitesForProductTree = true

-- Changes the product research table cost to match the one in the Anomaly.
NaniteResearchCost = 250

CraftableItemsList = {
    "PRODFUEL2",
    "JELLY",
    "NANOTUBES",
    "HYDRALIC",
    "MICROCHIP",
    "COMPUTER",
    "CARBON_SEAL",
    "BIO",
    "CASING",
    "MAGNET",
    "MIRROR",
    "POWERCELL",
    "SHIPCHARGE",
    "LAUNCHFUEL",
    "SUBFUEL",
    "GRENFUEL1",
    "HYPERFUEL1",
    "ACCESS1",
    "ACCESS2",
    "HYPERFUEL2",
    "ACCESS3",
    "FARMPROD1",
    "FARMPROD2",
    "FARMPROD6",
    "FARMPROD7",
    "FARMPROD3",
    "FARMPROD8",
    "FARMPROD5",
    "FARMPROD4",
    "FARMPROD9",
    "REACTION1",
    "REACTION2",
    "COMPOUND1",
    "COMPOUND4",
    "REACTION3",
    "COMPOUND2",
    "COMPOUND5",
    "COMPOUND3",
    "COMPOUND6",
    "ALLOY1",
    "ALLOY2",
    "ALLOY3",
    "ALLOY4",
    "ALLOY5",
    "ALLOY8",
    "ALLOY6",
    "ALLOY7",
    "MEGAPROD1",
    "MEGAPROD2",
    "ULTRAPROD1",
    "MEGAPROD3",
    "ULTRAPROD2",
}

LegacyRecipeTree = {
    {
        ["Title"] = "Wooden Structures",
        ["CostTypeID"] = "SALVAGE",
        ["Unlockable"] = "W_WALL",
        ["Children"] = {
            {"W_FLOOR", {
                {"W_GFLOOR", {
                  {"W_FLOOR_Q", nil},
                }},
                {"W_RAMP", {
                    {"W_RAMP_H", nil},
                }},
                {"W_TRIFLOOR", {
                    {"W_TRIFLOOR_Q", nil},
                }},
            }},
            {"W_WALL_H", {
                {"W_WALLDIAGONAL", nil},
                {"W_WALL_Q", nil},
                {"W_WALL_Q_H", nil},
            }},
            {"W_DOOR_H", {
                {"W_DOORWINDOW", {
                    {"W_WALL_WINDOW", nil},
                }},
                {"W_DOOR", nil},
                {"W_GDOOR", nil},
                {"W_ARCH", {
                    {"W_ARCH_H", nil},
                }},
            }},
        },
    },
    {
        ["Title"] = "Wooden Roofing",
        ["CostTypeID"] = "SALVAGE",
        ["Unlockable"] = "W_ROOF",
        ["Children"] = {
            {"W_ROOF_M", nil},
            {"W_ROOF_C", {
                {"W_ROOF_IC", nil},
            }},
        },
    },
    {
        ["Title"] = "Metal Structures",
        ["CostTypeID"] = "SALVAGE",
        ["Unlockable"] = "M_WALL",
        ["Children"] = {
            {"M_FLOOR", {
                {"M_GFLOOR", {
                    {"M_FLOOR_Q", nil},
                }},
                {"M_RAMP", {
                    {"M_RAMP_H", nil},
                }},
                {"M_TRIFLOOR", {
                    {"M_TRIFLOOR_Q", nil},
                }},
            }},
            {"M_WALL_H", {
                {"M_WALLDIAGONAL", nil},
                {"M_WALL_Q", nil},
                {"M_WALL_Q_H", nil},
            }},
            {"M_DOOR_H", {
                {"M_DOORWINDOW", {
                    {"M_WALL_WINDOW", nil},
                }},
                {"M_DOOR", nil},
                {"M_GDOOR", nil},
                {"M_ARCH", {
                    {"M_ARCH_H", nil},
                }},
            }},
        },
    },
    {
        ["Title"] = "Metal Roofing",
        ["CostTypeID"] = "SALVAGE",
        ["Unlockable"] = "M_ROOF",
        ["Children"] = {
            {"M_ROOF_M", nil},
            {"M_ROOF_C", {
                {"M_ROOF_IC", nil},
            }},
        },
    },
    {
        ["Title"] = "Concrete Structures",
        ["CostTypeID"] = "SALVAGE",
        ["Unlockable"] = "C_WALL",
        ["Children"] = {
            {"C_FLOOR", {
                {"C_GFLOOR", {
                    {"C_FLOOR_Q", nil},
                }},
                {"C_RAMP", {
                    {"C_RAMP_H", nil},
                }},
                {"C_TRIFLOOR", {
                    {"C_TRIFLOOR_Q", nil},
                }},
            }},
            {"C_WALL_H", {
                {"C_WALLDIAGONAL", nil},
                {"C_WALL_Q", nil},
                {"C_WALL_Q_H", nil},
            }},
            {"C_DOOR_H", {
                {"C_DOORWINDOW", {
                    {"C_WALL_WINDOW", nil},
                }},
                {"C_DOOR", {
                    {"C_GDOOR", nil},
                }},
                {"C_ARCH", {
                    {"C_ARCH_H", nil},
                }},
            }},
        },
    },
    {
        ["Title"] = "Concrete Roofing",
        ["CostTypeID"] = "SALVAGE",
        ["Unlockable"] = "C_ROOF",
        ["Children"] = {
            {"C_ROOF_M", nil},
            {"C_ROOF_C", {
                {"C_ROOF_IC", nil},
            }},
        },
    },
}

DialogDataTable = --Dialog (menu) additions to DISABLINGCONDITIONSTABLE.
{
    {--GcAlienPuzzleEntry Id
        {"?D_BPA_TECH_P1"},
        { --GcAlienPuzzleOption  Name,    Reward
            {"UI_BP_ANALYSTER_OPT", "TREE_BASE"}, -- Blueprint Research
            {"UI_S9_SUITTREE_OPT", "TREE_SUIT"}, -- Suit Research
            {"NPC_NEXUS_TECH_SHIP", "TREE_SHIP"}, -- Ship Research
        },
    },
    {
        {"?D_BPA_TECH_P2"},
        {
            {"NPC_NEXUS_TECH_WEAP", "TREE_WEAP"}, -- Multi-tool Research
            {"NPC_NEXUS_TECH_EXO", "TREE_EXO"},   -- Exocraft Research
            {"UI_PRODUCT_TREE_CRAFT", "TREE_CRAFT"}, -- Products Research
        }
    }
}

if EnableFleetResearch then
    DialogDataTable[#DialogDataTable+1] = 
    {
        {"?D_BPA_TECH_P3"},
        {
            {"UI_FREIGHTER_RESEARCH_HINT", "TREE_FRIGATE"}, -- Fleet Research
        }
    }
end

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "AnomalousResearchUnitV".. MOD_VERSION,
    ["MOD_AUTHOR"] = "Aristotale",
    ["MOD_DESCRIPTION"] = "Replaces the Utopia Build Station with all of the research trees from the Anomaly and your Freighter. Optionally include Legacy building items too.",
    ["LUA_AUTHOR"]    = "Aristotale",
    ["NMS_VERSION"]   = "6.x",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "%?FREIGHTER", "Name", "ALL_REQUEST_DECLINE"},
                            ["SEC_SAVE_TO"] = "GetOption",
                        },
                        {
                            ["SEC_EDIT"] = "GetOption",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NextInteraction",   ""},
                                {"SelectedOnBackOut", "false"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "NPC_HIRE_SCIENTIST_1", "Name", "ALL_REQUEST_LEAVE"},
                            ["SEC_SAVE_TO"] = "GetMore",
                        },
                        {
                            ["SEC_EDIT"] = "GetMore",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Name",     "More Options"},
                                {"KeepOpen", "true"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "%?D_S9_TREE_PART"},
                            ["PRECEDING_KEY_WORDS"] = {"Table"},
                            ["SEC_SAVE_TO"] = "GetPuzzleEntry",
                        },
                        {
                            ["SEC_EDIT"] = "GetPuzzleEntry",
                            ["SPECIAL_KEY_WORDS"] = {"Id","%?D_S9_TREE_PART","Options", "GcAlienPuzzleOption"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SEC_EDIT"] = "GetPuzzleEntry",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Title", "Anomalous Research Station"},
                                {"TextAlien", "UI_BP_ANALYSTER_LANG"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Children","GcUnlockableItemTreeNode","Unlockable", "T_WALLDIAGONAL"},
                            ["SEC_SAVE_TO"] = "ITEM_TREE_SEC"
                        },
                        {
                            ["SEC_EDIT"] = "ITEM_TREE_SEC",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Unlockable", "S9_BUILDERTREE"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title", "UI_BASETECH_TREE", "Unlockable", "BUILDSAVE"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["SEC_ADD_NAMED"] = "ITEM_TREE_SEC"
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_BASEPARTPRODUCTS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/BLUEPRINTANALYSER_BUILD/ENTITIES/DATA.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Reward","R_S9_TREE_PART"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Name", "Anomalous Research Station"},
                                {"Reward", "JUNK"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Puzzle", "%?D_S9_TREE_PART"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Puzzle", "?D_BPA_TECH_P1"},
                                {"Mission", "ANALYSER_DIAG"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Group", "PLANET_TECH"},
                            ["PRECEDING_KEY_WORDS"] = {"Groups"},
                            ["SEC_SAVE_TO"] = "FREIGHTER_TECH_GROUP",
                        },
                        {
                            ["SEC_EDIT"] = "FREIGHTER_TECH_GROUP",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Group", "FREIGHTER_TECH"},
                                {"SubGroupName", "FRE_TECH_OTHER"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "S9_BUILDERTREE"},
                            ["PRECEDING_KEY_WORDS"] = {"Groups"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["SEC_ADD_NAMED"] = "FREIGHTER_TECH_GROUP"
                        },
                        {
                            ["SKW"] = {"ID", "S9_BUILDERTREE"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"BuildableOnFreighter", "True"},
                                {"BuildableOnSpaceBase", "True"},
                                {"BuildableInShipDecorative", "True"},
                                {"BuildableOnPlanet", "True"},
                            }
                        },
                    }
                },
            }
        }
    }
}

local ResearchTreeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]
local UnlockableTreeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["MXML_CHANGE_TABLE"]
local ProductRecipeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["MXML_CHANGE_TABLE"]
local NanitePricing = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["EXML_CHANGE_TABLE"]
local BaseProductRecipeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][5]["MXML_CHANGE_TABLE"]

function SetNanitePricing()
    NanitePricing[#NanitePricing+1] = 
    {
        ["VALUE_CHANGE_TABLE"] = 
        {
            {"NexusRecipeCostNaniteMultiplier", "1"}
        }
    }

    for i=1, #CraftableItemsList, 1 do
      ProductRecipeTable[#ProductRecipeTable+1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", CraftableItemsList[i]},
            ["PRECEDING_KEY_WORDS"] = {"Table"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"RecipeCost", NaniteResearchCost},
            }
        }
    end

    UnlockableTreeTable[#UnlockableTreeTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {
            {"Title", "UI_PRODUCT_TREE_CRAFT"},
            {"Title", "UI_PRODUCT_TREE_FARM"},
        },
        ["VALUE_CHANGE_TABLE"] =
        {
            {"CostTypeID", "NANITES"},
        }
    }
end

function AddTreeNodes(nodes)
    local nodeOutput = ""
    for i = 1, #nodes, 1 do
        nodeOutput = nodeOutput .. [[
            <Property name="Children" value="GcUnlockableItemTreeNode" _index="]] .. i-1 .. [[">
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

function ConstructLegacyRecipeTree()
    RecipeTreeConstructed = ''
    index = 50
    for i = 1, #LegacyRecipeTree, 1 do
        RecipeTreeConstructed = RecipeTreeConstructed .. [[
            <Property name="Trees" value="GcUnlockableItemTree" _index="]] .. index .. [[">
                <Property name="Title" value="]] .. LegacyRecipeTree[i]["Title"] .. [[" />
                <Property name="CostTypeID" value="SALVAGE" />
                <Property name="Root" value="GcUnlockableItemTreeNode">
                    <Property name="Unlockable" value="]] .. LegacyRecipeTree[i]["Unlockable"] .. [[" />
                    <Property name="Children">
                        ]] .. AddTreeNodes(LegacyRecipeTree[i]["Children"]) .. [[
                    </Property>
                </Property>
            </Property>
        ]]
        index = index + 1
    end
    return RecipeTreeConstructed
end

function AddLegacyStuff()
    if EnableLegacyParts then
        UnlockableTreeTable[#UnlockableTreeTable+1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"BaseParts","GcUnlockableItemTrees"},
            ["PRECEDING_KEY_WORDS"] = {"Trees"},
            ["ADD_OPTION"] = "ADDendSECTION",
            ["ADD"] = ConstructLegacyRecipeTree(),
        }
    end

    if UseNanitesForProductTree then
        SetNanitePricing()
    end
end

function AddAnomalyResearchTrees()
    ResearchTreeTable[#ResearchTreeTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "%?D_S9_TREE_PART"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Title", "Anomalous Research Station"},
            {"TextAlien", "UI_BP_ANALYSTER_LANG"},
        }
    }
    BaseProductRecipeTable[#BaseProductRecipeTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "S9_BUILDERTREE"},
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Name", "Anomalous Research Station"},
            {"NameLower", "Anomalous Research Station"},
        }
    }
end
function AddDialogOptions()
--Add Puzzle Entries and Options
for i = 1, #DialogDataTable do
  local EntryId         = DialogDataTable[i][1][1]
  local NextInteraction = ""
  local Change          = DialogDataTable[i][2]

    if DialogDataTable[i+1] then
        NextInteraction = DialogDataTable[i+1][1][1]
    else
        NextInteraction = DialogDataTable[1][1][1]
    end

    ResearchTreeTable[#ResearchTreeTable+1] =
    {
        ["SEC_EDIT"] = "GetPuzzleEntry",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Id",              EntryId},
            {"InteractionType", "None"},
        }
    }
    ResearchTreeTable[#ResearchTreeTable+1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["SEC_ADD_NAMED"] = "GetPuzzleEntry",
    }

  for j = 1, #Change do
    local Name   = Change[j][1]
    local Reward = Change[j][2]

    ResearchTreeTable[#ResearchTreeTable+1] =
    {
        ["SEC_EDIT"] = "GetOption",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Name",  Name},
        }
    }
    ResearchTreeTable[#ResearchTreeTable+1] =
    {
        ["SEC_EDIT"] = "GetOption",
        ["PRECEDING_KEY_WORDS"] = {"Rewards"},
        ["LINE_OFFSET"] = "1",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Rewards", Reward},
        }
    }
    ResearchTreeTable[#ResearchTreeTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "%"..EntryId},
        ["PRECEDING_KEY_WORDS"] = {"Options"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["SEC_ADD_NAMED"] = "GetOption",
    }
  end
    ResearchTreeTable[#ResearchTreeTable+1] =
    {
        ["SEC_EDIT"] = "GetMore",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"NextInteraction", NextInteraction},
        }
    }
    ResearchTreeTable[#ResearchTreeTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "%"..EntryId},
        ["PRECEDING_KEY_WORDS"] = {"Options"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["SEC_ADD_NAMED"] = "GetMore",
    }
end
  local LastPage = DialogDataTable[#DialogDataTable][1][1]
    ResearchTreeTable[#ResearchTreeTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "%"..LastPage, "Name", "More Options"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Name",     "ALL_REQUEST_LEAVE"},
            {"Cost",     ""},
            {"KeepOpen", "false"},
        }
    }

end
AddLegacyStuff()
AddDialogOptions()
AddAnomalyResearchTrees()