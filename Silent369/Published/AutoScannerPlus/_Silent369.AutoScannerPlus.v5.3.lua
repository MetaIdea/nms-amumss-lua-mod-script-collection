local modfilename = "AutoScannerPlus"
local lua_author  = "Silent"
local lua_version = "5.3"
local mod_author  = "Silent369"
local contributor = "Spectrus1702"
local nms_version = "6.34"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Auto Scan planet entities (objects, structures) within given range.

Inspired by the Scan_Auto.cs script provided by cmkNMSModBuilder
https://github.com/cmkushnir/NMSModBuilder

]]

------------------------------------------------------------------------------------------

local m_ScanRange = 12500.000000
local m_ScanTime  = 30.000000
local m_RangeMult = 1.000000
local m_ShowRange = 12500.000000
local m_Override  = 0.000000

------------------------------------------------------------------------------------------
-- Create Scannable Component Data (with optional Wrapper)
------------------------------------------------------------------------------------------
function CreateScannableComponentData(ScanRange, ScanName, ScanTime, RangeMult, ShowRange, DisplayIcon, AllowMerge, Override, Wrapper)
    local Content = [[
			<Property name="GcScannableComponentData">
				<Property name="ScanRange" value="]]..ScanRange..[[" />
				<Property name="ScanName" value="]]..ScanName..[[" />
				<Property name="ScanTime" value="]]..ScanTime..[[" />
				<Property name="CompassRangeMultiplier" value="]]..RangeMult..[[" />
				<Property name="AlwaysShowRange" value="]]..ShowRange..[[" />
				<Property name="HideCompassInAlwaysShowRange" value="false" />
				<Property name="CanTagIcon" value="true" />
				<Property name="ClearTagOnArrival" value="true" />
				<Property name="DisableIfBuildingPart" value="true" />
				<Property name="DisableIfInBase" value="true" />
				<Property name="UseModelNode" value="true" />
				<Property name="Icon" value="GcScannerIconTypes">
					<Property name="ScanIconType" value="]]..DisplayIcon..[[" />
				</Property>
				<Property name="BinocsDiscoIconOverride" value="GcDiscoveryType">
					<Property name="DiscoveryType" value="Unknown" />
				</Property>
				<Property name="ScannableType" value="Binoculars" />
				<Property name="IsPlacedMarker" value="false" />
				<Property name="ShowInFreighterBranchRoom" value="false" />
				<Property name="TellPlayerIfFreighterObjectUsed" value="false" />
				<Property name="FreighterObjectAlreadyUsedLocID" value="UI_ABAND_LOG_READ" />
				<Property name="GetIconAndNameFromSettlementBuilding" value="false" />
				<Property name="AllowedToMerge" value="]]..AllowMerge..[[" />
				<Property name="MarkerActiveWithNodeInactive" value="true" />
				<Property name="ValidMissionSurveyIds" />
				<Property name="MinDisplayDistanceOverride" value="-1.000000" />
				<Property name="MarkerOffsetOverride" value="]]..Override..[[" />
				<Property name="ForceCompassMarkerOnForScannerIcon" value="true" />
			</Property>]]

    -- Rolling Plant has a specific GcScannableComponentData with an _index
    -- And needs to be wrapped with just the Content GcScannableComponentData.
    -- Everything else is wrapped with the full Component GcScannableComponentData

    if Wrapper then
        return [[
		<Property name="Components" value="GcScannableComponentData">]] .. Content .. [[
		</Property>]]
    else
        return Content
    end
end

------------------------------------------------------------------------------------------
-- Audio component for Distress Signals
------------------------------------------------------------------------------------------
local DistressSound = [[
		<Property name="Components" value="GcAudioAreaTriggerComponentData">
			<Property name="GcAudioAreaTriggerComponentData">
				<Property name="Event Enter" value="GcAudioWwiseEvents">
					<Property name="AkEvent" value="WARN_DISTRESS_DETECTED" />
				</Property>
				<Property name="Event Exit" value="GcAudioWwiseEvents">
					<Property name="AkEvent" value="INVALID_EVENT" />
				</Property>
				<Property name="Enter Distance" value="]]..tostring(m_ShowRange)..[[" />
				<Property name="Exit Distance" value="]]..tostring(m_ShowRange)..[[" />
			</Property>
		</Property>
]]

------------------------------------------------------------------------------------------
--- Add Portal to Scanevent table
------------------------------------------------------------------------------------------

local AddPortalEvent = [[
        <Property name="Events" value="GcScanEventData">
			<Property name="Name" value="PORTAL" />
			<Property name="ForceInteraction" value="" />
			<Property name="UseSeasonDataAsInteraction" value="false" />
			<Property name="ForceInteractionType" value="GcInteractionType">
				<Property name="InteractionType" value="None" />
			</Property>
			<Property name="NPCReactsToPlayer" value="false" />
			<Property name="RequireInteractionRace" value="GcAlienRace">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="OverrideInteractionRace" value="GcAlienRace">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="MustMatchStoryUtilityPuzzle" value="" />
			<Property name="ForceBroken" value="false" />
			<Property name="ForceFixed" value="false" />
			<Property name="ReplacementMaintData" value="" />
			<Property name="ForceReplaceStoryPortalSeed" value="false" />
			<Property name="ForceOverridesAll" value="true" />
			<Property name="ForceOverrideEncounter" value="" />
			<Property name="IsCommunityPortalOverride" value="false" />
			<Property name="ClearForcedInteractionOnCompletion" value="false" />
			<Property name="BuildingPreventionRadius" value="0.000000" />
			<Property name="BuildingPreventionDisallowBuilding" value="false" />
			<Property name="UseMissionTradingDataOverride" value="false" />
			<Property name="AlwaysShow" value="true" />
			<Property name="NeverShow" value="false" />
			<Property name="ShowOnlyIfSequenceTarget" value="false" />
			<Property name="PlanetLabelText" value="" />
			<Property name="SurveyDistance" value="0.000000" />
			<Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD" />
			<Property name="SurveyHUDName" value="UI_MISSIONSURVEY_HUD_SUB" />
			<Property name="PlaceMarkerAtTaggedNode" value="GcStaticTag">
				<Property name="StaticTag" value="None" />
			</Property>
			<Property name="EventStartType" value="Special" />
			<Property name="EventEndType" value="Interact" />
			<Property name="EventPriority" value="High" />
			<Property name="CanEndFromOutsideMission" value="false" />
			<Property name="DisableMultiplayerSync" value="false" />
			<Property name="BlockStartedOnUseEvents" value="false" />
			<Property name="ReplaceEventIfAlreadyActive" value="true" />
			<Property name="BuildingLocation" value="AllNearest" />
			<Property name="SearchType" value="FindBuildingClass" />
			<Property name="SpecificBuildingClass" value="GcBuildingClassification">
				<Property name="BuildingClass" value="Portal" />
			</Property>
			<Property name="AllowFriendsBases" value="false" />
			<Property name="ForceWideRandom" value="true" />
			<Property name="MustFindSystem" value="false" />
			<Property name="AllowOverriddenBuildings" value="true" />
			<Property name="TargetMustMatchMissionSeed" value="false" />
			<Property name="UseBuildingFromRendezvousStage" value="false" />
			<Property name="UseUDAAsSearchPoint" value="" />
			<Property name="SolarSystemLocation" value="LocalOrNear" />
			<Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup">
				<Property name="UseStarType" value="false" />
				<Property name="UseWealth" value="false" />
				<Property name="UseTrading" value="false" />
				<Property name="UseRace" value="GcAlienRace">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly">
					<Property name="GalaxyStarAnomaly" value="None" />
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData">
					<Property name="ConflictLevel" value="Default" />
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes">
					<Property name="GalaxyStarType" value="Yellow" />
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData">
					<Property name="WealthClass" value="GcWealthClass">
						<Property name="WealthClass" value="Average" />
					</Property>
					<Property name="TradingClass" value="GcTradingClass">
						<Property name="TradingClass" value="Mining" />
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="false" />
				<Property name="NeverAllowEmpty" value="false" />
				<Property name="NeverAllowAbandoned" value="false" />
				<Property name="AllowedToBePurpleWithoutAccess" value="false" />
				<Property name="RequireUndiscovered" value="false" />
				<Property name="NeedsWaterPlanet" value="false" />
				<Property name="NeedsDeepWaterPlanet" value="false" />
				<Property name="NeedsPrimePlanet" value="false" />
				<Property name="NeedsSentinels" value="false" />
				<Property name="NeedsCorruptSentinelPlanet" value="false" />
				<Property name="NeedsExtremeSentinelPlanet" value="false" />
				<Property name="NeverAllowExtremeSentinelPlanet" value="false" />
				<Property name="NeedsExtremeWeatherPlanet" value="false" />
				<Property name="NeedsExtremeHazardPlanet" value="false" />
				<Property name="NeverAllowExtremeWeatherPlanet" value="false" />
				<Property name="AnyBiomeNotWeirdOrDead" value="false" />
				<Property name="AnyRGBBiome" value="false" />
				<Property name="AnyInfestedBiome" value="false" />
				<Property name="NeedsBiome" value="false" />
				<Property name="NeedsBiomeType" value="GcBiomeType">
					<Property name="Biome" value="Lush" />
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType">
					<Property name="BiomeSubType" value="None" />
				</Property>
				<Property name="NeedsEmptySystem" value="false" />
				<Property name="NeedsAbandonedSystem" value="false" />
				<Property name="NeedsResourceHint" value="" />
				<Property name="SuitableForCreatureDiscovery" value="false" />
				<Property name="SuitableForWeirdCreatureDiscovery" value="false" />
				<Property name="SuitableForRobotCreatureDiscovery" value="false" />
				<Property name="SuitableForCreatureTaming" value="false" />
				<Property name="NeedsSpecificCreature" value="" />
				<Property name="SamePlanetAsEvent" value="" />
				<Property name="SamePlanetAsSeasonParty" value="0" />
				<Property name="ExcludePlanetsWithEvents" />
				<Property name="SystemNeedsResourceHint" value="" />
				<Property name="SystemNeedsWater" value="false" />
				<Property name="SystemNeedsWeirdPlanet" value="false" />
				<Property name="SystemNeedsInfestedPlanet" value="false" />
				<Property name="SystemNeedsRelicPlanet" value="false" />
				<Property name="SystemNeedsCorruptSentinelPlanet" value="false" />
				<Property name="SystemNeedsExtremeStormPlanet" value="false" />
				<Property name="SystemNeedsGasGiant" value="false" />
				<Property name="SystemNeedsNonGasGiant" value="false" />
				<Property name="NeverAllowGasGiantSystem" value="false" />
				<Property name="MinPlanets" value="-1" />
			</Property>
			<Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup">
				<Property name="UseStarType" value="false" />
				<Property name="UseWealth" value="false" />
				<Property name="UseTrading" value="false" />
				<Property name="UseRace" value="GcAlienRace">
					<Property name="AlienRace" value="None" />
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly">
					<Property name="GalaxyStarAnomaly" value="None" />
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData">
					<Property name="ConflictLevel" value="Default" />
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes">
					<Property name="GalaxyStarType" value="Yellow" />
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData">
					<Property name="WealthClass" value="GcWealthClass">
						<Property name="WealthClass" value="Average" />
					</Property>
					<Property name="TradingClass" value="GcTradingClass">
						<Property name="TradingClass" value="Mining" />
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="false" />
				<Property name="NeverAllowEmpty" value="false" />
				<Property name="NeverAllowAbandoned" value="false" />
				<Property name="AllowedToBePurpleWithoutAccess" value="false" />
				<Property name="RequireUndiscovered" value="false" />
				<Property name="NeedsWaterPlanet" value="false" />
				<Property name="NeedsDeepWaterPlanet" value="false" />
				<Property name="NeedsPrimePlanet" value="false" />
				<Property name="NeedsSentinels" value="false" />
				<Property name="NeedsCorruptSentinelPlanet" value="false" />
				<Property name="NeedsExtremeSentinelPlanet" value="false" />
				<Property name="NeverAllowExtremeSentinelPlanet" value="false" />
				<Property name="NeedsExtremeWeatherPlanet" value="false" />
				<Property name="NeedsExtremeHazardPlanet" value="false" />
				<Property name="NeverAllowExtremeWeatherPlanet" value="false" />
				<Property name="AnyBiomeNotWeirdOrDead" value="false" />
				<Property name="AnyRGBBiome" value="false" />
				<Property name="AnyInfestedBiome" value="false" />
				<Property name="NeedsBiome" value="false" />
				<Property name="NeedsBiomeType" value="GcBiomeType">
					<Property name="Biome" value="Lush" />
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType">
					<Property name="BiomeSubType" value="None" />
				</Property>
				<Property name="NeedsEmptySystem" value="false" />
				<Property name="NeedsAbandonedSystem" value="false" />
				<Property name="NeedsResourceHint" value="" />
				<Property name="SuitableForCreatureDiscovery" value="false" />
				<Property name="SuitableForWeirdCreatureDiscovery" value="false" />
				<Property name="SuitableForRobotCreatureDiscovery" value="false" />
				<Property name="SuitableForCreatureTaming" value="false" />
				<Property name="NeedsSpecificCreature" value="" />
				<Property name="SamePlanetAsEvent" value="" />
				<Property name="SamePlanetAsSeasonParty" value="0" />
				<Property name="ExcludePlanetsWithEvents" />
				<Property name="SystemNeedsResourceHint" value="" />
				<Property name="SystemNeedsWater" value="false" />
				<Property name="SystemNeedsWeirdPlanet" value="false" />
				<Property name="SystemNeedsInfestedPlanet" value="false" />
				<Property name="SystemNeedsRelicPlanet" value="false" />
				<Property name="SystemNeedsCorruptSentinelPlanet" value="false" />
				<Property name="SystemNeedsExtremeStormPlanet" value="false" />
				<Property name="SystemNeedsGasGiant" value="false" />
				<Property name="SystemNeedsNonGasGiant" value="false" />
				<Property name="NeverAllowGasGiantSystem" value="false" />
				<Property name="MinPlanets" value="-1" />
			</Property>
			<Property name="ForceRestartInteraction" value="true" />
			<Property name="ForceResetPortal" value="false" />
			<Property name="HasReward" value="" />
			<Property name="NextOption" value="" />
			<Property name="TriggerActions" value="GcScanEventTriggers">
				<Property name="Range" value="100.000000" />
				<Property name="Triggers" />
				<Property name="AllowRetrigger" value="false" />
			</Property>
			<Property name="UAsList" />
			<Property name="TechShopType" value="GcTechnologyCategory">
				<Property name="TechnologyCategory" value="All" />
			</Property>
			<Property name="OSDMessage" value="SIGNAL_PORTAL" />
			<Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
			<Property name="MarkerLabel" value="" />
			<Property name="MarkerIcon" value="TkTextureResource">
				<Property name="Filename" value="" />
			</Property>
			<Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes">
				<Property name="ScannerIconHighlightType" value="Diamond" />
			</Property>
			<Property name="StartTime" value="0.000000" />
			<Property name="MessageTime" value="0.000000" />
			<Property name="MessageDisplayTime" value="4.000000" />
			<Property name="MessageAudio" value="GcAudioWwiseEvents">
				<Property name="AkEvent" value="INVALID_EVENT" />
			</Property>
			<Property name="IconTime" value="4.000000" />
			<Property name="TooltipTime" value="10.000000" />
			<Property name="TooltipRepeats" value="false" />
			<Property name="ShowEndTooltip" value="true" />
			<Property name="TooltipMessage" value="TIP_MONOLITH" />
			<Property name="MissionMessageOnInteract" value="" />
			<Property name="ResourceOverride" value="GcResourceElement">
				<Property name="Filename" value="" />
				<Property name="Seed" value="NONE" />
				<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
					<Property name="Samplers" />
				</Property>
				<Property name="AltId" value="" />
			</Property>
		</Property>
]]


------------------------------------------------------------------------------------------
-- When we need to add a physics component.
------------------------------------------------------------------------------------------
function CreatePhysicsComponent(TriggerVolume, TriggerType)
  local result = [[
		<Property name="Components" value="TkPhysicsComponentData">
			<Property name="TkPhysicsComponentData">
				<Property name="Data" value="TkPhysicsData">
					<Property name="Mass" value="0.000000" />
					<Property name="Friction" value="0.500000" />
					<Property name="RollingFriction" value="0.200000" />
					<Property name="AngularDamping" value="0.200000" />
					<Property name="LinearDamping" value="0.100000" />
					<Property name="Gravity" value="20.000000" />
				</Property>
				<Property name="TriggerVolume" value="]]..TriggerVolume..[[" />
				<Property name="TriggerVolumeType" value="TkVolumeTriggerType">
					<Property name="VolumeTriggerType" value="]]..TriggerType..[[" />
				</Property>
				<Property name="SurfaceProperties" value="None" />
				<Property name="ModelOwnership" value="Model" />
				<Property name="Climbable" value="false" />
				<Property name="Walkable" value="true" />
				<Property name="Floor" value="false" />
				<Property name="IgnoreModelOwner" value="false" />
				<Property name="NoVehicleCollide" value="false" />
				<Property name="NoPlayerCollide" value="false" />
				<Property name="NoFireCollide" value="false" />
				<Property name="IgnoreAllCollisions" value="false" />
				<Property name="BlocksInteract" value="false" />
				<Property name="CameraInvisible" value="false" />
				<Property name="InvisibleForInteraction" value="false" />
				<Property name="AllowTeleporter" value="false" />
				<Property name="BlockTeleporter" value="false" />
				<Property name="DisableGravity" value="false" />
				<Property name="SpinOnCreate" value="0.000000" />
				<Property name="ScaleAffectsMass" value="false" />
				<Property name="AllowedDefaultCollision" value="true" />
				<Property name="Animated" value="false" />
				<Property name="UseBasePartOptimisation" value="false" />
				<Property name="IsTransporter" value="false" />
				<Property name="UseSimpleCharacterCollision" value="false" />
				<Property name="RotateSimpleCharacterCollisionCapsule" value="false" />
				<Property name="SimpleCharacterCollisionRadius" value="0.500000" />
				<Property name="SimpleCharacterCollisionHeight" value="2.000000" />
				<Property name="SimpleCharacterCollisionHeightOffset" value="0.000000" />
				<Property name="SimpleCharacterCollisionFwdOffset" value="0.000000" />
			</Property>
		</Property>
  ]]
  return result
end
------------------------------------------------------------------------------------------
local phys_Physics = CreatePhysicsComponent("false", "Open")
------------------------------------------------------------------------------------------

-- Define the GcScannableComponentData for various entities.
-- If ANY are disabled (commented with --), check below to enable that section!

-- Wrapper 'true'  argument indicates the full wrapper should be used.
-- Wrapper 'false' argument indicates the solo wrapper should be used.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--BUILDING                                                  SIGNAL/SCAN TYPE              SCANTIME    RANGEMULT    SHOWRANGE    ICON                  MERGE    OVERRIDE    WRAP
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddAbandoned   = CreateScannableComponentData(m_ScanRange, "BUILDING_ABANDONED_L",        m_ScanTime, m_RangeMult, m_ShowRange, "HazardEgg",          "true",  m_Override, true)
AddBase        = CreateScannableComponentData(m_ScanRange, "UI_RECOVER_BASE_MARKER",      m_ScanTime, m_RangeMult, m_ShowRange, "Shield",            "false",  m_Override, true)
AddBones       = CreateScannableComponentData(m_ScanRange, "UI_UNDERGROUND_BONES_NAME_L", m_ScanTime, m_RangeMult, m_ShowRange, "BuriedRare",         "true",  "0.000000", true)
AddFossil      = CreateScannableComponentData(m_ScanRange, "UI_UNDERGROUND_BONES_NAME_L", m_ScanTime, m_RangeMult, m_ShowRange, "BuriedFossil",      "false",  "0.000000", true)
AddDepot       = CreateScannableComponentData(m_ScanRange, "SIGNAL_DEPOT",                m_ScanTime, m_RangeMult, m_ShowRange, "Drone",              "true",  m_Override, true)
AddDistress    = CreateScannableComponentData(m_ScanRange, "BUILDING_DISTRESSSIGNAL_L",   m_ScanTime, m_RangeMult, m_ShowRange, "HazardPlant",       "false",  m_Override, true)
AddFactory     = CreateScannableComponentData(m_ScanRange, "BUILDING_FACTORY_L",          m_ScanTime, m_RangeMult, m_ShowRange, "Drone",              "true",  m_Override, true)
AddFreighter   = CreateScannableComponentData(m_ScanRange, "BUILDING_FREIGHTER_ALT",      m_ScanTime, m_RangeMult, m_ShowRange, "HazardPlant",       "false",  m_Override, true)
AddGrave       = CreateScannableComponentData(m_ScanRange, "BUILDING_GRAVEINCAVE",        m_ScanTime, m_RangeMult, m_ShowRange, "Grave",             "false",  m_Override, true)
AddHarvester   = CreateScannableComponentData(m_ScanRange, "SIGNAL_HARVESTER",            m_ScanTime, m_RangeMult, m_ShowRange, "HarvestPlant",      "false",  m_Override, true)
--AddMessage     = CreateScannableComponentData(m_ScanRange, "BLD_MESSAGEMODULE_NAME_L",    m_ScanTime, m_RangeMult, m_ShowRange, "Grave",             "false",  m_Override, true)
AddMonolith    = CreateScannableComponentData(m_ScanRange, "BUILDING_MONOLITH_L",         m_ScanTime, m_RangeMult, m_ShowRange, "Artifact",          "false",  m_Override, true)
AddObserver    = CreateScannableComponentData(m_ScanRange, "BUILDING_OBSERVATORY_L",      m_ScanTime, m_RangeMult, m_ShowRange, "SignalBooster",      "true",  m_Override, true)
AddOutpost     = CreateScannableComponentData(m_ScanRange, "BUILDING_OUTPOST_L",          m_ScanTime, m_RangeMult, m_ShowRange, "FreighterDoor",      "true",  m_Override, true)
--AddPlaque      = CreateScannableComponentData(m_ScanRange, "SIGNAL_PLAQUE",               m_ScanTime, m_RangeMult, m_ShowRange, "Artifact",          "false",  m_Override, true)
AddPSettlement = CreateScannableComponentData(m_ScanRange, "UI_SETTLEMENT_LOCATED_OSD",   m_ScanTime, m_RangeMult, m_ShowRange, "HazardPlant",       "false",  m_Override, true)
AddPortal      = CreateScannableComponentData(m_ScanRange, "BUILDING_PORTAL_L",           m_ScanTime, m_RangeMult, m_ShowRange, "Artifact",          "false",  m_Override, true)
AddRadioTower  = CreateScannableComponentData(m_ScanRange, "BUILDING_RADIOTOWER_L",       m_ScanTime, m_RangeMult, m_ShowRange, "SignalBooster",      "true",  m_Override, true)
AddRuin        = CreateScannableComponentData(m_ScanRange, "UI_SIGNAL_TREASURERUIN",      m_ScanTime, m_RangeMult, m_ShowRange, "Artifact",           "true",  m_Override, true)
AddTreasure    = CreateScannableComponentData(m_ScanRange, "PLANT_FOOD_38",               m_ScanTime, m_RangeMult, m_ShowRange, "ArtifactCrate",      "true",  m_Override, true)
AddScrap       = CreateScannableComponentData(m_ScanRange, "UI_SCRAP_REWARD",             m_ScanTime, m_RangeMult, m_ShowRange, "BuriedRare",        "false",  "0.000000", true)
AddSentinelH   = CreateScannableComponentData(m_ScanRange, "UI_MP_HIVE_LABEL",            m_ScanTime, m_RangeMult, m_ShowRange, "Drone",              "true",  m_Override, true)
AddSentinelD   = CreateScannableComponentData(m_ScanRange, "UI_MP_HIVE_LABEL",            m_ScanTime, m_RangeMult, m_ShowRange, "FriendlyDrone",      "true",  m_Override, true)
AddStoryGlitch = CreateScannableComponentData(m_ScanRange, "Alien Anomaly Detected",      m_ScanTime, m_RangeMult, m_ShowRange, "Artifact",          "false",  m_Override, true)
AddMinorSettle = CreateScannableComponentData(m_ScanRange, "BUILDING_SHOP_L",             m_ScanTime, m_RangeMult, m_ShowRange, "Hazard",            "false",  m_Override, true)
AddTerminal    = CreateScannableComponentData(m_ScanRange, "SIGNAL_TERMINAL",             m_ScanTime, m_RangeMult, m_ShowRange, "FreighterTerminal", "false",  m_Override, true)
AddRunawayMold = CreateScannableComponentData(m_ScanRange, "UI_WEIRD_BALL_NAME_L",        m_ScanTime, m_RangeMult, m_ShowRange, "Rare3",              "true",  "0.000000", false)
AddSentinCrash = CreateScannableComponentData(m_ScanRange, "UI_SENTINEL_CRASH_MARKER",    m_ScanTime, m_RangeMult, m_ShowRange, "FriendlyDrone",      "true",  m_Override, true)
AddDropPod     = CreateScannableComponentData(m_ScanRange, "BUILDING_DAMAGEDMACHINE_L",   m_ScanTime, m_RangeMult, m_ShowRange, "Tech",              "false",  m_Override, true)
AddPillar      = CreateScannableComponentData(m_ScanRange, "UI_MINIHIVE_CORRUPT_NAME",    m_ScanTime, m_RangeMult, m_ShowRange, "CorruptedMachine",  "false",  m_Override, true)
AddCamp        = CreateScannableComponentData(m_ScanRange, "UI_ROBOT_CAMP_TERMINAL_NAME", m_ScanTime, m_RangeMult, m_ShowRange, "RobotHead",         "false",  m_Override, true)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME     = table.concat({modfilename, ".v", lua_version}),
    LUA_AUTHOR       = lua_author,
    MOD_AUTHOR       = mod_author,
    NMS_VERSION      = nms_version,
    MOD_CONTRIBUTORS = contributor,
    MOD_DESCRIPTION  = description,
    MOD_MAINTENANCE  = maintenance,
    EXML_CREATE      = exmlcreate,
    MODIFICATIONS    =
    {
        {
            MBIN_CT =
            {
                    ----------------------------------------------------------------------------------------------
                    --Add Portal to SCANEVENTTABLEPLANET
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[METADATA\SIMULATION\SCANNING\SCANEVENTTABLEPLANET.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Name", "MONOLITH"},
                            ADD_OPTION = "ADDafterSECTION",
                            EXML_FLAGS = "UPDATESECTION",
                            ADD = AddPortalEvent
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --GCBUILDINGGLOBALS
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[GCBUILDINGGLOBALS.GLOBAL.MXML]],
                    MXML_CT =
                    {
                        {
                            VCT = {{"FadeDistance", m_ScanRange},}
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --SENTINEL CRASH SITE - (Inserted TkPhysicsComponentData)
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DISTRESSSIGNAL\SENTINELCRASHSCENE\ENTITIES\DATA.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            PKW = {"Components"},
                            CREATE_HOS = true,
                            ADD = DistressSound..phys_Physics,
                        },
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddSentinCrash
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --RUNAWAY MOLD - Already has GcScannableComponentData, we're overriding for AllowMerge
                    --This is also a special case where we insert the GcScannableComponentData in a specific
                    --way due to GcScannableComponentData having an index value!
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\ROLLINGPLANT\ENTITIES\ROLLINGPROP.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcScannableComponentData"},
                            PKW = {"GcScannableComponentData"},
                            EXML_FLAGS = "UPDATESECTION",
                            ADD_OPTION = "REPLACEwholeSECTION",
                            ADD = AddRunawayMold,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --TRAVELLER GRAVE - Already has GcScannableComponentData, we're overriding for AllowMerge
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\GRAVEINCAVE\GRAVEINCAVE\ENTITIES\GRAVEINCAVE.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcScannableComponentData"},
                            ADD_OPTION = "REPLACEwholeSECTION",
                            ADD = AddGrave,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --DISSONANCE RESONATOR - Already has GcScannableComponentData, we're overriding for AllowMerge
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\CORRUPTDRONEPILLAR\ENTITIES\DATA.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcScannableComponentData"},
                            ADD_OPTION = "REPLACEwholeSECTION",
                            ADD = AddPillar,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --DROP PODS - Spectrus1702
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DAMAGEDMACHINERY\DAMAGEDMACHINERY_POD\ENTITIES\DAMAGEDMACHINERY_POD.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcObjectPlacementComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddDropPod,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --HARVESTER
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\HARVESTER\ENTITIES\RESOURCEHARVESTER.ENTITY.MXML]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\HARVESTER\HARVESTERSCIENTIFIC\ENTITIES\HARVESTERINTERACTION.ENTITY.MXML]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\HARVESTER\HARVESTERTRADER\ENTITIES\HARVESTERINTERACTION.ENTITY.MXML]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\HARVESTER\HARVESTERWARRIOR\ENTITIES\HARVESTERINTERACTION.ENTITY.MXML]]
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddHarvester,
                        },
                    }
                },
                   ----------------------------------------------------------------------------------------------
                   --MESSAGE MODULE
                   ----------------------------------------------------------------------------------------------
                --{
                --    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\MESSAGEMODULE\ENTITIES\MESSAGEMODULE.ENTITY.MXML]],
                --    MXML_CT =
                --    {
                --        {
                --            SKW = {"Components", "TkPhysicsComponentData"},
                --            ADD_OPTION = "ADDbeforeSECTION",
                --            ADD = AddMessage,
                --        },
                --    },
                --},
                    ----------------------------------------------------------------------------------------------
                    --STORY GLITCH (ANOMOLY RINGS)
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\BUILDINGSIZEDPROPS\ALIENRING\ENTITIES\ALIENRING.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcEncounterComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddStoryGlitch,
                        },
                    },
                },
                    ----------------------------------------------------------------------------------------------
                    --BASE SITE (WILD)
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASECOMPUTER\ENTITIES\BASECOMPUTER.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkAudioComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddBase,
                        },
                    },
                },
                    ----------------------------------------------------------------------------------------------
                    --TRADE OUTPOST
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOST\ENTITIES\OUTPOST.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddOutpost,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --MINOR SETTLEMENT
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\LANDINGPAD\ENTITIES\LANDINGPAD.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcOutpostComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddMinorSettle,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --PLANETARY SETTLEMENT
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SETTLEMENT\MONUMENT\MONUMENT0_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MXML]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SETTLEMENT\MAYOR_TERMINAL_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MXML]]
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkStaticPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddPSettlement,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --DISTRESS SIGNAL
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DISTRESSSIGNAL\PARTS\BLACKBOX\ENTITIES\BLACKBOX.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkAudioComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = DistressSound..AddDistress,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --REMOTE TERMINAL
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\HOLOCOM\HOLOCOM\ENTITIES\HOLOCOM.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddTerminal,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --RADIOTOWER (Transmission Tower)
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RADIOTOWER\SCIENTIFICRADIOTOWERPARTS\SCIENTIFICTERMINAL\ENTITIES\SCIENTIFICRADIOTOWER.ENTITY.MXML]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RADIOTOWER\SCIENTIFICRADIOTOWERPARTS\SCIENTIFICMECHANISM\ENTITIES\SCIENTIFICMECHANISM.ENTITY.MXML]],
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcTriggerActionComponentData"},
                            ADD_OPTION = "ADDbeforeSECTION",
                            ADD = AddRadioTower,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --ANCIENT RUINS (Ruins / Underwater Ruins / Underground Ruins (Buried Treasue))
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\RUINPARTS\CENTERPIECE\INTERACTIONPLATFORM\ENTITIES\INTERACTIONPLATFORM.ENTITY.MXML]],
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddMonolith,
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RUINS\UNDERWATERRUINPARTS\UNDERWATERRUININTERACTION\ENTITIES\UNDERWATERRUIN.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddRuin,
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RUINS\UNDERGROUNDRUINS\ENTITIES\TRIGGERVOLUME.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddTreasure,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --MONOLITH SITES - Primary artifact
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONOLITH\MONOLITH\ENTITIES\MONOLITH.ENTITY.MXML]],
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddMonolith,
                        },
                    }
                },
                     ----------------------------------------------------------------------------------------------
                     --ANCIENT PLAQUES - Maybe Clutters Artifact views too much? (Will revisit if requested)
                     ----------------------------------------------------------------------------------------------
                --{
                --    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\RUINPARTS\PLAQUE\ENTITIES\PLAQUE.ENTITY.MXML]],
                --    MXML_CT =
                --    {
                --        {
                --            SKW = {"Components", "TkPhysicsComponentData"},
                --            ADD_OPTION = "ADDafterSECTION",
                --            ADD = AddPlaque,
                --        },
                --    }
                --},
                    ----------------------------------------------------------------------------------------------
                    --PORTAL SITE (DOES NOT WORK, LOOKING FOR OTHER METHODS!)
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = {
                      [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\PORTAL.ENTITY.MXML]],
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcTriggerActionComponentData"},
                            EXML_FLAGS = "UPDATESECTION",
                            ADD_OPTION = "ADDbeforeSECTION",
                            ADD = AddPortal,
                        },
                    }
                },
                     ----------------------------------------------------------------------------------------------
                    --MONUMENTS
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = {
                        ---[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONUMENTS\MONUMENT\ENTITIES\MONUMENT.ENTITY.MXML]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONUMENTS\STARGATEMAIN\ENTITIES\MAINMONO.ENTITY.MXML]]
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkAudioComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = phys_Physics,
                        },
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddPortal,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --DEPOT SITES
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEPOT\DEPOTWARRIOR\ENTITIES\CLUMPMASTER.ENTITY.MXML]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEPOT\DEPOTTRADER\ENTITIES\CLUMPMASTER.ENTITY.MXML]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEPOT\DEPOTSCIENTIFIC\ENTITIES\CLUMPMASTER.ENTITY.MXML]]
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcEncounterComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddDepot,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --FACTORY SITE
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\FACTORY\FACTORYSCIENTIFIC\ENTITIES\FACTORYINTERACTION.ENTITY.MXML]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\FACTORY\FACTORYTRADER\ENTITIES\FACTORYINTERACTION.ENTITY.MXML]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\FACTORY\FACTORYWARRIOR\ENTITIES\FACTORYINTERACTION.ENTITY.MXML]],
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcEncounterComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddFactory,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --OBSERVATORY
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\WARRIORPARTS\OBSERVATORYWARRIOR_ROOF\ENTITIES\RADAR.ENTITY.MXML]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\WARRIORPARTS\ROOF_OBSERVATORY\ENTITIES\RADAR.ENTITY.MXML]]
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkAnimationComponentData"},
                            ADD_OPTION = "ADDbeforeSECTION",
                            ADD = AddObserver,
                        },
                    }
                },
                {
                    MBIN_FS = {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\ENTITIES\OBSERVATORYINTERACTION.ENTITY.MXML]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYTRADER\ENTITIES\OBSERVATORYINTERACTION.ENTITY.MXML]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYWARRIOR\ENTITIES\OBSERVATORYINTERACTION.ENTITY.MXML]]
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkAudioComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddObserver,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --SENTINEL HIVE ACTIVE
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SENTINELHIVE\SENTINELHIVEDESTRUCTIBLE\ENTITIES\SENTINELHIVEDESTRUCTIBLE.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkAudioComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddSentinelH,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --SENTINEL HIVE DISABLED
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SENTINELHIVE\SENTINELHIVEDESTRUCTIBLE_DESTROYED\ENTITIES\DEBRIS.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkAudioComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddSentinelD,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --ABANDONED SITE
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\ABANDONEDTERMINAL\ENTITIES\ABANDONEDTERMINAL.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkAnimationComponentData"},
                            ADD_OPTION = "ADDbeforeSECTION",
                            ADD = AddAbandoned,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --ROBOT CAMP, Already has GcScannableComponentData, we're overriding for AllowMerge
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\ROBOTBASE\ENTITIES\TERMINAL.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcScannableComponentData"},
                            ADD_OPTION = "REPLACEwholeSECTION",
                            ADD = AddCamp,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --RARE RESOURCE, Already has GcScannableComponentData, we're overriding for AllowMerge
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\BONEPILE\ENTITIES\BONEPILE.ENTITY.MXML]],
                    MXML_CT =
                    {
                          {
                             SKW = {"Components", "GcScannableComponentData"},
                             ADD_OPTION = "REPLACEwholeSECTION",
                             ADD = AddBones,
                          }
                    },
                },
                    ----------------------------------------------------------------------------------------------
                    --BURRIED FOSSIL, Already has GcScannableComponentData, we're overriding for AllowMerge
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = {
                      [[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\BONEPILE\ENTITIES\_FOSSIL_BODY.ENTITY.MXML]],
                      [[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\BONEPILE\ENTITIES\_FOSSIL_LIMBS.ENTITY.MXML]],
                      [[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\BONEPILE\ENTITIES\_FOSSIL_SKULL.ENTITY.MXML]],
                      [[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\BONEPILE\ENTITIES\_FOSSIL_TAIL.ENTITY.MXML]],
                    },
                    MXML_CT =
                    {
                          {
                             SKW = {"Components", "GcScannableComponentData"},
                             ADD_OPTION = "REPLACEwholeSECTION",
                             ADD = AddFossil,
                          }
                    },
                },
                    ----------------------------------------------------------------------------------------------
                    --SCRAP / SALVAGE, Already has GcScannableComponentData, we're overriding for AllowMerge
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\SCRAPHEAP\ENTITIES\SCRAPCORE.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                           SKW = {"Components", "GcScannableComponentData"},
                           ADD_OPTION = "REPLACEwholeSECTION",
                           ADD = AddScrap,
                        }
                    },
                },
                    ----------------------------------------------------------------------------------------------
                    --CRASHED FREIGHTER
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRASHEDFREIGHTER\PARTS\CRASHEDFREIGHTER_DISTRESSSIGNAL\ENTITIES\CRASHEDFREIGHTER_DISTRESSSIGNAL.ENTITY.MXML]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcEncounterComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = DistressSound..AddFreighter,
                        },
                    }
                },
            }
        },
    }
}
