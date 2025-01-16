enableLegacyParts = true
enableAnomalyResearchTrees = true
enableFleetResearchTree = true
useNanitesForProductTree = true

-- Changes the product research table cost to match the one in the Anomaly.
NaniteResearchCost = 250

craftableItemsList = {
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
    "TECH_COMP",
}

legacyRecipeTree = {
    {
        ["Title"] = "Wooden Structures",
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
        ["Unlockable"] = "C_ROOF",
        ["Children"] = {
            {"C_ROOF_M", nil},
            {"C_ROOF_C", {
                {"C_ROOF_IC", nil},
            }},
        },
    },
}

-- Comment out or remove the trees you don't want from this table
local researchTrees = {
    {"UI_S9_SUITTREE_OPT", "TREE_SUIT"}, -- Suit Research
    {"NPC_NEXUS_TECH_SHIP", "TREE_SHIP"}, -- Ship Research
    {"NPC_NEXUS_TECH_WEAP", "TREE_WEAP"}, -- Multi-tool Research
    {"NPC_NEXUS_TECH_EXO", "TREE_EXO"},   -- Exocraft Research
    {"UI_PRODUCT_TREE_CRAFT", "TREE_CRAFT"}, -- Products Research
}
if enableLegacyParts and enableAnomalyResearchTrees then
    researchTrees[#researchTrees+1] = {"UI_BP_ANALYSTER_OPT", "TREE_BASE"} -- Blueprint Research
end
 -- Fleet Research
if enableFleetResearchTree then
    researchTrees[#researchTrees+1] = {"UI_FREIGHTER_RESEARCH_HINT", "TREE_FRIGATE"}
end

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "AnomalousResearchUnit.pak",
    ["MOD_AUTHOR"] = "Aristotale",
    ["MOD_VERSION"] = "2.0.1",
    ["MOD_DESCRIPTION"] = "Replaces the Utopia Build Station with all of the research trees from the Anomaly and your Freighter",
    ["LUA_AUTHOR"]    = "Aristotale",
    ["NMS_VERSION"]   = "5.2x",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
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
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/BLUEPRINTANALYSER_BUILD/ENTITIES/DATA.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Reward","R_S9_TREE_PART"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Name", "Anomalous Research Unit"},
                                {"Reward", "JUNK"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Puzzle", "%?D_S9_TREE_PART"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Mission", "ANALYSER_DIAG"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Group", "PLANET_TECH"},
                            ["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntryGroup.xml"},
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
                            }
                        },
                    }
                },
            }
        }
    }
}

local ResearchTreeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local UnlockableTreeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local ProductRecipeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]
local NanitePricing = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["EXML_CHANGE_TABLE"]
local RewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][5]["EXML_CHANGE_TABLE"]

function BuildItemList(list)

    local ListEntries = {}
    local EntryStart = [[<Property value="NMSString0x10.xml"><Property name="Value" value="]]
    local EntryEnd = [[" /></Property>]]
    
    for i=1,#list do
        ListEntries[#ListEntries+1] = EntryStart .. list[i] .. EntryEnd
    end

    return table.concat(ListEntries)

end

function SetNanitePricing()
    NanitePricing[#NanitePricing+1] = 
    {
        ["VALUE_CHANGE_TABLE"] = 
        {
            {"NexusRecipeCostNaniteMultiplier", "1"}
        }
    }

    for i=1, #craftableItemsList, 1 do
      ProductRecipeTable[#ProductRecipeTable+1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", craftableItemsList[i]},
            ["PRECEDING_KEY_WORDS"] = {"GcProductData.xml"},
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

function GetPuzzleOption(NAME, ACTION)
    return
    [[
            <Property value="GcAlienPuzzleOption.xml">
              <Property name="Name" value="]]..NAME..[[" />
              <Property name="Text" value="" />
              <Property name="IsAlien" value="False" />
              <Property name="Rewards">
                <Property value="NMSString0x10.xml">
                  <Property name="Value" value="]]..ACTION..[[" />
                </Property>
              </Property>
              <Property name="Mood" value="GcAlienMood.xml">
                <Property name="Mood" value="Neutral" />
              </Property>
              <Property name="Prop" value="GcNPCPropType.xml">
                <Property name="NPCProp" value="DontCare" />
              </Property>
              <Property name="OverrideWithAlienWord" value="False" />
              <Property name="ReseedInteractionOnUse" value="False" />
              <Property name="KeepOpen" value="False" />
              <Property name="DisplayCost" value="True" />
              <Property name="TruncateCost" value="False" />
              <Property name="MarkInteractionComplete" value="True" />
              <Property name="NextInteraction" value="" />
              <Property name="SelectedOnBackOut" value="False" />
              <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="INVALID_EVENT" />
              </Property>
              <Property name="TitleOverride" value="" />
              <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AnyFalse" />
              </Property>
              <Property name="EnablingConditions" />
              <Property name="EnablingConditionId" value="" />
              <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
                <Property name="wordcategorytableEnum" value="MISC" />
              </Property>
            </Property>
    ]]
end

function GetMorePuzzleOption(NEXTACTION)
    return
    [[
            <Property value="GcAlienPuzzleOption.xml">
              <Property name="Name" value="More Options" />
              <Property name="Text" value="" />
              <Property name="IsAlien" value="False" />
              <Property name="Cost" value="" />
              <Property name="Rewards" />
              <Property name="Mood" value="GcAlienMood.xml">
                <Property name="Mood" value="Neutral" />
              </Property>
              <Property name="Prop" value="GcNPCPropType.xml">
                <Property name="NPCProp" value="DontCare" />
              </Property>
              <Property name="OverrideWithAlienWord" value="False" />
              <Property name="ReseedInteractionOnUse" value="False" />
              <Property name="KeepOpen" value="True" />
              <Property name="DisplayCost" value="True" />
              <Property name="TruncateCost" value="False" />
              <Property name="MarkInteractionComplete" value="False" />
              <Property name="NextInteraction" value="]]..NEXTACTION..[[" />
              <Property name="SelectedOnBackOut" value="True" />
              <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="INVALID_EVENT" />
              </Property>
              <Property name="TitleOverride" value="" />
              <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AnyFalse" />
              </Property>
              <Property name="EnablingConditions" />
              <Property name="EnablingConditionId" value="" />
              <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
                <Property name="wordcategorytableEnum" value="MISC" />
              </Property>
            </Property>
          </Property>
          <Property name="AdditionalText" />
          <Property name="AdditionalTextAlien" />
          <Property name="Mood" value="GcAlienMood.xml">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropType.xml">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="AdvancedInteractionFlow" />
          <Property name="PersistancyBufferOverride" value="None" />
          <Property name="CustomFreighterTextIndex" value="-1" />
          <Property name="RadialInteraction" value="False" />
          <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
        </Property>
        <Property value="GcAlienPuzzleEntry.xml">
          <Property name="ProgressionIndex" value="-1" />
          <Property name="MinProgressionForSelection" value="0" />
          <Property name="Id" value="]]..NEXTACTION..[[" />
          <Property name="Race" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="Type" value="GcInteractionType.xml">
            <Property name="InteractionType" value="SignalScanner" />
          </Property>
          <Property name="Category" value="GcAlienPuzzleCategory.xml">
            <Property name="AlienPuzzleCategory" value="Default" />
          </Property>
          <Property name="AdditionalOptions" value="None" />
          <Property name="Title" value="" />
          <Property name="Text" value="" />
          <Property name="TextAlien" value="" />
          <Property name="TranslateAlienText" value="False" />
          <Property name="TranslationBrackets" value="False" />
          <Property name="ProgressiveDialogue" value="False" />
          <Property name="RequiresScanEvent" value="" />
          <Property name="Options">
    ]]
end

function AssembleAnomalousMenu()
    local pageCount = 3
    Menu = ""
    for i=1, #researchTrees, 1 do
        if i % 3 == 0 then
            Menu = Menu .. GetMorePuzzleOption("?D_BPA_TECH_P"..pageCount)
            pageCount = pageCount + 1
        end
        Menu = Menu .. GetPuzzleOption(researchTrees[i][1], researchTrees[i][2])
    end
    return Menu
end

function AddTreeNodes(nodes)
    local nodeOutput = ""
    for i = 1, #nodes, 1 do
        nodeOutput = nodeOutput .. [[
        <Property value="GcUnlockableItemTreeNode.xml">
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
    recipeTreeConstructed = '<Property name="Trees">'
    for i = 1, #legacyRecipeTree, 1 do
        recipeTreeConstructed = recipeTreeConstructed .. [[
            <Property value="GcUnlockableItemTree.xml">
                <Property name="Title" value="]] .. legacyRecipeTree[i]["Title"] .. [[" />
                <Property name="CostTypeID" value="SALVAGE" />
                <Property name="Root" value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="]] .. legacyRecipeTree[i]["Unlockable"] .. [[" />
                    <Property name="Children">
                        ]] .. AddTreeNodes(legacyRecipeTree[i]["Children"]) .. [[
                    </Property>
                </Property>
            </Property>
        ]]
    end
    recipeTreeConstructed = recipeTreeConstructed .. '</Property>'
    return recipeTreeConstructed
end

function AddLegacyStuff()
    if enableLegacyParts then
        RewardTable[#RewardTable+1] =
        {
            ["SEC_EMPTY"] = "REWARD_LEGACY_TREE"
        }
        RewardTable[#RewardTable+1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Id", "TREE_TECHBASICS"},
            ["SEC_SAVE_TO"] = "Tree_Legacy"
        }
        RewardTable[#RewardTable+1] =
        {
            ["SEC_EDIT"] = "Tree_Legacy",
            ["VALUE_CHANGE_TABLE"] =
            {
                {"Id", "TREE_LEGACY"},
                {"UnlockableItemTree", "Test"},
            }
        }
        RewardTable[#RewardTable+1] =
        {
            ["SEC_EDIT"] = "REWARD_LEGACY_TREE",
            ["ADD_OPTION"] = "ADDafterSECTION",
            ["SEC_ADD_NAMED"] = "Tree_Legacy"
        }
        RewardTable[#RewardTable+1] =
        {
            ["SPECIAL_KEY_WORDS"] = {
                {"Id", "TREE_TECHBASICS"},
            },
            ["SECTION_UP"] = 1,
            ["ADD_OPTION"] = "ADDendSECTION",
            ["SEC_ADD_NAMED"] = "REWARD_LEGACY_TREE"
        }

        UnlockableTreeTable[#UnlockableTreeTable+1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Title","TEST"},
            ["VALUE_CHANGE_TABLE"] = {
                {"Title", "Legacy Building Structures"},
            },
        }
        UnlockableTreeTable[#UnlockableTreeTable+1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Test", "GcUnlockableItemTrees.xml"},
            ["PRECEDING_KEY_WORDS"] = {"Trees"},
            ["REMOVE"] = "SECTION",
        }
        UnlockableTreeTable[#UnlockableTreeTable+1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Test", "GcUnlockableItemTrees.xml"},
            ["ADD"] = ConstructLegacyRecipeTree(),
        }
    end

    if enableAnomalyResearchTrees and useNanitesForProductTree then
        SetNanitePricing()
    end
end

function AddAnomalyResearchTrees()
    if enableLegacyParts then
        ResearchTreeTable[#ResearchTreeTable+1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Id", "%?D_S9_TREE_PART", "Name", "UI_S9_PARTTREE_OPT"},
            ["PKW"] = {"Rewards"},
            ["CREATE_HOES"] = "TRUE"
        }
        ResearchTreeTable[#ResearchTreeTable+1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Id", "%?D_S9_TREE_PART", "Name", "UI_S9_PARTTREE_OPT"},
            ["PKW"] = {"Rewards"},
            ["CREATE_HOS"] = "TRUE",
            ["ADD"] = BuildItemList({"TREE_LEGACY"})
        }
        ResearchTreeTable[#ResearchTreeTable+1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Id", "%?D_S9_TREE_PART", "Name", "UI_S9_PARTTREE_OPT"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"Name", "Legacy Structures"},
            }
        }
    end
    if enableAnomalyResearchTrees then
        ResearchTreeTable[#ResearchTreeTable+1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Id", "%?D_S9_TREE_PART", "Name", "ALL_REQUEST_LEAVE"},
            ["ADD_OPTION"] = "ADDbeforeSECTION",
            ["ADD"] = AssembleAnomalousMenu(),
        }
        ResearchTreeTable[#ResearchTreeTable+1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Id", "%?D_S9_TREE_PART"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"Title", "Anomalous Research Unit"},
                {"TextAlien", "UI_BP_ANALYSTER_LANG"},
            }
        }
        ProductRecipeTable[#ProductRecipeTable+1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", "S9_BUILDERTREE"},
            ["PRECEDING_KEY_WORDS"] = {"GcProductData.xml"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"Name", "ANOMALOUS RESEARCH UNIT"},
                {"NameLower", "Anomalous Research Unit"},
            }
        }
    end
end
function SomeNewFunction()
    UnlockableTreeTable[#UnlockableTreeTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Unlockable", "T_WALL_H"},
        ["PRECEDING_KEY_WORDS"] = {"GcUnlockableItemTreeNode.xml"},
        ["SEC_SAVE_TO"] = "ITEM_TREE_SEC"
    }
    UnlockableTreeTable[#UnlockableTreeTable + 1] =
    {
        ["SEC_EDIT"] = "ITEM_TREE_SEC",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Unlockable", "S9_BUILDERTREE"},
        }
    }
    UnlockableTreeTable[#UnlockableTreeTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Title", "UI_BASETECH_TREE", "Unlockable", "BUILDSAVE"},
        ["PRECEDING_KEY_WORDS"] = {"Children"},
        ["CREATE_HOS"] = "TRUE",
        ["SEC_ADD_NAMED"] = "ITEM_TREE_SEC"
    }
end
AddLegacyStuff()
SomeNewFunction()
AddAnomalyResearchTrees()
