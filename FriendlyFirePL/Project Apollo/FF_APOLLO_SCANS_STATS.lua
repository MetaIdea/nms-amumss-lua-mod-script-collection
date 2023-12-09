----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "BETA11"
METADATA_MOD_DESC       = "SCANS+STATS"



----------------------------------------------------------------------------------------------------
-- player titles
----------------------------------------------------------------------------------------------------

function BuildTitleProperty(number,score) return
[[
<Property value="GcPlayerTitle.xml">
  <Property name="ID" value="T_TIME]]..number..[[" />
  <Property name="Title" value="TEXT_TITLE_FORMAT_]]..number..[[" />
  <Property name="UnlockDescription" value="TEXT_TITLE_UNLOCK" />
  <Property name="AlreadyUnlockedDescription" value="TEXT_TITLE_OWNED_]]..number..[[" />
  <Property name="RevealedBy" value="" />
  <Property name="UnlockedByProductRecipe" value="" />
  <Property name="UnlockedByMission" value="" />
  <Property name="UnlockedByTrophy" value="" />
  <Property name="UnlockedByStat" value="STAT_TOKENS" />
  <Property name="UnlockedByStatValue" value="]]..score..[[" />
  <Property name="UnlockedByLeveledStatRank" value="0" />
  <Property name="UnlockedByInteraction" value="GcInteractionType.xml">
    <Property name="InteractionType" value="None" />
  </Property>
  <Property name="UnlockedByInteractionIndex" value="0" />
  <Property name="UnlockedByInteractionRace" value="GcAlienRace.xml">
    <Property name="AlienRace" value="None" />
  </Property>
  <Property name="UnlockedByInteractionOnlyTestMainRaces" value="False" />
</Property>
]]
end

PROPERTY_TITLE_1 = BuildTitleProperty(1,5)
PROPERTY_TITLE_2 = BuildTitleProperty(2,10)
PROPERTY_TITLE_3 = BuildTitleProperty(3,15)
PROPERTY_TITLE_4 = BuildTitleProperty(4,20)
PROPERTY_TITLE_5 = BuildTitleProperty(5,30)

----------------------------------------------------------------------------------------------------
-- stat tracking property
----------------------------------------------------------------------------------------------------

PROPERTY_STAT_TOKENS =
[[
<Property value="GcStatDefinition.xml">
  <Property name="Type" value="GcStatType.xml">
    <Property name="StatType" value="Int" />
  </Property>
  <Property name="TrackType" value="GcStatTrackType.xml">
    <Property name="StatTrackType" value="Add" />
  </Property>
  <Property name="DisplayType" value="GcStatDisplayType.xml">
    <Property name="StatDisplayType" value="None" />
  </Property>
  <Property name="DefaultValue" value="GcStatValueData.xml">
    <Property name="IntValue" value="0" />
    <Property name="FloatValue" value="0" />
    <Property name="Denominator" value="0" />
  </Property>
  <Property name="Id" value="STAT_TOKENS" />
  <Property name="TelemetryUpload" value="False" />
  <Property name="IsProgression" value="False" />
  <Property name="MissionMessageDecimals" value="2" />
</Property>
]]

----------------------------------------------------------------------------------------------------
-- portal scan event
----------------------------------------------------------------------------------------------------

PROPERTY_SCAN_PORTAL =
[[
<Property value="GcScanEventData.xml">
  <Property name="Name" value="SE_PORTAL" />
  <Property name="ForceInteraction" value="" />
  <Property name="ForceInteractionType" value="GcInteractionType.xml">
    <Property name="InteractionType" value="Portal" />
  </Property>
  <Property name="RequireInteractionRace" value="GcAlienRace.xml">
    <Property name="AlienRace" value="None" />
  </Property>
  <Property name="OverrideInteractionRace" value="GcAlienRace.xml">
    <Property name="AlienRace" value="None" />
  </Property>
  <Property name="ForceBroken" value="False" />
  <Property name="ForceFixed" value="False" />
  <Property name="ForceOverridesAll" value="True" />
  <Property name="ForceOverrideEncounter" value="" />
  <Property name="IsCommunityPortalOverride" value="False" />
  <Property name="ClearForcedInteractionOnCompletion" value="False" />
  <Property name="BuildingPreventionRadius" value="0" />
  <Property name="UseMissionTradingDataOverride" value="False" />
  <Property name="AlwaysShow" value="False" />
  <Property name="NeverShow" value="False" />
  <Property name="ShowOnlyIfSequenceTarget" value="False" />
  <Property name="PlanetLabelText" value="" />
  <Property name="SurveyDistance" value="0" />
  <Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD" />
  <Property name="EventStartType" value="Special" />
  <Property name="EventEndType" value="Proximity" />
  <Property name="EventPriority" value="Regular" />
  <Property name="CanEndFromOutsideMission" value="False" />
  <Property name="DisableMultiplayerSync" value="False" />
  <Property name="BlockStartedOnUseEvents" value="False" />
  <Property name="ReplaceEventIfAlreadyActive" value="False" />
  <Property name="BuildingLocation" value="AllNearest" />
  <Property name="BuildingType" value="BuildingClass" />
  <Property name="BuildingClass" value="GcBuildingClassification.xml">
    <Property name="BuildingClass" value="Portal" />
  </Property>
  <Property name="AllowFriendsBases" value="False" />
  <Property name="ForceWideRandom" value="False" />
  <Property name="MustFindSystem" value="False" />
  <Property name="AllowOverriddenBuildings" value="True" />
  <Property name="TargetMustMatchMissionSeed" value="False" />
  <Property name="SolarSystemLocation" value="LocalOrNear" />
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
    <Property name="NeedsSentinels" value="False" />
    <Property name="NeedsCorruptSentinelPlanet" value="False" />
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
    <Property name="NeedsResourceHint" value="ROBOT2" />
    <Property name="SuitableForCreatureDiscovery" value="False" />
    <Property name="SuitableForCreatureTaming" value="False" />
    <Property name="SamePlanetAsEvent" value="" />
    <Property name="SamePlanetAsSeasonParty" value="0" />
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
    <Property name="NeedsSentinels" value="False" />
    <Property name="NeedsCorruptSentinelPlanet" value="False" />
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
    <Property name="SamePlanetAsSeasonParty" value="0" />
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
  <Property name="OSDMessage" value="SIGNAL_PORTAL" />
  <Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
  <Property name="MarkerLabel" value="" />
  <Property name="MarkerIcon" value="TkTextureResource.xml">
    <Property name="Filename" value="" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
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
  <Property name="TooltipMessage" value="TIP_PORTAL" />
  <Property name="ResourceOverride" value="GcResourceElement.xml">
    <Property name="Filename" value="" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
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

----------------------------------------------------------------------------------------------------
-- dissonant scan event
----------------------------------------------------------------------------------------------------

PROPERTY_SCAN_DISSONANT = 
[[
<Property value="GcScanEventData.xml">
  <Property name="Name" value="SE_DISSONANT" />
  <Property name="ForceInteraction" value="" />
  <Property name="ForceInteractionType" value="GcInteractionType.xml">
    <Property name="InteractionType" value="None" />
  </Property>
  <Property name="RequireInteractionRace" value="GcAlienRace.xml">
    <Property name="AlienRace" value="None" />
  </Property>
  <Property name="OverrideInteractionRace" value="GcAlienRace.xml">
    <Property name="AlienRace" value="None" />
  </Property>
  <Property name="ForceBroken" value="False" />
  <Property name="ForceFixed" value="False" />
  <Property name="ForceOverridesAll" value="True" />
  <Property name="ForceOverrideEncounter" value="" />
  <Property name="IsCommunityPortalOverride" value="False" />
  <Property name="ClearForcedInteractionOnCompletion" value="False" />
  <Property name="BuildingPreventionRadius" value="0" />
  <Property name="UseMissionTradingDataOverride" value="False" />
  <Property name="AlwaysShow" value="False" />
  <Property name="NeverShow" value="False" />
  <Property name="ShowOnlyIfSequenceTarget" value="False" />
  <Property name="PlanetLabelText" value="" />
  <Property name="SurveyDistance" value="0" />
  <Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD" />
  <Property name="EventStartType" value="ObjectScan" />
  <Property name="EventEndType" value="Proximity" />
  <Property name="EventPriority" value="Regular" />
  <Property name="CanEndFromOutsideMission" value="False" />
  <Property name="DisableMultiplayerSync" value="True" />
  <Property name="BlockStartedOnUseEvents" value="False" />
  <Property name="ReplaceEventIfAlreadyActive" value="True" />
  <Property name="BuildingLocation" value="Nearest" />
  <Property name="BuildingType" value="BuildingClass" />
  <Property name="BuildingClass" value="GcBuildingClassification.xml">
    <Property name="BuildingClass" value="AbandonedRobotCamp" />
  </Property>
  <Property name="AllowFriendsBases" value="False" />
  <Property name="ForceWideRandom" value="True" />
  <Property name="MustFindSystem" value="False" />
  <Property name="AllowOverriddenBuildings" value="True" />
  <Property name="TargetMustMatchMissionSeed" value="False" />
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
    <Property name="NeedsPrimePlanet" value="False" />
    <Property name="NeedsSentinels" value="False" />
    <Property name="NeedsCorruptSentinelPlanet" value="False" />
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
    <Property name="SamePlanetAsSeasonParty" value="0" />
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
    <Property name="NeedsSentinels" value="False" />
    <Property name="NeedsCorruptSentinelPlanet" value="False" />
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
    <Property name="SamePlanetAsSeasonParty" value="0" />
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
  <Property name="OSDMessage" value="" />
  <Property name="InterstellarOSDMessage" value="" />
  <Property name="MarkerLabel" value="UI_MP_CORRUPT_PLANET_MARKER" />
  <Property name="MarkerIcon" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PLANET.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
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
  <Property name="TooltipMessage" value="" />
  <Property name="ResourceOverride" value="GcResourceElement.xml">
    <Property name="Filename" value="" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
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



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_STATSTABLE =           "METADATA\\GAMESTATE\\STATS\\STATDEFINITIONSTABLE.MBIN"
FILE_PLAYERTITLES =         "METADATA\\GAMESTATE\\PLAYERDATA\\PLAYERTITLEDATA.MBIN"
FILE_SCANS_PLANET =         "METADATA\\SIMULATION\\SCANNING\\SCANEVENTTABLEPLANET.MBIN"
FILE_SCANS_TUTORIAL =       "METADATA\\SIMULATION\\SCANNING\\SCANEVENTTABLETUTORIAL.MBIN"



NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]   = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_SCANS_TUTORIAL,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "Events",
                            ["ADD"] = PROPERTY_SCAN_PORTAL,

                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_SCANS_PLANET,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "Events",
                            ["ADD"] = PROPERTY_SCAN_DISSONANT,

                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_STATSTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "StatDefinitionTable",
                            ["ADD"] = PROPERTY_STAT_TOKENS,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_PLAYERTITLES,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"ID","T_ABANDLORE3"},
                            ["VCT"] = {{"Title","UI_PLAYER_TITLE_ABANDLORE3"},},
                        },

                        {
                            ["SKW"] = {"ID","T_ABANDLORE4"},
                            ["VCT"] = {{"Title","UI_PLAYER_TITLE_ABANDLORE4"},},
                        },

                        {
                            ["PKW"] = "Titles",
                            ["ADD"] =
                            {
                                PROPERTY_TITLE_1,
                                PROPERTY_TITLE_2,
                                PROPERTY_TITLE_3,
                                PROPERTY_TITLE_4,
                                PROPERTY_TITLE_5,
                            },
                        },
                    },
                }



            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------