NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "bNexus Research Station",
["MOD_AUTHOR"]      = "Bladehawk",
["NMS_VERSION"]     = "5.75",
["MOD_DESCRIPTION"] = "",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S9_BUILDERTREE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BuildableOnSpaceBase", "true"},
                {"BuildableOnFreighter", "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S9_BUILDERTREE"},
              ["PRECEDING_KEY_WORDS"] = {"Groups"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
        <Property name="Groups" value="GcBaseBuildingEntryGroup" _index="1">
          <Property name="Group" value="FREIGHTER_TECH" />
          <Property name="SubGroupName" value="FRE_TECH_OTHER" />
          <Property name="SubGroup" value="0" />
        </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_BASEPARTPRODUCTS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "S9_BUILDERTREE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",        "BLD_NRS_NAME"},
                {"NameLower",   "BLD_NRS_NAME_L"},
                {"Subtitle",    "BLD_NRS_SUBTITLE"},
                {"Description", "BLD_NRS_DESCRIPTION"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "%?D_S9_TREE_PART", "Name", "UI_S9_PARTTREE_OPT"},
              ["ADD_OPTION"]  = "ADDafterSECTION",
              ["ADD"] =
[[
        <Property name="Options" value="GcAlienPuzzleOption" _index="1">
          <Property name="Name" value="UI_S9_SUITTREE_OPT" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="false" />
          <Property name="ResponseLanguageOverride" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="Cost" value="" />
          <Property name="Rewards">
            <Property name="Rewards" value="TREE_SUIT" _index="0" />
          </Property>
          <Property name="Mood" value="GcAlienMood">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropType">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="OverrideWithAlienWord" value="false" />
          <Property name="AlienWordSpecificRace" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="ReseedInteractionOnUse" value="false" />
          <Property name="KeepOpen" value="false" />
          <Property name="DisplayCost" value="true" />
          <Property name="TruncateCost" value="false" />
          <Property name="MarkInteractionComplete" value="true" />
          <Property name="NextInteraction" value="" />
          <Property name="SelectedOnBackOut" value="false" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="TitleOverride" value="" />
          <Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
          <Property name="EnablingConditionTest" value="GcMissionConditionTest">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum">
            <Property name="wordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
        <Property name="Options" value="GcAlienPuzzleOption" _index="2">
          <Property name="Name" value="NPC_NEXUS_TECH_SHIP" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="false" />
          <Property name="ResponseLanguageOverride" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="Cost" value="" />
          <Property name="Rewards">
            <Property name="Rewards" value="TREE_SHIP" _index="0" />
          </Property>
          <Property name="Mood" value="GcAlienMood">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropType">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="OverrideWithAlienWord" value="false" />
          <Property name="AlienWordSpecificRace" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="ReseedInteractionOnUse" value="false" />
          <Property name="KeepOpen" value="false" />
          <Property name="DisplayCost" value="true" />
          <Property name="TruncateCost" value="false" />
          <Property name="MarkInteractionComplete" value="true" />
          <Property name="NextInteraction" value="" />
          <Property name="SelectedOnBackOut" value="false" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="TitleOverride" value="" />
          <Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
          <Property name="EnablingConditionTest" value="GcMissionConditionTest">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum">
            <Property name="wordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "%?D_S9_TREE_PART", "Name", "ALL_REQUEST_LEAVE"},
              ["EXML_INDEX"] = 3,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",                    "ALL_REQ_MORE_OPTS"},
                {"KeepOpen",                "true"},
                {"MarkInteractionComplete", "true"},
                {"NextInteraction",         "?D_NRS_P1"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "%?D_S9_TREE_PART", "Name", "UI_S9_PARTTREE_OPT"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Rewards", "TREE_BASE"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "%?D_S9_TREE_PART", "Name", "UI_S9_PARTTREE_OPT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",                    "UI_BP_ANALYSTER_OPT"},
                {"KeepOpen",                "false"},
                {"MarkInteractionComplete", "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "%?D_S9_TREE_PART",},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Title",     "BLD_NRS_NAME_L"},
                {"TextAlien", "UI_BP_ANALYSTER_LANG"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "NPC_HIRE_SCIENTIST_1"},
              ["ADD_OPTION"]  = "ADDafterSECTION",
              ["ADD"] =
[[
    <Property name="Table" value="GcAlienPuzzleEntry" _id="?D_NRS_P1">
      <Property name="ProgressionIndex" value="-1" />
      <Property name="MinProgressionForSelection" value="0" />
      <Property name="Id" value="?D_NRS_P1" />
      <Property name="Race" value="GcAlienRace">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="Type" value="GcInteractionType">
        <Property name="InteractionType" value="SignalScanner" />
      </Property>
      <Property name="Category" value="GcAlienPuzzleCategory">
        <Property name="AlienPuzzleCategory" value="Default" />
      </Property>
      <Property name="AdditionalOptions" value="None" />
      <Property name="Title" value="" />
      <Property name="Text" value="" />
      <Property name="TextAlien" value="" />
      <Property name="TranslateAlienText" value="false" />
      <Property name="TranslationBrackets" value="false" />
      <Property name="ProgressiveDialogue" value="false" />
      <Property name="RequiresScanEvent" value="" />
      <Property name="Options">
        <Property name="Options" value="GcAlienPuzzleOption" _index="0">
          <Property name="Name" value="NPC_NEXUS_TECH_WEAP" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="false" />
          <Property name="ResponseLanguageOverride" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="Cost" value="" />
          <Property name="Rewards">
            <Property name="Rewards" value="TREE_WEAP" _index="0" />
          </Property>
          <Property name="Mood" value="GcAlienMood">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropType">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="OverrideWithAlienWord" value="false" />
          <Property name="AlienWordSpecificRace" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="ReseedInteractionOnUse" value="false" />
          <Property name="KeepOpen" value="false" />
          <Property name="DisplayCost" value="true" />
          <Property name="TruncateCost" value="false" />
          <Property name="MarkInteractionComplete" value="true" />
          <Property name="NextInteraction" value="" />
          <Property name="SelectedOnBackOut" value="false" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="TitleOverride" value="" />
          <Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
          <Property name="EnablingConditionTest" value="GcMissionConditionTest">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum">
            <Property name="wordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
        <Property name="Options" value="GcAlienPuzzleOption" _index="1">
          <Property name="Name" value="NPC_NEXUS_TECH_EXO" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="false" />
          <Property name="ResponseLanguageOverride" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="Cost" value="" />
          <Property name="Rewards">
            <Property name="Rewards" value="TREE_EXO" _index="0" />
          </Property>
          <Property name="Mood" value="GcAlienMood">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropType">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="OverrideWithAlienWord" value="false" />
          <Property name="AlienWordSpecificRace" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="ReseedInteractionOnUse" value="false" />
          <Property name="KeepOpen" value="false" />
          <Property name="DisplayCost" value="true" />
          <Property name="TruncateCost" value="false" />
          <Property name="MarkInteractionComplete" value="true" />
          <Property name="NextInteraction" value="" />
          <Property name="SelectedOnBackOut" value="false" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="TitleOverride" value="" />
          <Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
          <Property name="EnablingConditionTest" value="GcMissionConditionTest">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum">
            <Property name="wordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
        <Property name="Options" value="GcAlienPuzzleOption" _index="2">
          <Property name="Name" value="UI_FREIGHTER_RESEARCH_HINT" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="false" />
          <Property name="ResponseLanguageOverride" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="Cost" value="" />
          <Property name="Rewards">
            <Property name="Rewards" value="TREE_FRIGATE" _index="0" />
          </Property>
          <Property name="Mood" value="GcAlienMood">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropType">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="OverrideWithAlienWord" value="false" />
          <Property name="AlienWordSpecificRace" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="ReseedInteractionOnUse" value="false" />
          <Property name="KeepOpen" value="false" />
          <Property name="DisplayCost" value="true" />
          <Property name="TruncateCost" value="false" />
          <Property name="MarkInteractionComplete" value="true" />
          <Property name="NextInteraction" value="" />
          <Property name="SelectedOnBackOut" value="false" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="TitleOverride" value="" />
          <Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
          <Property name="EnablingConditionTest" value="GcMissionConditionTest">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum">
            <Property name="wordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
        <Property name="Options" value="GcAlienPuzzleOption" _index="3">
          <Property name="Name" value="ALL_REQ_MORE_OPTS" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="false" />
          <Property name="ResponseLanguageOverride" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="Cost" value="" />
          <Property name="Rewards" />
          <Property name="Mood" value="GcAlienMood">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropType">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="OverrideWithAlienWord" value="false" />
          <Property name="AlienWordSpecificRace" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="ReseedInteractionOnUse" value="false" />
          <Property name="KeepOpen" value="true" />
          <Property name="DisplayCost" value="true" />
          <Property name="TruncateCost" value="false" />
          <Property name="MarkInteractionComplete" value="true" />
          <Property name="NextInteraction" value="?D_NRS_P2" />
          <Property name="SelectedOnBackOut" value="true" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="TitleOverride" value="" />
          <Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
          <Property name="EnablingConditionTest" value="GcMissionConditionTest">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum">
            <Property name="wordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
      </Property>
      <Property name="AdditionalText" />
      <Property name="AdditionalTextAlien" />
      <Property name="Mood" value="GcAlienMood">
        <Property name="Mood" value="Neutral" />
      </Property>
      <Property name="Prop" value="GcNPCPropType">
        <Property name="NPCProp" value="None" />
      </Property>
      <Property name="AdvancedInteractionFlow" />
      <Property name="PersistancyBufferOverride" value="None" />
      <Property name="CustomFreighterTextIndex" value="0" />
      <Property name="RadialInteraction" value="false" />
      <Property name="UseTitleOverrideInLabel" value="false" />
      <Property name="AllowNoOptions" value="false" />
      <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
    </Property>
    <Property name="Table" value="GcAlienPuzzleEntry" _id="?D_NRS_P2">
      <Property name="ProgressionIndex" value="-1" />
      <Property name="MinProgressionForSelection" value="0" />
      <Property name="Id" value="?D_NRS_P2" />
      <Property name="Race" value="GcAlienRace">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="Type" value="GcInteractionType">
        <Property name="InteractionType" value="SignalScanner" />
      </Property>
      <Property name="Category" value="GcAlienPuzzleCategory">
        <Property name="AlienPuzzleCategory" value="Default" />
      </Property>
      <Property name="AdditionalOptions" value="None" />
      <Property name="Title" value="" />
      <Property name="Text" value="" />
      <Property name="TextAlien" value="" />
      <Property name="TranslateAlienText" value="false" />
      <Property name="TranslationBrackets" value="false" />
      <Property name="ProgressiveDialogue" value="false" />
      <Property name="RequiresScanEvent" value="" />
      <Property name="Options">
        <Property name="Options" value="GcAlienPuzzleOption" _index="0">
          <Property name="Name" value="UI_PRODUCT_TREE_CRAFT" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="false" />
          <Property name="ResponseLanguageOverride" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="Cost" value="" />
          <Property name="Rewards">
            <Property name="Rewards" value="TREE_CRAFT" _index="0" />
          </Property>
          <Property name="Mood" value="GcAlienMood">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropType">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="OverrideWithAlienWord" value="false" />
          <Property name="AlienWordSpecificRace" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="ReseedInteractionOnUse" value="false" />
          <Property name="KeepOpen" value="false" />
          <Property name="DisplayCost" value="true" />
          <Property name="TruncateCost" value="false" />
          <Property name="MarkInteractionComplete" value="true" />
          <Property name="NextInteraction" value="" />
          <Property name="SelectedOnBackOut" value="false" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="TitleOverride" value="" />
          <Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
          <Property name="EnablingConditionTest" value="GcMissionConditionTest">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum">
            <Property name="wordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
        <Property name="Options" value="GcAlienPuzzleOption" _index="1">
          <Property name="Name" value="ALL_REQUEST_LEAVE" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="false" />
          <Property name="ResponseLanguageOverride" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="Cost" value="" />
          <Property name="Rewards" />
          <Property name="Mood" value="GcAlienMood">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropType">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="OverrideWithAlienWord" value="false" />
          <Property name="AlienWordSpecificRace" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="ReseedInteractionOnUse" value="false" />
          <Property name="KeepOpen" value="false" />
          <Property name="DisplayCost" value="true" />
          <Property name="TruncateCost" value="false" />
          <Property name="MarkInteractionComplete" value="true" />
          <Property name="NextInteraction" value="?D_S9_TREE_PART" />
          <Property name="SelectedOnBackOut" value="true" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="TitleOverride" value="" />
          <Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
          <Property name="EnablingConditionTest" value="GcMissionConditionTest">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum">
            <Property name="wordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
      </Property>
      <Property name="AdditionalText" />
      <Property name="AdditionalTextAlien" />
      <Property name="Mood" value="GcAlienMood">
        <Property name="Mood" value="Neutral" />
      </Property>
      <Property name="Prop" value="GcNPCPropType">
        <Property name="NPCProp" value="None" />
      </Property>
      <Property name="AdvancedInteractionFlow" />
      <Property name="PersistancyBufferOverride" value="None" />
      <Property name="CustomFreighterTextIndex" value="0" />
      <Property name="RadialInteraction" value="false" />
      <Property name="UseTitleOverrideInLabel" value="false" />
      <Property name="AllowNoOptions" value="false" />
      <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
    </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FACT_TOKEN"},
              ["PRECEDING_KEY_WORDS"] = {"Requirements"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Requirements" value="GcTechnologyRequirement" _id="NANOTUBES">
          <Property name="ID" value="NANOTUBES" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="TECHFRAG_R">
          <Property name="ID" value="TECHFRAG_R" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="125" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FACT_TOKEN"},
              ["PRECEDING_KEY_WORDS"] = {"AltRequirements"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="AltRequirements" value="GcTechnologyRequirement" _id="NANOTUBES">
          <Property name="ID" value="NANOTUBES" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property name="AltRequirements" value="GcTechnologyRequirement" _id="FIENDCORE">
          <Property name="ID" value="FIENDCORE" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="5" />
        </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable", "BUILDSAVE"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
                          <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                            <Property name="Unlockable" value="S9_BUILDERTREE" />
                            <Property name="Children" />
                          </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Title", "UI_STORAGE_TREE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
        <Property name="Trees" value="GcUnlockableItemTree" _index="28">
          <Property name="Title" value="Wooden Structures" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode">
            <Property name="Unlockable" value="W_WALL" />
            <Property name="Children">
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                <Property name="Unlockable" value="W_FLOOR" />
                <Property name="Children">
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                    <Property name="Unlockable" value="W_GFLOOR" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="W_FLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
                    <Property name="Unlockable" value="W_RAMP" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="W_RAMP_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
                    <Property name="Unlockable" value="W_TRIFLOOR" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="W_TRIFLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
                <Property name="Unlockable" value="W_WALL_H" />
                <Property name="Children">
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                    <Property name="Unlockable" value="W_WALLDIAGONAL" />
                    <Property name="Children" />
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
                    <Property name="Unlockable" value="W_WALL_Q" />
                    <Property name="Children" />
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
                    <Property name="Unlockable" value="W_WALL_Q_H" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
                <Property name="Unlockable" value="W_DOOR_H" />
                <Property name="Children">
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                    <Property name="Unlockable" value="W_DOORWINDOW" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="W_WALL_WINDOW" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
                    <Property name="Unlockable" value="W_DOOR" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="W_GDOOR" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
                    <Property name="Unlockable" value="W_ARCH" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="W_ARCH_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Trees" value="GcUnlockableItemTree" _index="29">
          <Property name="Title" value="Wooden Roofing" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode">
            <Property name="Unlockable" value="W_ROOF" />
            <Property name="Children">
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                <Property name="Unlockable" value="W_ROOF_M" />
                <Property name="Children" />
              </Property>
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
                <Property name="Unlockable" value="W_ROOF_C" />
                <Property name="Children">
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                    <Property name="Unlockable" value="W_ROOF_IC" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Trees" value="GcUnlockableItemTree" _index="30">
          <Property name="Title" value="Metal Structures" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode">
            <Property name="Unlockable" value="M_WALL" />
            <Property name="Children">
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                <Property name="Unlockable" value="M_FLOOR" />
                <Property name="Children">
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                    <Property name="Unlockable" value="M_GFLOOR" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="M_FLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
                    <Property name="Unlockable" value="M_RAMP" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="M_RAMP_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
                    <Property name="Unlockable" value="M_TRIFLOOR" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="M_TRIFLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
                <Property name="Unlockable" value="M_WALL_H" />
                <Property name="Children">
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                    <Property name="Unlockable" value="M_WALLDIAGONAL" />
                    <Property name="Children" />
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
                    <Property name="Unlockable" value="M_WALL_Q" />
                    <Property name="Children" />
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
                    <Property name="Unlockable" value="M_WALL_Q_H" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
                <Property name="Unlockable" value="M_DOOR_H" />
                <Property name="Children">
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                    <Property name="Unlockable" value="M_DOORWINDOW" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="M_WALL_WINDOW" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
                    <Property name="Unlockable" value="M_DOOR" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="M_GDOOR" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
                    <Property name="Unlockable" value="M_ARCH" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="M_ARCH_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Trees" value="GcUnlockableItemTree" _index="31">
          <Property name="Title" value="Metal Roofing" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode">
            <Property name="Unlockable" value="M_ROOF" />
            <Property name="Children">
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                <Property name="Unlockable" value="M_ROOF_M" />
                <Property name="Children" />
              </Property>
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
                <Property name="Unlockable" value="M_ROOF_C" />
                <Property name="Children">
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                    <Property name="Unlockable" value="M_ROOF_IC" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Trees" value="GcUnlockableItemTree" _index="32">
          <Property name="Title" value="Concrete Structures" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode">
            <Property name="Unlockable" value="C_WALL" />
            <Property name="Children">
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                <Property name="Unlockable" value="C_FLOOR" />
                <Property name="Children">
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                    <Property name="Unlockable" value="C_GFLOOR" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="C_FLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
                    <Property name="Unlockable" value="C_RAMP" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="C_RAMP_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
                    <Property name="Unlockable" value="C_TRIFLOOR" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="C_TRIFLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
                <Property name="Unlockable" value="C_WALL_H" />
                <Property name="Children">
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                    <Property name="Unlockable" value="C_WALLDIAGONAL" />
                    <Property name="Children" />
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
                    <Property name="Unlockable" value="C_WALL_Q" />
                    <Property name="Children" />
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
                    <Property name="Unlockable" value="C_WALL_Q_H" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
                <Property name="Unlockable" value="C_DOOR_H" />
                <Property name="Children">
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                    <Property name="Unlockable" value="C_DOORWINDOW" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="C_WALL_WINDOW" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
                    <Property name="Unlockable" value="C_DOOR" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="C_GDOOR" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
                    <Property name="Unlockable" value="C_ARCH" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                        <Property name="Unlockable" value="C_ARCH_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Trees" value="GcUnlockableItemTree" _index="33">
          <Property name="Title" value="Concrete Roofing" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode">
            <Property name="Unlockable" value="C_ROOF" />
            <Property name="Children">
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                <Property name="Unlockable" value="C_ROOF_M" />
                <Property name="Children" />
              </Property>
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
                <Property name="Unlockable" value="C_ROOF_C" />
                <Property name="Children">
                  <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                    <Property name="Unlockable" value="C_ROOF_IC" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Title", "UI_PRODUCT_TREE_CRAFT"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD"] =
[[
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                <Property name="Unlockable" value="FACT_TOKEN" />
                <Property name="Children" />
              </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable", "JELLY"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable", "POWERCELL"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable", "HYPERFUEL1"},
              ["EXML_INDEX"] = "3",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\BLUEPRINTANALYSER_BUILD\ENTITIES\DATA.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcInteractionComponentData", "PuzzleMissionOverrideTable", "GcAlienPuzzleMissionOverride"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Mission", "?D_S9_TREE_PART"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcInteractionComponentData", "StoryUtilityOverrideData", "GcStoryUtilityOverride"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",    "BLD_NRS_NAME_L"},
                {"Reward",  "Junk"},
              }
            },
          }
        },
      }
    }
  }
}
