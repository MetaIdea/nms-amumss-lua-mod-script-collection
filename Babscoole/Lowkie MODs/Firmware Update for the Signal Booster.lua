NMSVersion = "3.81"
MODVersion = "3.81"

 All_Request_Leave =[[
        <Property value="GcAlienPuzzleOption.xml">
        <Property name="Name" value="ALL_REQUEST_LEAVE" />
        <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="" />
          <Property name="Rewards" />
          <Property name="Mood" value="GcAlienMood.xml">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropTypes.xml">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="KeepOpen" value="False" />
          <Property name="DisplayCost" value="True" />
          <Property name="TruncateCost" value="False" />
          <Property name="MarkInteractionComplete" value="True" />
          <Property name="NextInteraction" value="" />
          <Property name="SelectedOnBackOut" value="False" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
            <Property name="gcwordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
      </Property>]]   

function GetReward(ID, EVENT)
return[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="]]..ID..[[" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="]]..EVENT..[[" />
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
]]
end

function GetPuzzleOption(NAME, ACTION)
return[[  <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="]]..NAME..[[" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="C_ALLOWSCAN" />
          <Property name="Rewards">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="]]..ACTION..[[" />
            </Property>
          </Property>
          <Property name="Mood" value="GcAlienMood.xml">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropTypes.xml">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="KeepOpen" value="False" />
          <Property name="DisplayCost" value="True" />
          <Property name="TruncateCost" value="False" />
          <Property name="MarkInteractionComplete" value="True" />
          <Property name="NextInteraction" value="" />
          <Property name="SelectedOnBackOut" value="False" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
            <Property name="gcwordcategorytableEnum" value="MISC" />
          </Property>
        </Property>                              
]]
end          
        
function GetMorePuzzleOption(NEXTACTION)
return[[          <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="More Options" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="C_ALLOWSCAN" />
          <Property name="Rewards" />
          <Property name="Mood" value="GcAlienMood.xml">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropTypes.xml">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="KeepOpen" value="True" />
          <Property name="DisplayCost" value="True" />
          <Property name="TruncateCost" value="False" />
          <Property name="MarkInteractionComplete" value="False" />
          <Property name="NextInteraction" value="]]..NEXTACTION..[[" />
          <Property name="SelectedOnBackOut" value="False" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
            <Property name="gcwordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
      </Property>
      <Property name="AdditionalText" />
      <Property name="AdditionalTextAlien" />
      <Property name="Mood" value="GcAlienMood.xml">
        <Property name="Mood" value="Neutral" />
      </Property>
      <Property name="Prop" value="GcNPCPropTypes.xml">
        <Property name="NPCProp" value="DontCare" />
      </Property>
      <Property name="AdvancedInteractionFlow" />
      <Property name="PersistancyBufferOverride" value="None" />
      <Property name="CustomFreighterTextIndex" value="-1" />
      <Property name="RadialInteraction" value="False" />
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
      <Property name="AlienPuzzleCategory" value="GcAlienPuzzleCategory.xml">
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
 

--Changes for the Rewards table
REWARD1 = GetReward ("CRASHED_SHIP", "DISTRESS")
REWARD2 = GetReward ("TOOL_LOCATION", "SHOP")
REWARD3 = GetReward ("PLANET_ARCHIVES", "LIBRARY")

REWARDSET = REWARD1..REWARD2..REWARD3   

--First set of options only 4 options per set allowed
Menu1_Option1 = GetPuzzleOption("UI_PORTAL_OPT", "REVEAL_PORTAL")
Menu1_Option2 = GetPuzzleOption("Crashed Starship", "CRASHED_SHIP")
Menu1_Option3 = GetPuzzleOption("Multi-tool Location","TOOL_LOCATION")  
--Generate a new Puzzle option that points to the next dialog set
More_Options1 = GetMorePuzzleOption("?POWER_SCANNER")
--Put the options together with a more options closer
Menu1_Options = Menu1_Option1..Menu1_Option2..Menu1_Option3..More_Options1     
      
--Second set of options      
Menu2_Option1 = GetPuzzleOption("Manufacturing Facility","SEC_SCN_FACT")  
Menu2_Option2 = GetPuzzleOption("Exosuit DropPod", "SCAN_1")
Menu2_Option3 = GetPuzzleOption("Planetary Archives", "PLANET_ARCHIVES")
More_Options2 = GetMorePuzzleOption("?ATOMIC_SCANNER")
Menu2_Options = Menu2_Option1..Menu2_Option2..Menu2_Option3..More_Options2

--Third set of options, also get a close option
Menu3_Option1 = GetPuzzleOption("Crashed Freighter", "SHOW_CRASHSITE") 
Menu3_Option2 = GetPuzzleOption("Observatory", "SEC_SCN_OBS")
Menu3_Option3 = GetPuzzleOption("NAV_DATA_OPTC", "RANDOM_SCAN_C")
Menu3_Options = Menu3_Option1..Menu3_Option2..Menu3_Option3..All_Request_Leave

--Put all the options together.  
ALL_PUZZLE_UPDATES = [[      <Property name="Options">
]]..Menu1_Options..Menu2_Options..Menu3_Options

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Firmware Update for the Signal Booster"..MODVersion..".pak",
  ["MOD_DESCRIPTION"]		= "Allows the Signal booster to find crashed ships, factories, multi tools, and portals with no inputs",
  ["MOD_AUTHOR"]			= "Lowkie",
  ["MOD_MAINTENANCE"]		= "Babscoole",
  ["NMS_VERSION"]			= NMSVersion,     
  ["MODIFICATIONS"] 		=             
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
                 
                {
                    ["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "SIGNALSCANNER"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
                            ["VALUE_CHANGE_TABLE"] 	= {{"IGNORE", "IGNORE"}},
							["LINE_OFFSET"] 		= "1",
							["REMOVE"] = "SECTION",  --Remove original options section
						},
                    },
               },
               {                
                    ["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{ 
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "SIGNALSCANNER"},
							["VALUE_CHANGE_TABLE"] 	= {{"TextAlien", 	""}},    --org UI_SIGNAL_SCANNER_DESC_ALT},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "SIGNALSCANNER"},
                            ["PRECEDING_KEY_WORDS"] = {"RequiresScanEvent"},
                            ["ADD"]                 = ALL_PUZZLE_UPDATES,
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
                            ["LINE_OFFSET"] 		= "0",							
                            ["REPLACE_TYPE"] = "ADDAFTERSECTION",
                            ["VALUE_CHANGE_TABLE"] 	= {{"IGNORE",	"IGNORE"}},
                            ["ADD"] =   REWARDSET,	
                        },
                    },
                },                               
			}
        }
	}
}
