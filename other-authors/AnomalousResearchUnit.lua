local CraftableTable = {
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

Menu1_Option3 = GetPuzzleOption("UI_S9_SUITTREE_OPT", "TREE_SUIT")  -- Suit Tree
More_Options1 = GetMorePuzzleOption("?D_BPA_TECH_P2")
Menu1_Options = Menu1_Option3..More_Options1

--Second set of options
Menu2_Option1 = GetPuzzleOption("NPC_NEXUS_TECH_SHIP", "TREE_SHIP") -- Crashed Starship
Menu2_Option2 = GetPuzzleOption("NPC_NEXUS_TECH_WEAP", "TREE_WEAP")  -- Multi-tool Location
Menu2_Option3 = GetPuzzleOption("NPC_NEXUS_TECH_EXO", "TREE_EXO")  -- Manufacturing Facility
More_Options2 = GetMorePuzzleOption("?D_BPA_TECH_P3")
Menu2_Options = Menu2_Option1..Menu2_Option2..Menu2_Option3..More_Options2

Menu3_Option1 = GetPuzzleOption("UI_PRODUCT_TREE_CRAFT", "TREE_CRAFT")  -- ExoSuit DropPod
ResearchCost = 250

ALL_PUZZLE_UPDATES = Menu1_Options..Menu2_Options..Menu3_Option1

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "AnomalousResearchUnit.pak",
    ["MOD_AUTHOR"] = "Aristotale",
    ["MOD_DESCRIPTION"] = "Add research trees from all Anomaly research vendors for purchase in the Construction Research Unit",
    ["LUA_AUTHOR"]    = "Aristotale, with substantial input from Babscoole, Lowkie, and others in the NMS Modding Discord",
    ["NMS_VERSION"]   = "5.25",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "%?BLUEPRINT_ANALYSER", "Name", "UI_BP_ANALYSTER_OPTA"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Name", "Advanced Building Structures"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "%?BLUEPRINT_ANALYSER", "Name", "Advanced Building Structures"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ALL_PUZZLE_UPDATES,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "%?BLUEPRINT_ANALYSER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Title", "Anomalous Research Unit"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                                ["SPECIAL_KEY_WORDS"] = {"BaseParts", "GcUnlockableItemTrees.xml"},
                                ["PRECEDING_KEY_WORDS"] = {"Trees"},
                                ["SEC_SAVE_TO"] = "Base_parts"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BasicBaseParts", "GcUnlockableItemTrees.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Trees"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BasicBaseParts", "GcUnlockableItemTrees.xml"},
                            ["SEC_ADD_NAMED"] = "Base_parts"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title", "UI_PRODUCT_TREE_CRAFT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CostTypeID", "NANITES"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title", "UI_PRODUCT_TREE_FARM"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CostTypeID", "NANITES"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {}
                },
            }
        }
    }
}

local ProductRecipeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]

for i=1, #CraftableTable, 1 do
  ProductRecipeTable[#ProductRecipeTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", CraftableTable[i]},
        ["PRECEDING_KEY_WORDS"] = {"GcProductData.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"RecipeCost", ResearchCost},
        }
    }
end