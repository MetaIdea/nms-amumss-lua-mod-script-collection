NMSVersion = "4.00"
MODVersion = "4.00"

function GetCustomScanEvent(NAME, BUILDINGLOCATION, BUILDINGTYPE, BUILDINGCLASS, FORCEWIDERANDOM, ALLOWOVERRIDDENBUILDINGS, SOLARSYSTEMLOCATION, OSDMESSAGE, MARKERLABEL, FILENAME, TOOLTIP)
return
[[
    <Property value="GcScanEventData.xml">
      <Property name="Name" value="]]..NAME..[["/>
      <Property name="ForceInteraction" value="" />
      <Property name="ForceInteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="None" />
      </Property>
      <Property name="RequireInteractionRace" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="ForceBroken" value="False" />
      <Property name="ForceFixed" value="False" />
      <Property name="ForceOverridesAll" value="True" />
      <Property name="ForceOverrideEncounter" value="" />
      <Property name="IsCommunityPortalOverride" value="False" />
      <Property name="ClearForcedInteractionOnCompletion" value="False" />
      <Property name="BuildingPreventionRadius" value="0" />
      <Property name="AlwaysShow" value="False" />
      <Property name="NeverShow" value="False" />
      <Property name="PlanetLabelText" value="" />
      <Property name="SurveyDistance" value="0" />
      <Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD" />
      <Property name="EventStartType" value="ObjectScan" />
      <Property name="EventEndType" value="Proximity" />
      <Property name="EventPriority" value="Regular" />
      <Property name="CanEndFromOutsideMission" value="False" />
      <Property name="DisableMultiplayerSync" value="True" />
      <Property name="ReplaceEventIfAlreadyActive" value="True"/>
      <Property name="BuildingLocation" value="]]..BUILDINGLOCATION..[[" />
      <Property name="BuildingType" value="]]..BUILDINGTYPE..[[" />
      <Property name="BuildingClass" value="GcBuildingClassification.xml">
        <Property name="BuildingClass" value="]]..BUILDINGCLASS..[["/>
      </Property>
      <Property name="AllowFriendsBases" value="False" />
      <Property name="ForceWideRandom" value="]]..FORCEWIDERANDOM..[["/>
      <Property name="MustFindSystem" value="False" />
      <Property name="AllowOverriddenBuildings" value="]]..ALLOWOVERRIDDENBUILDINGS..[["/>
      <Property name="SolarSystemLocation" value="]]..SOLARSYSTEMLOCATION..[[" />
      <Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
        <Property name="UseStarType" value="False" />
        <Property name="UseWealth" value="False" />
        <Property name="UseTrading" value="False" />
        <Property name="UseRace" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
          <Property name="GalaxyStarAnomaly" value="None" />
        </Property>
        <Property name="UseConflict" value="GcPlayerConflictData.xml">
          <Property name="ConflictLevel" value="Default" />
        </Property>
        <Property name="StarType" value="GcGalaxyStarTypes.xml">
          <Property name="GalaxyStarType" value="Yellow" />
        </Property>
        <Property name="TradingData" value="GcPlanetTradingData.xml">
          <Property name="WealthClass" value="GcWealthClass.xml">
            <Property name="WealthClass" value="Average" />
          </Property>
          <Property name="TradingClass" value="GcTradingClass.xml">
            <Property name="TradingClass" value="Mining" />
          </Property>
        </Property>
        <Property name="AllowUnsafeMatches" value="False" />
        <Property name="NeverAllowEmpty" value="False" />
        <Property name="NeverAllowAbandoned" value="False" />
        <Property name="RequireUndiscovered" value="False" />
        <Property name="NeedsWaterPlanet" value="False" />
        <Property name="NeedsPrimePlanet" value="False" />
        <Property name="NeedsExtremeSentinelPlanet" value="False" />
        <Property name="NeverAllowExtremeSentinelPlanet" value="False" />
        <Property name="NeedsExtremeWeatherPlanet" value="False" />
        <Property name="NeedsExtremeHazardPlanet" value="False" />
        <Property name="AnyBiomeNotWeirdOrDead" value="False" />
        <Property name="AnyRGBBiome" value="False" />
        <Property name="AnyInfestedBiome" value="False" />
        <Property name="NeedsBiome" value="False" />
        <Property name="NeedsBiomeType" value="GcBiomeType.xml">
          <Property name="Biome" value="Lush" />
        </Property>
        <Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
          <Property name="BiomeSubType" value="None" />
        </Property>
        <Property name="NeedsEmptySystem" value="False" />
        <Property name="NeedsAbandonedSystem" value="False" />
        <Property name="NeedsResourceHint" value="" />
        <Property name="SuitableForCreatureDiscovery" value="False" />
        <Property name="SuitableForCreatureTaming" value="False" />
        <Property name="SamePlanetAsEvent" value="" />
      </Property>
      <Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
        <Property name="UseStarType" value="False" />
        <Property name="UseWealth" value="False" />
        <Property name="UseTrading" value="False" />
        <Property name="UseRace" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
          <Property name="GalaxyStarAnomaly" value="None" />
        </Property>
        <Property name="UseConflict" value="GcPlayerConflictData.xml">
          <Property name="ConflictLevel" value="Default" />
        </Property>
        <Property name="StarType" value="GcGalaxyStarTypes.xml">
          <Property name="GalaxyStarType" value="Yellow" />
        </Property>
        <Property name="TradingData" value="GcPlanetTradingData.xml">
          <Property name="WealthClass" value="GcWealthClass.xml">
            <Property name="WealthClass" value="Average" />
          </Property>
          <Property name="TradingClass" value="GcTradingClass.xml">
            <Property name="TradingClass" value="Mining" />
          </Property>
        </Property>
        <Property name="AllowUnsafeMatches" value="False" />
        <Property name="NeverAllowEmpty" value="False" />
        <Property name="NeverAllowAbandoned" value="False" />
        <Property name="RequireUndiscovered" value="False" />
        <Property name="NeedsWaterPlanet" value="False" />
        <Property name="NeedsPrimePlanet" value="False" />
        <Property name="NeedsExtremeSentinelPlanet" value="False" />
        <Property name="NeverAllowExtremeSentinelPlanet" value="False" />
        <Property name="NeedsExtremeWeatherPlanet" value="False" />
        <Property name="NeedsExtremeHazardPlanet" value="False" />
        <Property name="AnyBiomeNotWeirdOrDead" value="False" />
        <Property name="AnyRGBBiome" value="False" />
        <Property name="AnyInfestedBiome" value="False" />
        <Property name="NeedsBiome" value="False" />
        <Property name="NeedsBiomeType" value="GcBiomeType.xml">
          <Property name="Biome" value="Lush" />
        </Property>
        <Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
          <Property name="BiomeSubType" value="None" />
        </Property>
        <Property name="NeedsEmptySystem" value="False" />
        <Property name="NeedsAbandonedSystem" value="False" />
        <Property name="NeedsResourceHint" value="" />
        <Property name="SuitableForCreatureDiscovery" value="False" />
        <Property name="SuitableForCreatureTaming" value="False" />
        <Property name="SamePlanetAsEvent" value="" />
      </Property>
      <Property name="ForceRestartInteraction" value="True" />
      <Property name="HasReward" value="" />
      <Property name="NextOption" value="" />
      <Property name="TriggerActions" value="GcScanEventTriggers.xml">
        <Property name="Range" value="100" />
        <Property name="Triggers" />
        <Property name="AllowRetrigger" value="False" />
      </Property>
      <Property name="UAsList" />
      <Property name="TechShopType" value="GcTechnologyCategory.xml">
        <Property name="TechnologyCategory" value="All" />
      </Property>
      <Property name="OSDMessage" value="]]..OSDMESSAGE..[["/>
      <Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
      <Property name="MarkerLabel" value="]]..MARKERLABEL..[["/>
      <Property name="MarkerIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="]]..FILENAME..[[" />
      </Property>
      <Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes.xml">
        <Property name="ScannerIconHighlightType" value="Diamond" />
      </Property>
      <Property name="StartTime" value="0" />
      <Property name="MessageTime" value="0" />
      <Property name="MessageDisplayTime" value="4" />
      <Property name="MessageAudio" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="IconTime" value="4" />
      <Property name="TooltipTime" value="10" />
      <Property name="TooltipRepeats" value="False" />
      <Property name="ShowEndTooltip" value="True" />
      <Property name="TooltipMessage" value="]]..TOOLTIP..[["/>
      <Property name="ResourceOverride" value="GcResourceElement.xml">
        <Property name="Filename" value="" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="AltId" value="" />
        <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
          <Property name="Samplers" />
        </Property>
      </Property>
    </Property>
]]
end

function GetReward(ID, EVENT)
return
[[
	<Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="]]..ID..[[" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False"/>
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
return
[[
        <Property value="GcAlienPuzzleOption.xml">
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
        <Property name="AkEvent" value="INVALID_EVENT"/>
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
 
All_Request_Leave =
[[
        <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="ALL_REQUEST_LEAVE" />
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
      </Property>
]]

Grave_Scan_Event = GetCustomScanEvent("SE_GRAVE", "Nearest", "BuildingClass", "GraveInCave", "False", "False", "Local", "UI_MP_PLANTKILL_GRAVE_OSD", "SCAN_GRAVE", "", "UI_TITLE_OWNED_LORE1")
Base_Scan_Event = GetCustomScanEvent("SE_BASE", "Nearest", "BuildingClass", "Base", "False", "False", "Local", "UI_RECOVER_BASE_OSD", "UI_RECOVER_BASE_MARKER", "", "UI_RECOVER_BASE_MARKER")
Glitch_Scan_Event = GetCustomScanEvent("SE_GLITCH", "Nearest", "BuildingClass", "StoryGlitch", "False", "False", "Local", "NPC_COMM_WEEK_04_GLITCH_OSD", "BUILDING_GLITCHYSTORYBOX", "", "BUILDING_GLITCHYSTORYBOX")

--Changes for the Rewards table (ID, EVENT)
REWARD1 = GetReward ("CRASHED_SHIP", "DISTRESS")
REWARD2 = GetReward ("TOOL_LOCATION", "SHOP")
REWARD3 = GetReward ("PLANET_ARCHIVES", "LIBRARY")
REWARD4 = GetReward ("R_GRAVE", "SE_GRAVE")
REWARD5 = GetReward ("R_BASE", "SE_BASE")
REWARD6 = GetReward ("R_GLITCH", "SE_GLITCH")
REWARD7 = GetReward ("R_ABANDONED", "ABANDONED")

REWARDSET = REWARD1..REWARD2..REWARD3..REWARD4..REWARD5..REWARD6..REWARD7

--PuzzleOptions (NAME, ACTION)
--First set of options only 4 options per set allowed
Menu1_Option1 = GetPuzzleOption("UI_PORTAL_OPT", "REVEAL_PORTAL")  -- Portal
Menu1_Option2 = GetPuzzleOption("BUILDING_DISTRESSSIGNAL_L", "CRASHED_SHIP") -- Crashed Starship
Menu1_Option3 = GetPuzzleOption("NPC_TECHSHOP_CATEGORY_WEAP","TOOL_LOCATION")  -- Multi-tool Location
--Generate a new Puzzle option that points to the next dialog set
More_Options1 = GetMorePuzzleOption("?POWER_SCANNER")
--Put the options together with a more options closer
Menu1_Options = Menu1_Option1..Menu1_Option2..Menu1_Option3..More_Options1

--Second set of options
Menu2_Option1 = GetPuzzleOption("BUILDING_FACTORY_L","SEC_SCN_FACT")  -- Manufacturing Facility
Menu2_Option2 = GetPuzzleOption("UI_NAV_DROPPOD_NAME_L", "SCAN_1")  -- ExoSuit DropPod
Menu2_Option3 = GetPuzzleOption("UI_LIBRARY_ENTRANCE_DESC", "PLANET_ARCHIVES")  -- Planetary Archives
More_Options2 = GetMorePuzzleOption("?ATOMIC_SCANNER")
Menu2_Options = Menu2_Option1..Menu2_Option2..Menu2_Option3..More_Options2

--Third set of options
Menu3_Option1 = GetPuzzleOption("UI_CORE_ACT2_STEP8_MARKER", "SHOW_CRASHSITE") -- Crashed Freighter
Menu3_Option2 = GetPuzzleOption("UI_ABAND_EVENT_AREA20", "SEC_SCN_OBS")  -- Observatory
Menu3_Option3 = GetPuzzleOption("NAV_DATA_OPTC", "RANDOM_SCAN_C")  -- Scan Habitable Outposts
More_Options3 = GetMorePuzzleOption("?NUCLEAR_SCANNER")
Menu3_Options = Menu3_Option1..Menu3_Option2..Menu3_Option3..More_Options3

--Fourth set of options
Menu4_Option1 = GetPuzzleOption("UI_SENTINEL_HIVE_NAME", "R_SHOW_HIVEONLY")  -- Sentinel Pillar
Menu4_Option2 = GetPuzzleOption("SCAN_GRAVE", "R_GRAVE")  -- Traveller Grave
Menu4_Option3 = GetPuzzleOption("UI_RECOVER_BASE_SUB", "R_BASE")  -- "Wild" Base Computer
More_Options4 = GetMorePuzzleOption("?HYDRO_SCANNER")
Menu4_Options = Menu4_Option1..Menu4_Option2..Menu4_Option3..More_Options4

-- --Fifth set of options, also get a close option
Menu5_Option1 = GetPuzzleOption("BUILDING_GLITCHYSTORYBOX", "R_GLITCH")  -- BOUNDARY FAILURE
Menu5_Option2 = GetPuzzleOption("BUILDING_ABANDONED", "R_ABANDONED")  -- Abandoned Building
Menu5_Options = Menu5_Option1..Menu5_Option2..All_Request_Leave

--Put all the options together.
ALL_PUZZLE_UPDATES = [[      <Property name="Options">
]]..Menu1_Options..Menu2_Options..Menu3_Options..Menu4_Options..Menu5_Options

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "Firmware Update for the Signal Booster"..MODVersion..".pak",
  ["MOD_DESCRIPTION"] = "Allows the Signal booster to find crashed ships, factories, multi tools, and portals with no inputs",
  ["MOD_AUTHOR"]      = "Lowkie",
  ["MOD_MAINTENANCE"] = "Babscoole",
  ["NMS_VERSION"]     = NMSVersion,
  ["MODIFICATIONS"]   =
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
							["LINE_OFFSET"]         = "1",
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
							["SPECIAL_KEY_WORDS"]  = {"Id", "SEC_CRASHEDSHIP"},
							["LINE_OFFSET"]        = "0",
							["ADD_OPTION"]         = "ADDafterSECTION",
							["VALUE_CHANGE_TABLE"] = {{"IGNORE",	"IGNORE"}},
							["ADD"] = REWARDSET,
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\SIMULATION\SCANNING\SCANEVENTTABLEPLANET.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
 						{
							["SPECIAL_KEY_WORDS"]  = {"Name","DRONE_HIVE",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"ReplaceEventIfAlreadyActive",	"True"},
								{"InterstellarOSDMessage", "SCANEVENT_ANOTHER_SYSTEM"},
							}
						},
 						{
							["SPECIAL_KEY_WORDS"]  = {"Name","FACTORY_R",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"ReplaceEventIfAlreadyActive",	"True"},                               
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Events"},
							["LINE_OFFSET"]         = "+0",
							["ADD"] = Grave_Scan_Event
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Events"},
							["LINE_OFFSET"]         = "+0",
							["ADD"] = Base_Scan_Event
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Events"},
							["LINE_OFFSET"]         = "+0",
							["ADD"] = Glitch_Scan_Event
						},						
					},
				},
			}
		}
	}
}
