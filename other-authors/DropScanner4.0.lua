--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "DropScanner.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "",         --optional, for reference
  ["MOD_AUTHOR"]			= "",         --optional, for reference
  ["NMS_VERSION"]			= "4.0",      --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SIGNALSCANNER","Name","UI_SIGNAL_NEAREST_OPT"},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] =
[[      <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="Crashed Starship" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="C_ALLOWSCAN" />
          <Property name="Rewards">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="MY_CRASHEDSHIP" />
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
        <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="Multi-tool Location" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="C_ALLOWSCAN" />
          <Property name="Rewards">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="MY_MULTITOOL" />
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
        <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="Portal" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="C_ALLOWSCAN" />
          <Property name="Rewards">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="MY_REVEAL_PORTAL" />
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
        <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="More Options" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="C_ALLOWSCAN" />
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
          <Property name="NextInteraction" value="?MY_SCANNER" />
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
      <Property name="Id" value="?MY_SCANNER" />
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
      <Property name="TranslateAlienText" value="True" />
      <Property name="TranslationBrackets" value="False" />
      <Property name="ProgressiveDialogue" value="True" />
      <Property name="RequiresScanEvent" value="" />
      <Property name="Options">
        <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="Colossal Archive" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="C_ALLOWSCAN" />
          <Property name="Rewards">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="MY_LIBRARY" />
            </Property>
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="R_MSG_NEAR_SCAN" />
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
        <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="Sentinel Pillar" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="C_ALLOWSCAN" />
          <Property name="Rewards">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="MY_HIVE" />
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
        <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="BUILDING_FACTORY_L" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="C_ALLOWSCAN" />
          <Property name="Rewards">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="SEC_SCN_FACT" />
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
        <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="Abandoned Sites" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="C_ALLOWSCAN" />
          <Property name="Rewards">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="RANDOM_SCAN_B" />
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
        <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="More Options" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="C_ALLOWSCAN" />
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
          <Property name="NextInteraction" value="?MY_SCANNER2" />
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
      <Property name="Id" value="?MY_SCANNER2" />
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
      <Property name="TranslateAlienText" value="True" />
      <Property name="TranslationBrackets" value="False" />
      <Property name="ProgressiveDialogue" value="True" />
      <Property name="RequiresScanEvent" value="" />
      <Property name="Options">
        <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="Habitable Outposts" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="C_ALLOWSCAN" />
          <Property name="Rewards">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="RANDOM_SCAN_C" />
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
        <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="UI_ABAND_EVENT_AREA20" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="C_ALLOWSCAN" />
          <Property name="Rewards">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="SEC_SCN_OBS" />
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
]],
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SEC_CRASHEDSHIP"},
							["PRECEDING_KEY_WORDS"] = {"",},							
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["VALUE_CHANGE_TABLE"] 	= {{"IGNORE",	"IGNORE"}},
							["ADD"] =
[[    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="MY_CRASHEDSHIP" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="DISTRESS" />
              <Property name="ScanEventTable" value="Planet" />
              <Property name="DoAerialScan" value="False" />
              <Property name="UseMissionSeedForEvent" value="False" />
              <Property name="StartDelay" value="6" />
              <Property name="UseStartDelayWhenNoAerialScan" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]],	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "RANDOM_SCAN_D"},
							["PRECEDING_KEY_WORDS"] = {"",},							
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["VALUE_CHANGE_TABLE"] 	= {{"IGNORE",	"IGNORE"}},
							["ADD"] =
[[  <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="MY_MULTITOOL" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="SHOP" />
              <Property name="ScanEventTable" value="Planet" />
              <Property name="DoAerialScan" value="False" />
              <Property name="UseMissionSeedForEvent" value="False" />
              <Property name="StartDelay" value="6" />
              <Property name="UseStartDelayWhenNoAerialScan" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="MY_REVEAL_PORTAL" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="PORTAL" />
              <Property name="ScanEventTable" value="Tutorial" />
              <Property name="DoAerialScan" value="False" />
              <Property name="UseMissionSeedForEvent" value="False" />
              <Property name="StartDelay" value="6" />
              <Property name="UseStartDelayWhenNoAerialScan" value="False" />
            </Property>
            <Property name="LabelID" value="RevealPortal" />
          </Property>
        </Property>
      </Property>
    </Property>
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="MY_LIBRARY" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="LIBRARY" />
              <Property name="ScanEventTable" value="Planet" />
              <Property name="DoAerialScan" value="False" />
              <Property name="UseMissionSeedForEvent" value="False" />
              <Property name="StartDelay" value="6" />
              <Property name="UseStartDelayWhenNoAerialScan" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="MY_HIVE" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="DRONE_HIVE_DISABLED" />
              <Property name="ScanEventTable" value="Planet" />
              <Property name="DoAerialScan" value="False" />
              <Property name="UseMissionSeedForEvent" value="False" />
              <Property name="StartDelay" value="6" />
              <Property name="UseStartDelayWhenNoAerialScan" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]],
						},
					},
				},
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE