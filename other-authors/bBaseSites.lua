REWARD_TABLE_TEXT =
  [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="12" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="BASE" />
              <Property name="ScanEventTable" value="Planet" />
              <Property name="DoAerialScan" value="True" />
            </Property>
            <Property name="LabelID" value="Base" />
          </Property>
]]

SCANEVENT_TEXT =
  [[
	<Property value="GcScanEventData.xml">
	<Property name="Name" value="BASE" />
	<Property name="ForceInteraction" value="" />
	<Property name="ForceInteractionType" value="GcInteractionType.xml">
		<Property name="InteractionType" value="None" />
	</Property>
	<Property name="ForceBroken" value="False" />
	<Property name="ForceFixed" value="False" />
	<Property name="ForceOverridesAll" value="True" />
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
	<Property name="ReplaceEventIfAlreadyActive" value="False" />
	<Property name="BuildingLocation" value="Nearest" />
	<Property name="BuildingType" value="BuildingClass" />
	<Property name="BuildingClass" value="GcBuildingClassification.xml">
		<Property name="BuildingClass" value="Base" />
	</Property>
	<Property name="AllowFriendsBases" value="False" />
	<Property name="ForceWideRandom" value="False" />
	<Property name="MustFindSystem" value="False" />
	<Property name="AllowOverriddenBuildings" value="True" />
	<Property name="SolarSystemLocation" value="Local" />
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
		<Property name="NeedsExtremeSentinelPlanet" value="False" />
		<Property name="NeverAllowExtremeSentinelPlanet" value="False" />
		<Property name="NeedsExtremeWeatherPlanet" value="False" />
		<Property name="NeedsExtremeHazardPlanet" value="False" />
		<Property name="AnyBiomeNotWeirdOrDead" value="False" />
		<Property name="AnyRGBBiome" value="False" />
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
		<Property name="NeedsExtremeSentinelPlanet" value="False" />
		<Property name="NeverAllowExtremeSentinelPlanet" value="False" />
		<Property name="NeedsExtremeWeatherPlanet" value="False" />
		<Property name="NeedsExtremeHazardPlanet" value="False" />
		<Property name="AnyBiomeNotWeirdOrDead" value="False" />
		<Property name="AnyRGBBiome" value="False" />
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
	<Property name="OSDMessage" value="SIGNAL_BASE" />
	<Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
	<Property name="MarkerLabel" value="" />
	<Property name="MarkerIcon" value="TkTextureResource.xml">
		<Property name="Filename" value="" />
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
	<Property name="TooltipMessage" value="TIP_BASE" />
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

NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"] = "bBaseSites.pak",
  ["MOD_DESCRIPTION"] = [[ 
    Allows you to find good base sites with Secure Sites planetary maps.
    These sites have a base computer in the centre of a fairly large flat 
    area, facilitating easy base construction.  Based on work by XenonS at
    https://nomansskymods.com/mods/easy-base-building/.
]],
  ["MOD_AUTHOR"] = "Bladehawke",
  ["NMS_VERSION"] = "3.68", -- Changes in PLANETBUILDINGTABLE files made this change necessary
  ["UPDATE_LINK"] = "https://pastebin.com/raw/UkVFmagZ",
  
  ["MODIFICATIONS"] = {
    {
      ["MBIN_CHANGE_TABLE"] = {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] = {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "RANDOM_SCAN_A", "LabelID", "Factory"},
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
              ["ADD"] = REWARD_TABLE_TEXT
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_A", "LabelID", "Factory"},
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
              ["ADD"] = REWARD_TABLE_TEXT
            }
          }
        },
        
--[[    Deprecated, PLANETBUILDINGTABLE no longer allows adding a waypoint in this manner
	    {
          ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/ENVIRONMENT/PLANETBUILDINGTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] = {
            {
              ["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Base"},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] = {
                {"AddWaypoint", "True"}
              }
            }
          }
        }, ]]
        {
          ["MBIN_FILE_SOURCE"] = {
            "METADATA/SIMULATION/SCANNING/SCANEVENTTABLEPLANET.MBIN",
            "METADATA/SIMULATION/SCANNING/SCANEVENTTABLESPACE.MBIN"
          },
          ["EXML_CHANGE_TABLE"] = {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "RADIOTOWER", "TooltipMessage", "TIP_RADIOTOWER"},
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
              ["ADD"] = SCANEVENT_TEXT
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SCANNING/SCANEVENTTABLESPACE.MBIN",
          ["EXML_CHANGE_TABLE"] = {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "BASE"},
              ["VALUE_CHANGE_TABLE"] = {
                {"EventStartType", "Timer"},
                {"EventEndType", "Interact"},
                {"TooltipRepeats", "True"}
              }
            }
          }
        }
      }
    }
  }
}
-- EOF
