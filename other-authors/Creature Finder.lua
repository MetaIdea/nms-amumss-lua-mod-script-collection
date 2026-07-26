-- Creature Finder V1.0.6.45
-- Author: beihaixingchen
-- NMS version: 6.45

-- {English, Simplified Chinese, Traditional Chinese, MID, Creature ID, Icon}
local CONFIG_TABLE =
{
  {"Cat", "猫科动物", "貓科動物", "C", "CAT", "TEXTURES/UI/FRONTEND/ICONS/CREATUREFINDER/C.CAT.DDS"},
  {"Six-leg Cat", "六脚猫", "六脚貓", "C", "SIXLEGCAT", "TEXTURES/UI/FRONTEND/ICONS/CREATUREFINDER/C.SIXLEGCAT.DDS"},
  {"Plant Cat", "植物猫", "植物貓", "C", "PLANTCAT", "TEXTURES/UI/FRONTEND/ICONS/CREATUREFINDER/C.PLANTCAT.DDS"},
  {"Grunt", "萌噜兽", "萌噥獸", "C", "GRUNT", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/TWITCH.PET22.DDS"},
  {"Float Spider", "飞行蜘蛛", "飛行蜘蛛", "C", "FLOATSPIDER", "TEXTURES/UI/FRONTEND/ICONS/FISH/PRODUCT.FISH.CRAB.DDS"},
  {"Triceratops", "植食恐龙", "植食恐龍", "C", "TRICERATOPS", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL1.TWITCH.PET12.DDS"},
  {"T-Rex", "霸王龙", "霸王龍", "C", "TREX", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.TWITCH.PET04.DDS"},
  {"Robot Antelope", "机械生物", "機械生物", "C", "ROBOTANTELOPE", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL1.TWITCH.PET17.DDS"},
  {"Strider", "步行者", "步行者", "C", "STRIDER", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL1.TWITCH.PET06.DDS"},
  {"Strider Glow", "透明步行者", "透明步行者", "C", "STRIDERGLOW", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/EXPEDITION.S16.PET.DDS"},
  {"Flying Lizard", "风飘龙", "風飄龍", "C", "FLYINGLIZARD", "TEXTURES/UI/FRONTEND/ICONS/CREATUREFINDER/C.FLYINGLIZARD.DDS"},
  {"Flying Snake", "飞蛆", "飛蛇", "C", "FLYINGSNAKE", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.WORMPET.DDS"},
  {"Large Butterfly", "大蝴蝶", "大蝴蝶", "C", "LARGEBUTTERFLY", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.TWITCH.PET02.DDS"},
  {"Flying Beetle", "飞行甲虫", "飛行甲蟲", "C", "FLYINGBEETLE", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.TWITCH.PET05.DDS"},
  {"Arthropod", "水晶巢虫", "水晶巢蟲", "C", "ARTHROPOD", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL1.BUGFIEND.DDS"},
  {"Bone Cow", "骨象", "骨象", "C", "BONECOW", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/EXPEDITION.S18.EGG.DDS"},
  {"Purple weird", "浮游几何体", "浮游幾何體", "C", "PURPLE_WEIRD", "TEXTURES/UI/FRONTEND/ICONS/CREATUREFINDER/C.PURPLE_WEIRD.DDS"},
  {"Shark", "鲨鱼", "鯊魚", "C", "SHARK", "TEXTURES/UI/FRONTEND/ICONS/FISH/PRODUCT.FISH.SHARK.DDS"},
  {"Squid", "鱿鱼", "魷魚", "C", "SQUID", "TEXTURES/UI/FRONTEND/ICONS/FISH/PRODUCT.FISH.SQUID.DDS"},
  {"Manta", "蝠鲼", "蝠鱝", "C", "MANTA", "TEXTURES/UI/FRONTEND/ICONS/FISH/PRODUCT.FISH.RAY.DDS"},
  {"Manta Glow", "发光蝠鲼", "發光蝠鱝", "C", "MANTAGLOW", "TEXTURES/UI/FRONTEND/ICONS/FISH/PRODUCT2.FISH.RAY.DDS"},
  {"Sea Horse", "海马", "海馬", "C", "SEAHORSE", "TEXTURES/UI/FRONTEND/ICONS/CREATUREFINDER/C.SEAHORSE.DDS"},
  {"Sea Horse Glow", "发光海马", "發光海馬", "C", "SEAHORSEGLOW", "TEXTURES/UI/FRONTEND/ICONS/CREATUREFINDER/C.SEAHORSEGLOW.DDS"},
}

local ICON_SOURCE = [[.\CreatureFinderIcons\*.DDS]]

local function mission_id(entry)
  return entry[4] .. "_" .. entry[5] .. "_MID"
end

local function reward_id(entry)
  return entry[4] .. "_" .. entry[5] .. "_RWD"
end

local function xml_attr(value)
  return tostring(value)
    :gsub("&", "&amp;")
    :gsub("\"", "&quot;")
    :gsub("<", "&lt;")
    :gsub(">", "&gt;")
end

local function render_template(template, values)
  return (template:gsub("{([%w_]+)}", function(key)
    if values[key] == nil then
      error("Missing template value: " .. key)
    end
    return values[key]
  end))
end

local SEARCH_LOOKUP_TEMPLATE = [=[
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
              <Property name="GalaxyStarType" value="Purple" />
            </Property>
            <Property name="TradingData" value="GcPlanetTradingData">
              <Property name="WealthClass" value="GcWealthClass">
                <Property name="WealthClass" value="Average" />
              </Property>
              <Property name="TradingClass" value="GcTradingClass">
                <Property name="TradingClass" value="Mining" />
              </Property>
            </Property>
            <Property name="AllowUnsafeMatches" value="true" />
            <Property name="NeverAllowEmpty" value="false" />
            <Property name="NeverAllowAbandoned" value="false" />
            <Property name="AllowedToBePurpleWithoutAccess" value="false" />
            <Property name="RequireUndiscovered" value="true" />
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
            <Property name="NeedsEmptySystem" value="{NeedsEmptySystem}" />
            <Property name="NeedsAbandonedSystem" value="false" />
            <Property name="NeedsResourceHint" value="" />
            <Property name="SuitableForCreatureDiscovery" value="false" />
            <Property name="SuitableForWeirdCreatureDiscovery" value="false" />
            <Property name="SuitableForRobotCreatureDiscovery" value="{SuitableForRobotCreatureDiscovery}" />
            <Property name="SuitableForCreatureTaming" value="false" />
            <Property name="NeedsSpecificCreature" value="{CreatureID}" />
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
]=]

local function build_search_lookup(entry)
  local is_robot = entry[5] == "ROBOTANTELOPE"
  return render_template(SEARCH_LOOKUP_TEMPLATE, {
    CreatureID = is_robot and "" or xml_attr(entry[5]),
    NeedsEmptySystem = is_robot and "true" or "false",
    SuitableForRobotCreatureDiscovery = is_robot and "true" or "false",
  })
end

local MISSION_TEMPLATE_PART_1 = [=[
    <Property name="Missions" value="GcGenericMissionSequence" _id="{ID}_MID">
      <Property name="MissionID" value="{ID}_MID" />
      <Property name="MissionClass" value="Secondary" />
      <Property name="MissionIsCritical" value="false" />
      <Property name="MissionObjective" value="" />
      <Property name="MissionTitles" value="GcNumberedTextList">
        <Property name="Format" value="{ID}_TTL" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionSubtitles" value="GcNumberedTextList">
        <Property name="Format" value="FINDER_SUB_%d" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionDescriptions" value="GcNumberedTextList">
        <Property name="Format" value="{ID}_DSC" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides">
        <Property name="ApplicableSeasonNumbers" />
        <Property name="MissionTitle" value="" />
        <Property name="MissionSubtitle" value="" />
        <Property name="MissionDescription" value="" />
      </Property>
      <Property name="MissionDescSwitchOverride" value="" />
      <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionA" value="GcNumberedTextList">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionB" value="GcNumberedTextList">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionC" value="GcNumberedTextList">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="UseScanEventDetailsInLogInfo" value="false" />
      <Property name="UseFirstPurpleSystemDetailsInLogInfo" value="false" />
      <Property name="MissionIcon" value="TkTextureResource">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PIN.ON.DDS" />
      </Property>
      <Property name="MissionIconSelected" value="TkTextureResource">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PIN.ON.DDS" />
      </Property>
      <Property name="MissionIconNotSelected" value="TkTextureResource">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PIN.OFF.DDS" />
      </Property>
      <Property name="MissionPriority" value="0" />
      <Property name="MissionCategory" value="GcMissionCategory">
        <Property name="MissionCategory" value="Mission" />
      </Property>
      <Property name="MissionPageHint" value="GcMissionPageHint">
        <Property name="MissionPageHint" value="None" />
      </Property>
      <Property name="MissionPageLocID" value="" />
      <Property name="MissionBuildMenuHint" value="" />
      <Property name="MissionHasColourOverride" value="false" />
      <Property name="MissionColourOverride">
        <Property name="R" value="1.000000" />
        <Property name="G" value="1.000000" />
        <Property name="B" value="1.000000" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="BeginCheckFrequency" value="1" />
      <Property name="WikiMissionBlockedBySeasons" />
      <Property name="DefaultItems" value="GcDefaultMissionItemsTable">
        <Property name="PrimarySubstances" />
        <Property name="SecondarySubstances" />
        <Property name="PrimaryProducts" />
        <Property name="SecondaryProducts" />
        <Property name="AmountMin" value="0" />
        <Property name="AmountMax" value="0" />
        <Property name="AmountShouldBeRoundNumber" value="false" />
      </Property>
      <Property name="PrefixTitle" value="true" />
      <Property name="NextMissionHint" value="" />
      <Property name="MessageComplete" value="Never" />
      <Property name="MessageStart" value="Never" />
      <Property name="MissionBoardOptions" value="GcMissionBoardOptions">
        <Property name="Type" value="GcMissionType">
          <Property name="MissionType" value="SpaceCombat" />
        </Property>
        <Property name="Difficulty" value="GcMissionDifficulty">
          <Property name="MissionDifficulty" value="Normal" />
        </Property>
        <Property name="MinRank" value="0" />
        <Property name="CloseMissionGiver" value="false" />
        <Property name="IsGuildShopMission" value="false" />
        <Property name="IsPlanetProcMission" value="false" />
        <Property name="IsMultiplayerEventMission" value="false" />
        <Property name="RewardPenaltyOnAbandon" value="" />
        <Property name="Faction" />
        <Property name="Weighting" value="0" />
        <Property name="IgnoreCalculatedObjective" value="false" />
        <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
        <Property name="DefaultItemInitialWarpScanEvents" />
        <Property name="DefaultItemTypeForInitialWarp" value="None" />
        <Property name="BasePartBlueprints" />
      </Property>
      <Property name="AutoStart" value="None" />
      <Property name="RestartOnCompletion" value="false" />
      <Property name="CancelSetsComplete" value="false" />
      <Property name="Dialog" value="GcAlienPuzzleTable">
        <Property name="Table" />
      </Property>
      <Property name="ScanEvents">
        <Property name="ScanEvents" value="GcScanEventData" _index="0">
          <Property name="Name" value="{ID}_SCE" />
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
          <Property name="UseMissionTradingDataOverride" value="false" />
          <Property name="AlwaysShow" value="true" />
          <Property name="NeverShow" value="false" />
          <Property name="ShowOnlyIfSequenceTarget" value="false" />
          <Property name="PlanetLabelText" value="" />
          <Property name="SurveyDistance" value="0.000000" />
          <Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD" />
          <Property name="SurveyHUDName" value="UI_MISSIONSURVEY_HUD_SUB" />
          <Property name="EventStartType" value="Special" />
          <Property name="EventEndType" value="None" />
          <Property name="EventPriority" value="Regular" />
          <Property name="CanEndFromOutsideMission" value="false" />
          <Property name="DisableMultiplayerSync" value="true" />
          <Property name="BlockStartedOnUseEvents" value="false" />
          <Property name="ReplaceEventIfAlreadyActive" value="false" />
          <Property name="BuildingLocation" value="PlanetSearch" />
          <Property name="SearchType" value="FindBuildingClass" />
          <Property name="SpecificBuildingClass" value="GcBuildingClassification">
            <Property name="BuildingClass" value="Portal" />
          </Property>
          <Property name="AllowFriendsBases" value="false" />
          <Property name="ForceWideRandom" value="false" />
          <Property name="MustFindSystem" value="true" />
          <Property name="AllowOverriddenBuildings" value="true" />
          <Property name="TargetMustMatchMissionSeed" value="false" />
          <Property name="UseBuildingFromRendezvousStage" value="false" />
          <Property name="SolarSystemLocation" value="Near" />
          <Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup">
{SearchLookup}
          </Property>
          <Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup">
{SearchLookup}
          </Property>
]=]

local MISSION_TEMPLATE_PART_2 = [=[
          <Property name="ForceRestartInteraction" value="true" />
          <Property name="ForceResetPortal" value="false" />
          <Property name="HasReward" value="" />
          <Property name="NextOption" value="" />
          <Property name="TriggerActions" value="GcScanEventTriggers">
            <Property name="Range" value="0.000000" />
            <Property name="Triggers" />
            <Property name="AllowRetrigger" value="false" />
          </Property>
          <Property name="UAsList" />
          <Property name="TechShopType" value="GcTechnologyCategory">
            <Property name="TechnologyCategory" value="All" />
          </Property>
          <Property name="OSDMessage" value="{ID}_TTL" />
          <Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
          <Property name="MarkerLabel" value="{ID}_TTL" />
          <Property name="MarkerIcon" value="TkTextureResource">
            <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PLANET.DDS" />
            <Property name="ResHandle" value="GcResource">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes">
            <Property name="ScannerIconHighlightType" value="Diamond" />
          </Property>
          <Property name="StartTime" value="0.000000" />
          <Property name="MessageTime" value="0.000000" />
          <Property name="MessageDisplayTime" value="4.000000" />
          <Property name="MessageAudio" value="GcAudioWwiseEvents">
            <Property name="AkEvent" value="VO_TUT_COORDSRECEIVED" />
          </Property>
          <Property name="IconTime" value="4.000000" />
          <Property name="TooltipTime" value="10.000000" />
          <Property name="TooltipRepeats" value="false" />
          <Property name="ShowEndTooltip" value="true" />
          <Property name="TooltipMessage" value="" />
          <Property name="MissionMessageOnInteract" value="" />
          <Property name="ResourceOverride" value="GcResourceElement">
            <Property name="Filename" value="" />
            <Property name="ResHandle" value="GcResource">
              <Property name="ResourceID" value="0" />
            </Property>
            <Property name="Seed" value="NONE" />
            <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
              <Property name="Samplers" />
            </Property>
            <Property name="AltId" value="" />
          </Property>
        </Property>
      </Property>
      <Property name="Rewards" />
      <Property name="Costs" />
      <Property name="TradingDataOverride" value="GcTradeData">
        <Property name="AlwaysPresentProducts" />
        <Property name="AlwaysPresentSubstances" />
        <Property name="OptionalProducts" />
        <Property name="OptionalSubstances" />
        <Property name="AlwaysConsideredBarterProducts" />
        <Property name="BarterAcceptanceCurve" value="TkCurveType">
          <Property name="Curve" value="Linear" />
        </Property>
        <Property name="BarterPriceMultiplier" value="1.000000" />
        <Property name="BarterItemPreferenceFloor" value="0.500000" />
        <Property name="MinItemsForSale" value="5" />
        <Property name="MaxItemsForSale" value="15" />
        <Property name="PercentageOfItemsAreProducts" value="0.300000" />
        <Property name="BuyPriceIncreaseRedThreshold" value="20.000000" />
        <Property name="BuyPriceDecreaseGreenThreshold" value="-10.000000" />
        <Property name="SellPriceIncreaseGreenThreshold" value="10.000000" />
        <Property name="SellPriceDecreaseRedThreshold" value="-20.000000" />
        <Property name="ShowSeasonRewards" value="false" />
        <Property name="UseBarterForBuy" value="false" />
        <Property name="MinAmountOfProductAvailable">
          <Property name="Poor" value="10" />
          <Property name="Average" value="10" />
          <Property name="Wealthy" value="10" />
          <Property name="Pirate" value="10" />
        </Property>
        <Property name="MaxAmountOfProductAvailable">
          <Property name="Poor" value="100" />
          <Property name="Average" value="100" />
          <Property name="Wealthy" value="100" />
          <Property name="Pirate" value="100" />
        </Property>
        <Property name="MinAmountOfSubstanceAvailable">
          <Property name="Poor" value="100" />
          <Property name="Average" value="100" />
          <Property name="Wealthy" value="100" />
          <Property name="Pirate" value="100" />
        </Property>
        <Property name="MaxAmountOfSubstanceAvailable">
          <Property name="Poor" value="1000" />
          <Property name="Average" value="1000" />
          <Property name="Wealthy" value="1000" />
          <Property name="Pirate" value="1000" />
        </Property>
        <Property name="MinExtraSystemProducts">
          <Property name="Poor" value="2" />
          <Property name="Average" value="2" />
          <Property name="Wealthy" value="2" />
          <Property name="Pirate" value="2" />
        </Property>
        <Property name="MaxExtraSystemProducts">
          <Property name="Poor" value="4" />
          <Property name="Average" value="4" />
          <Property name="Wealthy" value="4" />
          <Property name="Pirate" value="4" />
        </Property>
        <Property name="TradeProductsPriceImprovements">
          <Property name="Poor" value="0" />
          <Property name="Average" value="0" />
          <Property name="Wealthy" value="0" />
          <Property name="Pirate" value="0" />
        </Property>
      </Property>
      <Property name="StartConditionTest" value="GcMissionConditionTest">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="CancelConditionTest" value="GcMissionConditionTest">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="StartIsCancel" value="false" />
      <Property name="StartingConditions" />
      <Property name="CancelingConditions" />
      <Property name="FinalStageVersions" />
      <Property name="Stages">
        <Property name="Stages" value="GcGenericMissionStage">
          <Property name="Versions" />
          <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage">
            <Property name="GcMissionSequenceShowMissionUpdateMessage">
              <Property name="MissionUpdateMessage" value="Start" />
              <Property name="CustomMessageLocID" value="" />
              <Property name="CustomObjectiveLocID" value="" />
              <Property name="SetMissionSelected" value="true" />
              <Property name="WaitForMessageOver" value="false" />
              <Property name="ShowChangeMissionNotify" value="true" />
              <Property name="SuppressNotificationsNotFromThisMission" value="true" />
              <Property name="PlayMusicSting" value="Start" />
              <Property name="DebugText" value="" />
            </Property>
          </Property>
        </Property>
        <Property name="Stages" value="GcGenericMissionStage">
          <Property name="Versions" />
          <Property name="Stage" value="GcMissionSequenceGroup">
            <Property name="GcMissionSequenceGroup">
              <Property name="Silent" value="false" />
              <Property name="Icon" value="TkTextureResource">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="TerrainTarget" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="FINDER_SEARCH_OBJ" />
              <Property name="ObjectiveTipID" value="FINDER_ACTIVE_OBJ_TIP" />
              <Property name="HasCategoryOverride" value="false" />
              <Property name="OverrideCategory" value="GcMissionCategory">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="false" />
              <Property name="ColourOverride">
                <Property name="R" value="1.000000" />
                <Property name="G" value="1.000000" />
                <Property name="B" value="1.000000" />
                <Property name="A" value="1.000000" />
              </Property>
              <Property name="PrefixTitle" value="false" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="false" />
              <Property name="AutoPinRepairs" value="false" />
              <Property name="BlockSpaceBattles" value="false" />
              <Property name="ConditionTest" value="GcMissionConditionTest">
                <Property name="ConditionTest" value="AllTrue" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="false" />
              <Property name="DoConsequencesIfNeverActivated" value="true" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="GalMapPathOverride" value="None" />
              <Property name="SpecialButtonIcon" value="TkInputEnum">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
                <Property name="ObjectivesCanBeFormattedBySequences" value="false" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
                <Property name="ApplicableSeasonNumbers" />
                <Property name="OverrideObjective" value="" />
                <Property name="OverrideObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="false" />
                <Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="false" />
                <Property name="SurveyInactiveHint" value="" />
                <Property name="SurveySwapHint" value="" />
                <Property name="SurveyHint" value="" />
                <Property name="SurveyVehicleHint" value="" />
                <Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
                <Property name="HasCustomNotifyTimer" value="false" />
                <Property name="NotifyDisplayTime" value="0.000000" />
                <Property name="NotifyPauseTime" value="0.000000" />
              </Property>
              <Property name="Conditions">
                <Property name="Conditions" value="GcMissionConditionMissionMessage">
                  <Property name="GcMissionConditionMissionMessage">
                    <Property name="Message" value="" />
                    <Property name="MessageToFormatSeasonalIDInto" value="" />
                  </Property>
                </Property>
              </Property>
              <Property name="Consequences" />
              <Property name="Stages">
                <Property name="Stages" value="GcGenericMissionStage">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceStartScanEvent">
                    <Property name="GcMissionSequenceStartScanEvent">
                      <Property name="Table" value="GcScanEventTableType">
                        <Property name="ScanTable" value="Tutorial" />
                      </Property>
                      <Property name="Participant" value="GcPlayerMissionParticipantType">
                        <Property name="ParticipantType" value="None" />
                      </Property>
                      <Property name="Event" value="{ID}_SCE" />
                      <Property name="Time" value="1.000000" />
                      <Property name="DoAerialScan" value="false" />
                      <Property name="AllowOtherPlayersBase" value="false" />
                      <Property name="IgnoreIfAlreadyActive" value="false" />
                      <Property name="DebugText" value="" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
]=]

local MISSION_TEMPLATE_PART_3 = [=[
        <Property name="Stages" value="GcGenericMissionStage">
          <Property name="Versions" />
          <Property name="Stage" value="GcMissionSequenceGroup">
            <Property name="GcMissionSequenceGroup">
              <Property name="Silent" value="false" />
              <Property name="Icon" value="TkTextureResource">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="TerrainTarget" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="FINDER_SYSTEM_OBJ" />
              <Property name="ObjectiveTipID" value="FINDER_SYSTEM_OBJ_TIP" />
              <Property name="HasCategoryOverride" value="false" />
              <Property name="OverrideCategory" value="GcMissionCategory">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="false" />
              <Property name="ColourOverride">
                <Property name="R" value="1.000000" />
                <Property name="G" value="1.000000" />
                <Property name="B" value="1.000000" />
                <Property name="A" value="1.000000" />
              </Property>
              <Property name="PrefixTitle" value="false" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="false" />
              <Property name="AutoPinRepairs" value="false" />
              <Property name="BlockSpaceBattles" value="false" />
              <Property name="ConditionTest" value="GcMissionConditionTest">
                <Property name="ConditionTest" value="AnyTrue" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="false" />
              <Property name="DoConsequencesIfNeverActivated" value="true" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="GalMapPathOverride" value="None" />
              <Property name="SpecialButtonIcon" value="TkInputEnum">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
                <Property name="ObjectivesCanBeFormattedBySequences" value="false" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
                <Property name="ApplicableSeasonNumbers" />
                <Property name="OverrideObjective" value="" />
                <Property name="OverrideObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="false" />
                <Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="false" />
                <Property name="SurveyInactiveHint" value="" />
                <Property name="SurveySwapHint" value="" />
                <Property name="SurveyHint" value="" />
                <Property name="SurveyVehicleHint" value="" />
                <Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
                <Property name="HasCustomNotifyTimer" value="false" />
                <Property name="NotifyDisplayTime" value="0.000000" />
                <Property name="NotifyPauseTime" value="0.000000" />
              </Property>
              <Property name="Conditions">
                <Property name="Conditions" value="GcMissionConditionIsScanEventLocal">
                  <Property name="GcMissionConditionIsScanEventLocal">
                    <Property name="Event" value="{ID}_SCE" />
                    <Property name="RequiresFullFireteam" value="false" />
                  </Property>
                </Property>
              </Property>
              <Property name="Consequences" />
              <Property name="Stages">
                <Property name="Stages" value="GcGenericMissionStage">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait">
                    <Property name="GcMissionSequenceWait">
                      <Property name="Time" value="1.000000" />
                      <Property name="DebugText" value="" />
                      <Property name="SuppressMessages" value="false" />
                      <Property name="MultiplyTimeBySeasonValue" value="false" />
                    </Property>
                  </Property>
                </Property>
                <Property name="Stages" value="GcGenericMissionStage">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceQuickWarp">
                    <Property name="GcMissionSequenceQuickWarp">
                      <Property name="MessageWarping" value="UI_NOTIFY_QUICKWARPING" />
                      <Property name="MessageCannotWarp" value="FINDER_SYSTEM_OBJ_WAIT" />
                      <Property name="ScanEventToWarpTo" value="{ID}_SCE" />
                      <Property name="SequenceTime" value="3.000000" />
                      <Property name="EffectTime" value="3.000000" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Stages" value="GcGenericMissionStage">
          <Property name="Versions" />
          <Property name="Stage" value="GcMissionSequenceGroup">
            <Property name="GcMissionSequenceGroup">
              <Property name="Silent" value="true" />
              <Property name="Icon" value="TkTextureResource">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="TerrainTarget" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="FINDER_SYSTEM_OBJ" />
              <Property name="ObjectiveTipID" value="FINDER_SYSTEM_OBJ_TIP" />
              <Property name="HasCategoryOverride" value="false" />
              <Property name="OverrideCategory" value="GcMissionCategory">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="false" />
              <Property name="ColourOverride">
                <Property name="R" value="1.000000" />
                <Property name="G" value="1.000000" />
                <Property name="B" value="1.000000" />
                <Property name="A" value="1.000000" />
              </Property>
              <Property name="PrefixTitle" value="false" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="false" />
              <Property name="AutoPinRepairs" value="false" />
              <Property name="BlockSpaceBattles" value="false" />
              <Property name="ConditionTest" value="GcMissionConditionTest">
                <Property name="ConditionTest" value="AnyFalse" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="false" />
              <Property name="DoConsequencesIfNeverActivated" value="true" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="GalMapPathOverride" value="None" />
              <Property name="SpecialButtonIcon" value="TkInputEnum">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
                <Property name="ObjectivesCanBeFormattedBySequences" value="false" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
                <Property name="ApplicableSeasonNumbers" />
                <Property name="OverrideObjective" value="" />
                <Property name="OverrideObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="false" />
                <Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="false" />
                <Property name="SurveyInactiveHint" value="" />
                <Property name="SurveySwapHint" value="" />
                <Property name="SurveyHint" value="" />
                <Property name="SurveyVehicleHint" value="" />
                <Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
                <Property name="HasCustomNotifyTimer" value="false" />
                <Property name="NotifyDisplayTime" value="0.000000" />
                <Property name="NotifyPauseTime" value="0.000000" />
              </Property>
              <Property name="Conditions" />
              <Property name="Consequences" />
              <Property name="Stages">
                <Property name="Stages" value="GcGenericMissionStage">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGroup">
                    <Property name="GcMissionSequenceGroup">
                      <Property name="Silent" value="false" />
                      <Property name="Icon" value="TkTextureResource">
                        <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PLANET.DDS" />
                        <Property name="ResHandle" value="GcResource">
                          <Property name="ResourceID" value="0" />
                        </Property>
                      </Property>
                      <Property name="PageHint" value="GcMissionPageHint">
                        <Property name="MissionPageHint" value="None" />
                      </Property>
                      <Property name="PageDataLocID" value="" />
                      <Property name="BuildMenuHint" value="" />
                      <Property name="InventoryHint" value="" />
                      <Property name="TerrainTarget" value="" />
                      <Property name="DebugText" value="" />
                      <Property name="ObjectiveID" value="FINDER_SYSTEM_OBJ1" />
                      <Property name="ObjectiveTipID" value="FINDER_SYSTEM_OBJ_TIP1" />
                      <Property name="HasCategoryOverride" value="false" />
                      <Property name="OverrideCategory" value="GcMissionCategory">
                        <Property name="MissionCategory" value="Mission" />
                      </Property>
                      <Property name="HasColourOverride" value="false" />
                      <Property name="ColourOverride">
                        <Property name="R" value="1.000000" />
                        <Property name="G" value="1.000000" />
                        <Property name="B" value="1.000000" />
                        <Property name="A" value="1.000000" />
                      </Property>
                      <Property name="PrefixTitle" value="false" />
                      <Property name="PrefixTitleText" value="" />
                      <Property name="BlockPinning" value="false" />
                      <Property name="AutoPinRepairs" value="false" />
                      <Property name="BlockSpaceBattles" value="false" />
                      <Property name="ConditionTest" value="GcMissionConditionTest">
                        <Property name="ConditionTest" value="AnyTrue" />
                      </Property>
                      <Property name="HideFromLogIfConditionsMet" value="false" />
                      <Property name="DoConsequencesIfNeverActivated" value="true" />
                      <Property name="RepeatLogic" value="None" />
                      <Property name="IconStyle" value="Default" />
                      <Property name="GalMapPathOverride" value="None" />
                      <Property name="SpecialButtonIcon" value="TkInputEnum">
                        <Property name="InputButton" value="None" />
                      </Property>
                      <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
                        <Property name="ObjectivesCanBeFormattedBySequences" value="false" />
                        <Property name="FormattableObjective" value="" />
                        <Property name="FormattableObjectiveTip" value="" />
                      </Property>
                      <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
                        <Property name="ApplicableSeasonNumbers" />
                        <Property name="OverrideObjective" value="" />
                        <Property name="OverrideObjectiveTip" value="" />
                      </Property>
                      <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
                        <Property name="TargetMissionSurveyId" value="" />
                        <Property name="TargetMissionSurveyDefinitelyExists" value="false" />
                        <Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="false" />
                        <Property name="SurveyInactiveHint" value="" />
                        <Property name="SurveySwapHint" value="" />
                        <Property name="SurveyHint" value="" />
                        <Property name="SurveyVehicleHint" value="" />
                        <Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
                      </Property>
                      <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
                        <Property name="HasCustomNotifyTimer" value="false" />
                        <Property name="NotifyDisplayTime" value="0.000000" />
                        <Property name="NotifyPauseTime" value="0.000000" />
                      </Property>
                      <Property name="Conditions">
                        <Property name="Conditions" value="GcMissionConditionMissionMessage">
                          <Property name="GcMissionConditionMissionMessage">
                            <Property name="Message" value="M_01_01_ARVL" />
                            <Property name="MessageToFormatSeasonalIDInto" value="" />
                          </Property>
                        </Property>
                      </Property>
                      <Property name="Consequences" />
]=]

local MISSION_TEMPLATE_PART_4 = [=[
                      <Property name="Stages">
                        <Property name="Stages" value="GcGenericMissionStage">
                          <Property name="Versions" />
                          <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage">
                            <Property name="GcMissionSequenceShowMissionUpdateMessage">
                              <Property name="MissionUpdateMessage" value="Start" />
                              <Property name="CustomMessageLocID" value="" />
                              <Property name="CustomObjectiveLocID" value="" />
                              <Property name="SetMissionSelected" value="true" />
                              <Property name="WaitForMessageOver" value="false" />
                              <Property name="ShowChangeMissionNotify" value="false" />
                              <Property name="SuppressNotificationsNotFromThisMission" value="false" />
                              <Property name="PlayMusicSting" value="None" />
                              <Property name="DebugText" value="" />
                            </Property>
                          </Property>
                        </Property>
                        <Property name="Stages" value="GcGenericMissionStage">
                          <Property name="Versions" />
                          <Property name="Stage" value="GcMissionSequenceGroup">
                            <Property name="GcMissionSequenceGroup">
                              <Property name="Silent" value="true" />
                              <Property name="Icon" value="TkTextureResource">
                                <Property name="Filename" value="" />
                                <Property name="ResHandle" value="GcResource">
                                  <Property name="ResourceID" value="0" />
                                </Property>
                              </Property>
                              <Property name="PageHint" value="GcMissionPageHint">
                                <Property name="MissionPageHint" value="None" />
                              </Property>
                              <Property name="PageDataLocID" value="" />
                              <Property name="BuildMenuHint" value="" />
                              <Property name="InventoryHint" value="" />
                              <Property name="TerrainTarget" value="" />
                              <Property name="DebugText" value="" />
                              <Property name="ObjectiveID" value="" />
                              <Property name="ObjectiveTipID" value="" />
                              <Property name="HasCategoryOverride" value="false" />
                              <Property name="OverrideCategory" value="GcMissionCategory">
                                <Property name="MissionCategory" value="Mission" />
                              </Property>
                              <Property name="HasColourOverride" value="false" />
                              <Property name="ColourOverride">
                                <Property name="R" value="1.000000" />
                                <Property name="G" value="1.000000" />
                                <Property name="B" value="1.000000" />
                                <Property name="A" value="1.000000" />
                              </Property>
                              <Property name="PrefixTitle" value="false" />
                              <Property name="PrefixTitleText" value="" />
                              <Property name="BlockPinning" value="false" />
                              <Property name="AutoPinRepairs" value="false" />
                              <Property name="BlockSpaceBattles" value="false" />
                              <Property name="ConditionTest" value="GcMissionConditionTest">
                                <Property name="ConditionTest" value="AnyFalse" />
                              </Property>
                              <Property name="HideFromLogIfConditionsMet" value="false" />
                              <Property name="DoConsequencesIfNeverActivated" value="true" />
                              <Property name="RepeatLogic" value="Loop" />
                              <Property name="IconStyle" value="Default" />
                              <Property name="GalMapPathOverride" value="None" />
                              <Property name="SpecialButtonIcon" value="TkInputEnum">
                                <Property name="InputButton" value="None" />
                              </Property>
                              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
                                <Property name="ObjectivesCanBeFormattedBySequences" value="false" />
                                <Property name="FormattableObjective" value="" />
                                <Property name="FormattableObjectiveTip" value="" />
                              </Property>
                              <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
                                <Property name="ApplicableSeasonNumbers" />
                                <Property name="OverrideObjective" value="" />
                                <Property name="OverrideObjectiveTip" value="" />
                              </Property>
                              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
                                <Property name="TargetMissionSurveyId" value="" />
                                <Property name="TargetMissionSurveyDefinitelyExists" value="false" />
                                <Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="false" />
                                <Property name="SurveyInactiveHint" value="" />
                                <Property name="SurveySwapHint" value="" />
                                <Property name="SurveyHint" value="" />
                                <Property name="SurveyVehicleHint" value="" />
                                <Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
                              </Property>
                              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
                                <Property name="HasCustomNotifyTimer" value="false" />
                                <Property name="NotifyDisplayTime" value="0.000000" />
                                <Property name="NotifyPauseTime" value="0.000000" />
                              </Property>
                              <Property name="Conditions" />
                              <Property name="Consequences" />
                              <Property name="Stages">
                                <Property name="Stages" value="GcGenericMissionStage">
                                  <Property name="Versions" />
                                  <Property name="Stage" value="GcMissionSequenceWaitForConditions">
                                    <Property name="GcMissionSequenceWaitForConditions">
                                      <Property name="Message" value="FINDER_SYSTEM_OBJ_WAIT1" />
                                      <Property name="ConditionTest" value="GcMissionConditionTest">
                                        <Property name="ConditionTest" value="AnyTrue" />
                                      </Property>
                                      <Property name="Conditions">
                                        <Property name="Conditions" value="GcMissionConditionIsScanEventLocal">
                                          <Property name="GcMissionConditionIsScanEventLocal">
                                            <Property name="Event" value="{ID}_SCE" />
                                            <Property name="RequiresFullFireteam" value="false" />
                                          </Property>
                                        </Property>
                                      </Property>
                                      <Property name="AllowedToFormatObjectives" value="false" />
                                      <Property name="ForceAllowMissionRestart" value="false" />
                                      <Property name="ForceAllowMissionRestartEvent" value="" />
                                      <Property name="DebugText" value="" />
                                      <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
                                        <Property name="MissionMarkup" value="None" />
                                      </Property>
                                    </Property>
                                  </Property>
                                </Property>
                                <Property name="Stages" value="GcGenericMissionStage">
                                  <Property name="Versions" />
                                  <Property name="Stage" value="GcMissionSequenceGroup">
                                    <Property name="GcMissionSequenceGroup">
                                      <Property name="Silent" value="false" />
                                      <Property name="Icon" value="TkTextureResource">
                                        <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PLANET.DDS" />
                                        <Property name="ResHandle" value="GcResource">
                                          <Property name="ResourceID" value="0" />
                                        </Property>
                                      </Property>
                                      <Property name="PageHint" value="GcMissionPageHint">
                                        <Property name="MissionPageHint" value="None" />
                                      </Property>
                                      <Property name="PageDataLocID" value="" />
                                      <Property name="BuildMenuHint" value="" />
                                      <Property name="InventoryHint" value="" />
                                      <Property name="TerrainTarget" value="" />
                                      <Property name="DebugText" value="" />
                                      <Property name="ObjectiveID" value="FINDER_PLANET_OBJ" />
                                      <Property name="ObjectiveTipID" value="FINDER_PLANET_OBJ_TIP" />
                                      <Property name="HasCategoryOverride" value="false" />
                                      <Property name="OverrideCategory" value="GcMissionCategory">
                                        <Property name="MissionCategory" value="Mission" />
                                      </Property>
                                      <Property name="HasColourOverride" value="false" />
                                      <Property name="ColourOverride">
                                        <Property name="R" value="1.000000" />
                                        <Property name="G" value="1.000000" />
                                        <Property name="B" value="1.000000" />
                                        <Property name="A" value="1.000000" />
                                      </Property>
                                      <Property name="PrefixTitle" value="false" />
                                      <Property name="PrefixTitleText" value="" />
                                      <Property name="BlockPinning" value="false" />
                                      <Property name="AutoPinRepairs" value="false" />
                                      <Property name="BlockSpaceBattles" value="false" />
                                      <Property name="ConditionTest" value="GcMissionConditionTest">
                                        <Property name="ConditionTest" value="AnyFalse" />
                                      </Property>
                                      <Property name="HideFromLogIfConditionsMet" value="false" />
                                      <Property name="DoConsequencesIfNeverActivated" value="true" />
                                      <Property name="RepeatLogic" value="None" />
                                      <Property name="IconStyle" value="Default" />
                                      <Property name="GalMapPathOverride" value="None" />
                                      <Property name="SpecialButtonIcon" value="TkInputEnum">
                                        <Property name="InputButton" value="None" />
                                      </Property>
                                      <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
                                        <Property name="ObjectivesCanBeFormattedBySequences" value="false" />
                                        <Property name="FormattableObjective" value="" />
                                        <Property name="FormattableObjectiveTip" value="" />
                                      </Property>
                                      <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
                                        <Property name="ApplicableSeasonNumbers" />
                                        <Property name="OverrideObjective" value="" />
                                        <Property name="OverrideObjectiveTip" value="" />
                                      </Property>
                                      <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
                                        <Property name="TargetMissionSurveyId" value="" />
                                        <Property name="TargetMissionSurveyDefinitelyExists" value="false" />
                                        <Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="false" />
                                        <Property name="SurveyInactiveHint" value="" />
                                        <Property name="SurveySwapHint" value="" />
                                        <Property name="SurveyHint" value="" />
                                        <Property name="SurveyVehicleHint" value="" />
                                        <Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
                                      </Property>
                                      <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
                                        <Property name="HasCustomNotifyTimer" value="false" />
                                        <Property name="NotifyDisplayTime" value="0.000000" />
                                        <Property name="NotifyPauseTime" value="0.000000" />
                                      </Property>
                                      <Property name="Conditions">
                                        <Property name="Conditions" value="GcMissionConditionIsScanEventLocal">
                                          <Property name="GcMissionConditionIsScanEventLocal">
                                            <Property name="Event" value="{ID}_SCE" />
                                            <Property name="RequiresFullFireteam" value="false" />
                                          </Property>
                                        </Property>
                                      </Property>
                                      <Property name="Consequences" />
                                      <Property name="Stages">
                                        <Property name="Stages" value="GcGenericMissionStage">
                                          <Property name="Versions" />
                                          <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage">
                                            <Property name="GcMissionSequenceShowMissionUpdateMessage">
                                              <Property name="MissionUpdateMessage" value="Start" />
                                              <Property name="CustomMessageLocID" value="" />
                                              <Property name="CustomObjectiveLocID" value="" />
                                              <Property name="SetMissionSelected" value="true" />
                                              <Property name="WaitForMessageOver" value="false" />
                                              <Property name="ShowChangeMissionNotify" value="false" />
                                              <Property name="SuppressNotificationsNotFromThisMission" value="false" />
                                              <Property name="PlayMusicSting" value="None" />
                                              <Property name="DebugText" value="" />
                                            </Property>
                                          </Property>
                                        </Property>
                                        <Property name="Stages" value="GcGenericMissionStage">
                                          <Property name="Versions" />
                                          <Property name="Stage" value="GcMissionSequenceWaitForConditions">
                                            <Property name="GcMissionSequenceWaitForConditions">
                                              <Property name="Message" value="FINDER_PLANET_OBJ_WAIT" />
                                              <Property name="ConditionTest" value="GcMissionConditionTest">
                                                <Property name="ConditionTest" value="AnyTrue" />
                                              </Property>
                                              <Property name="Conditions">
                                                <Property name="Conditions" value="GcMissionConditionIsScanEventOnCurrentPlanet">
                                                  <Property name="GcMissionConditionIsScanEventOnCurrentPlanet">
                                                    <Property name="Event" value="{ID}_SCE" />
                                                    <Property name="AllowInShip" value="true" />
                                                  </Property>
                                                </Property>
                                              </Property>
                                              <Property name="AllowedToFormatObjectives" value="false" />
                                              <Property name="ForceAllowMissionRestart" value="false" />
                                              <Property name="ForceAllowMissionRestartEvent" value="" />
                                              <Property name="DebugText" value="" />
                                              <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
                                                <Property name="MissionMarkup" value="None" />
                                              </Property>
                                            </Property>
                                          </Property>
                                        </Property>
                                        <Property name="Stages" value="GcGenericMissionStage">
                                          <Property name="Versions" />
                                          <Property name="Stage" value="GcMissionSequenceBroadcastMessage">
                                            <Property name="GcMissionSequenceBroadcastMessage">
                                              <Property name="DebugText" value="" />
                                              <Property name="MessageID" value="M_01_01_ARVL" />
                                              <Property name="Seeded" value="true" />
                                              <Property name="SendToAllMatchingSeeds" value="false" />
                                              <Property name="Multiplayer" value="false" />
                                              <Property name="CanSendToInactive" value="false" />
                                              <Property name="BroadcastToActiveMultiplayerMission" value="false" />
                                            </Property>
                                          </Property>
                                        </Property>
                                        <Property name="Stages" value="GcGenericMissionStage">
                                          <Property name="Versions" />
                                          <Property name="Stage" value="GcMissionSequenceWait">
                                            <Property name="GcMissionSequenceWait">
                                              <Property name="Time" value="3.000000" />
                                              <Property name="DebugText" value="" />
                                              <Property name="SuppressMessages" value="false" />
                                              <Property name="MultiplyTimeBySeasonValue" value="false" />
                                            </Property>
                                          </Property>
                                        </Property>
                                      </Property>
                                    </Property>
                                  </Property>
                                </Property>
                              </Property>
                            </Property>
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
                <Property name="Stages" value="GcGenericMissionStage">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceEndScanEvent">
                    <Property name="GcMissionSequenceEndScanEvent">
                      <Property name="Event" value="{ID}_SCE" />
                      <Property name="DebugText" value="" />
                    </Property>
                  </Property>
                </Property>
                <Property name="Stages" value="GcGenericMissionStage">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage">
                    <Property name="GcMissionSequenceShowMissionUpdateMessage">
                      <Property name="MissionUpdateMessage" value="End" />
                      <Property name="CustomMessageLocID" value="" />
                      <Property name="CustomObjectiveLocID" value="" />
                      <Property name="SetMissionSelected" value="false" />
                      <Property name="WaitForMessageOver" value="false" />
                      <Property name="ShowChangeMissionNotify" value="false" />
                      <Property name="SuppressNotificationsNotFromThisMission" value="false" />
                      <Property name="PlayMusicSting" value="End" />
                      <Property name="DebugText" value="" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="ForcesPageHint" value="false" />
      <Property name="ForcesBuildMenuHint" value="false" />
      <Property name="IsLegacy" value="false" />
      <Property name="BlocksPinning" value="false" />
      <Property name="CanRenounce" value="false" />
      <Property name="UseCommunityMissionForLog" value="" />
      <Property name="TakeCommunityMissionIDFromSeasonData" value="false" />
      <Property name="TelemetryUpload" value="false" />
      <Property name="UseSeasonTitleOverride" value="false" />
    </Property>
]=]

local MISSION_TEMPLATE = MISSION_TEMPLATE_PART_1 .. MISSION_TEMPLATE_PART_2 ..
  MISSION_TEMPLATE_PART_3 .. MISSION_TEMPLATE_PART_4

local function build_mission_table()
  local missions = {}
  for _, entry in ipairs(CONFIG_TABLE) do
    local id = entry[4] .. "_" .. entry[5]
    missions[#missions + 1] = render_template(MISSION_TEMPLATE, {
      ID = xml_attr(id),
      SearchLookup = build_search_lookup(entry),
    })
  end

  return [[<?xml version="1.0" encoding="utf-8"?>
<Data template="cGcMissionTable">
  <Property name="Missions">]] .. table.concat(missions) .. [[
  </Property>
</Data>]]
end

local function reward_entry(entry)
  local id = reward_id(entry)
  return [[
    <Property name="SpecialRewardTable" value="GcGenericRewardTableEntry" _id="]] .. id .. [[">
      <Property name="Id" value="]] .. id .. [[" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMission">
              <Property name="GcRewardMission">
                <Property name="Mission" value="]] .. mission_id(entry) .. [[" />
                <Property name="SetAsSelected" value="true" />
                <Property name="Restart" value="false" />
                <Property name="FailRewardIfMissionActive" value="true" />
                <Property name="AlreadyActiveFailureMessage" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>]]
end

local function build_reward_table()
  local rewards = {}
  for _, entry in ipairs(CONFIG_TABLE) do
    rewards[#rewards + 1] = reward_entry(entry)
  end

  return [[<?xml version="1.0" encoding="utf-8"?>
<Data template="GcRewardTable">
  <Property name="SpecialRewardTable">]] .. table.concat(rewards) .. [[
  </Property>
</Data>]]
end

local function emote_entry(entry)
  local id = mission_id(entry)
  return [[
    <Property name="Emotes" value="GcPlayerEmote" _id="]] .. id .. [[">
      <Property name="Title" value="]] .. entry[4] .. "_" .. entry[5] .. [[_MNU" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="false" />
      <Property name="EmoteID" value="]] .. id .. [[" />
      <Property name="AnimationName" value="]] .. id .. [[" />
      <Property name="PropData" value="GcPlayerEmotePropData" />
      <Property name="Icon" value="TkTextureResource">
        <Property name="Filename" value="]] .. entry[6] .. [[" />
        <Property name="ResHandle" value="GcResource">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="false" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="true" />
      <Property name="MoveToCancel" value="true" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="false" />
      <Property name="RidingAnimationName" value="]] .. id .. [[" />
      <Property name="IsPetCommand" value="false" />
      <Property name="PetCommandTitle" value="" />
    </Property>]]
end

local function build_emote_menu()
  local emotes = {}
  for _, entry in ipairs(CONFIG_TABLE) do
    emotes[#emotes + 1] = emote_entry(entry)
  end

  return [[<?xml version="1.0" encoding="utf-8"?>
<Data template="cGcPlayerEmoteList">
  <Property name="Emotes">]] .. table.concat(emotes) .. [[
  </Property>
</Data>]]
end

local function animation_entry(entry)
  local id = mission_id(entry)
  return [[
      <Property name="Anims" value="TkAnimationData">
        <Property name="Anim" value="]] .. id .. [[" />
        <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/BINOCS/2H_BINOCS_UNSHEATHE.ANIM.MBIN" />
        <Property name="AnimType" value="OneShotBlendable" />
        <Property name="AnimGroupOverride" value="false" />
        <Property name="Priority" value="0" />
        <Property name="FrameStart" value="0" />
        <Property name="FrameEnd" value="0" />
        <Property name="FrameEndGame" value="0" />
        <Property name="StartNode" value="" />
        <Property name="ExtraStartNodes" />
        <Property name="AdditiveBaseAnim" value="" />
        <Property name="AdditiveBaseFrame" value="0.000000" />
        <Property name="Mask" value="" />
        <Property name="OffsetMin" value="0.000000" />
        <Property name="OffsetMax" value="0.000000" />
        <Property name="Delay" value="0.000000" />
        <Property name="Speed" value="1.000000" />
        <Property name="ActionStartFrame" value="0.000000" />
        <Property name="ActionFrame" value="-1.000000" />
        <Property name="Actions" />
        <Property name="CreatureSize" value="AllSizes" />
        <Property name="Notifies" />
        <Property name="Additive" value="false" />
        <Property name="Mirrored" value="false" />
        <Property name="Active" value="true" />
        <Property name="Has30HzFrames" value="false" />
        <Property name="GameData" value="TkAnimationGameData">
          <Property name="RootMotion" value="None" />
          <Property name="BlockPlayerMovement" value="false" />
          <Property name="BlockPlayerWeapon" value="Unblocked" />
        </Property>
      </Property>]]
end

local function trigger_entry(entry)
  return [[
            <Property name="Triggers" value="GcActionTrigger">
              <Property name="Event" value="GcAnimFrameEvent">
                <Property name="GcAnimFrameEvent">
                  <Property name="Anim" value="]] .. mission_id(entry) .. [[" />
                  <Property name="FrameStart" value="0" />
                  <Property name="StartFromEnd" value="false" />
                </Property>
              </Property>
              <Property name="Action">
                <Property name="Action" value="GcRewardAction" _index="1">
                  <Property name="GcRewardAction">
                    <Property name="Reward" value="]] .. reward_id(entry) .. [[" />
                  </Property>
                </Property>
              </Property>
            </Property>]]
end

local function trigger_component(triggers)
  return [[
    <Property name="Components" value="GcTriggerActionComponentData">
      <Property name="GcTriggerActionComponentData">
        <Property name="States">
          <Property name="States" value="GcActionTriggerState" _id="BOOT">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers">]] .. table.concat(triggers) .. [[
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>]]
end

local function build_entity_file()
  local animations = {}
  local trigger_components = {}
  local trigger_group = {}

  for _, entry in ipairs(CONFIG_TABLE) do
    animations[#animations + 1] = animation_entry(entry)
    trigger_group[#trigger_group + 1] = trigger_entry(entry)
    if #trigger_group == 32 then
      trigger_components[#trigger_components + 1] = trigger_component(trigger_group)
      trigger_group = {}
    end
  end
  if #trigger_group > 0 then
    trigger_components[#trigger_components + 1] = trigger_component(trigger_group)
  end

  return [[<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkAttachmentData">
  <Property name="Components">
    <Property name="Components" value="TkAnimationComponentData">
      <Property name="TkAnimationComponentData">
        <Property name="Anims">]] .. table.concat(animations) .. [[
        </Property>
      </Property>
    </Property>]] .. table.concat(trigger_components) .. [[
  </Property>
</Data>]]
end

local function localisation(id, english, simplified, traditional)
  return [[
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="]] .. id .. [[" />
      <Property name="BrazilianPortuguese" value="]] .. english .. [[" />
      <Property name="Dutch" value="]] .. english .. [[" />
      <Property name="English" value="]] .. english .. [[" />
      <Property name="French" value="]] .. english .. [[" />
      <Property name="German" value="]] .. english .. [[" />
      <Property name="Italian" value="]] .. english .. [[" />
      <Property name="Japanese" value="]] .. english .. [[" />
      <Property name="Korean" value="]] .. english .. [[" />
      <Property name="LatinAmericanSpanish" value="]] .. english .. [[" />
      <Property name="Polish" value="]] .. english .. [[" />
      <Property name="Portuguese" value="]] .. english .. [[" />
      <Property name="Russian" value="]] .. english .. [[" />
      <Property name="SimplifiedChinese" value="]] .. simplified .. [[" />
      <Property name="Spanish" value="]] .. english .. [[" />
      <Property name="TencentChinese" value="]] .. english .. [[" />
      <Property name="TraditionalChinese" value="]] .. traditional .. [[" />
      <Property name="USEnglish" value="]] .. english .. [[" />
    </Property>]]
end

local function build_loc_table()
  local entries = {}
  local function add(id, english, simplified, traditional)
    entries[#entries + 1] = localisation(id, english, simplified, traditional)
  end

  add("FINDER_ACTIVE_OBJ_TIP", "Planetary Query subroutines are currently &lt;TRADEABLE&gt;ACTIVE&lt;&gt;.&#xA;Increase search coverage through warp travel. Use &lt;IMG&gt;QUICK_MENU&lt;&gt; to open &lt;COMMODITY&gt;Galactic Map&lt;&gt;.", "当前星球搜索程序&lt;TRADEABLE&gt;已注册&lt;&gt;。&#xA;当前目标未搜索到, 使用飞船或者货船的星图跃迁可以扩大搜索范围。", "當前星球搜索程式&lt;TRADEABLE&gt;已注册&lt;&gt;。&#xA;當前目標未搜索到, 使用飛船或者貨船的銀河系地圖跳躍可以擴大搜索範圍。")
  add("FINDER_ACTIVE_OBJ", "Query Active", "搜索已注册", "搜索已注册")
  add("FINDER_PLANET_OBJ", "Travel to Planet", "前往行星", "前往行星")
  add("FINDER_PLANET_OBJ_TIP", "A planet matching the given &lt;SPECIAL&gt;query parameters&lt;&gt; has been identified in the &lt;TRADEABLE&gt;current system&lt;&gt;. Enter the planet&apos;s atmosphere to complete the mission.&#xA;Hold &lt;IMG&gt;ROLLLEFT&lt;&gt; and &lt;IMG&gt;ROLLRIGHT&lt;&gt; together to engage Pulse Jump.", "&lt;TRADEABLE&gt;当前星系&lt;&gt;中已搜索到一颗与指定&lt;SPECIAL&gt;搜索参数&lt;&gt;匹配的行星。&#xA;进入该&lt;TECHNOLOGY&gt;行星大气&lt;&gt;以完成任务。", "&lt;TRADEABLE&gt;當前星系&lt;&gt;中已搜索到一顆與指定&lt;SPECIAL&gt;搜索參數&lt;&gt;匹配的行星。&#xA;進入該&lt;TECHNOLOGY&gt;行星大氣&lt;&gt;以完成任務。")
  add("FINDER_PLANET_OBJ_WAIT", "&lt;TITLE&gt;Query result located in&lt;&gt; &lt;TRADEABLE&gt;current system&lt;&gt;&#xA;Enter the planet&apos;s atmosphere to complete the mission", "搜索结果位于&lt;TRADEABLE&gt;当前星系&lt;&gt;&#xA;进入&lt;TECHNOLOGY&gt;行星大气&lt;&gt;以完成任务", "搜索結果位於&lt;TRADEABLE&gt;當前星系&lt;&gt;&#xA;進入&lt;TECHNOLOGY&gt;行星大氣&lt;&gt;以完成任務")
  add("FINDER_SEARCH_OBJ", "Search Registered with Navigation Computer", "已在导航计算机中启用搜索", "已在導航電腦中啟用搜索")
  add("FINDER_SYSTEM_OBJ", "Travel to Target System", "前往目标星系", "前往目標星系")
  add("FINDER_SYSTEM_OBJ1", "Arriving at the Target System", "到达目标星系", "到達目標星系")
  add("FINDER_SYSTEM_OBJ_TIP", "A planet matching the given query parameters has been detected in a &lt;TECHNOLOGY&gt;remote system&lt;&gt;.&#xA;Board your ship and enter space for &lt;SPECIAL&gt;automatic warping&lt;&gt; to the target system&#xA;or access the &lt;STELLAR&gt;Galactic Map&lt;&gt; to initiate travel to the marked coordinates.", "符合指定搜索条件的星球位于&lt;TECHNOLOGY&gt;附近的星系&lt;&gt;。&#xA;登上飞船进入太空将&lt;SPECIAL&gt;自动跃迁&lt;&gt;到目标星系。&#xA;或者使用&lt;STELLAR&gt;星图&lt;&gt;启动曲速航行。", "符合指定搜索條件的星球位於&lt;TECHNOLOGY&gt;附近的星系&lt;&gt;。&#xA;登上飛船進入太空將&lt;SPECIAL&gt;自動跳躍&lt;&gt;到目標星系。&#xA;或者使用&lt;STELLAR&gt;銀河系地圖&lt;&gt;啟動曲速航行。")
  add("FINDER_SYSTEM_OBJ_TIP1", "A planet matching the given query parameters has been detected in a &lt;TECHNOLOGY&gt;remote system&lt;&gt;.&#xA;Access the &lt;STELLAR&gt;Galactic Map&lt;&gt; to initiate travel to the marked coordinates.", "符合指定搜索条件的星球位于&lt;TECHNOLOGY&gt;附近的星系&lt;&gt;。&#xA;使用&lt;STELLAR&gt;星图&lt;&gt;启动曲速航行。", "符合指定搜索條件的星球位於&lt;TECHNOLOGY&gt;附近的星系&lt;&gt;。&#xA;使用&lt;STELLAR&gt;銀河系地圖&lt;&gt;啟動曲速航行。")
  add("FINDER_SYSTEM_OBJ_WAIT", "&lt;TITLE&gt;Query result located in&lt;&gt; &lt;TECHNOLOGY&gt;remote system&lt;&gt;&#xA;Board your ship and enter space for &lt;SPECIAL&gt;automatic warping&lt;&gt; to the target system&#xA;or access the &lt;STELLAR&gt;Galactic Map&lt;&gt; to initiate warp travel", "搜索结果位于&lt;TECHNOLOGY&gt;附近的星系&lt;&gt;&#xA;登上飞船进入太空将&lt;SPECIAL&gt;自动跃迁&lt;&gt;到目标星系&#xA;或者使用&lt;STELLAR&gt;星图&lt;&gt;启动曲速航行", "&lt;TITLE&gt;搜索結果位於&lt;&gt; &lt;TECHNOLOGY&gt;附近的星系&lt;&gt;&#xA;登上飛船進入太空將&lt;SPECIAL&gt;自動跳躍&lt;&gt;到目標星系&#xA;或者使用&lt;STELLAR&gt;銀河系地圖&lt;&gt;啟動曲速航行")
  add("FINDER_SYSTEM_OBJ_WAIT1", "&lt;TITLE&gt;Query result located in&lt;&gt; &lt;TECHNOLOGY&gt;remote system&lt;&gt;&#xA;Access the &lt;STELLAR&gt;Galactic Map&lt;&gt; to initiate warp travel", "搜索结果位于&lt;TECHNOLOGY&gt;附近的星系&lt;&gt;&#xA;使用&lt;STELLAR&gt;星图&lt;&gt;启动曲速航行", "&lt;TITLE&gt;搜索結果位於&lt;&gt; &lt;TECHNOLOGY&gt;附近的星系&lt;&gt;&#xA;使用&lt;STELLAR&gt;銀河系地圖&lt;&gt;啟動曲速航行")
  add("FINDER_SUB_1", "Active Deep Space Scan", "主动深空扫描", "主動深空掃描")

  for _, entry in ipairs(CONFIG_TABLE) do
    local id = entry[4] .. "_" .. entry[5]
    add(
      id .. "_DSC",
      "&lt;SPECIAL&gt;QUERY PARAMETERS&lt;&gt; &lt;HIGHLIGHT&gt;//&lt;&gt; Unvisited ~ Target Species Detected",
      "&lt;SPECIAL&gt;搜索参数&lt;&gt; &lt;HIGHLIGHT&gt;//&lt;&gt; 未访问, 存在指定生物",
      "&lt;SPECIAL&gt;搜索參數&lt;&gt; &lt;HIGHLIGHT&gt;//&lt;&gt; 未訪問, 發現指定物種"
    )
    add(id .. "_MNU", xml_attr(entry[1]), xml_attr(entry[2]), xml_attr(entry[3]))
    add(
      id .. "_TTL",
      "Creature Query ~ " .. xml_attr(entry[1]),
      "生物搜索：" .. xml_attr(entry[2]),
      "生物搜索：" .. xml_attr(entry[3])
    )
  end

  return [[<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkLocalisationTable">
  <Property name="Table">]] .. table.concat(entries) .. [[
  </Property>
</Data>]]
end

local MISSION_TABLE = build_mission_table()
local REWARD_TABLE = build_reward_table()
local EMOTE_MENU = build_emote_menu()
local ENTITY_FILE = build_entity_file()
local LOC_TABLE = build_loc_table()

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] = "Creature Finder V1.0.6.45",
  ["MOD_AUTHOR"] = "beihaixingchen",
  ["NMS_VERSION"] = "6.45",
  ["MOD_DESCRIPTION"] = "Instantly track down any rare species across the galaxy.",
  ["ADD_FILES"] =
  {
    {
      ["COMMENT"] = "Generated Creature Finder mission table.",
      ["FILE_DESTINATION"] = "METADATA/SIMULATION/MISSIONS/TABLES/NPCMISSIONTABLE.EXML",
      ["FILE_CONTENT"] = MISSION_TABLE,
    },
    {
      ["COMMENT"] = "Generated Creature Finder reward entries.",
      ["FILE_DESTINATION"] = "METADATA/REALITY/TABLES/REWARDTABLE.EXML",
      ["FILE_CONTENT"] = REWARD_TABLE,
    },
    {
      ["COMMENT"] = "Generated Creature Finder Quick Menu emotes.",
      ["FILE_DESTINATION"] = "METADATA/UI/EMOTEMENU.EXML",
      ["FILE_CONTENT"] = EMOTE_MENU,
    },
    {
      ["COMMENT"] = "Generated player animations and isolated reward triggers.",
      ["FILE_DESTINATION"] = "MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.EXML",
      ["FILE_CONTENT"] = ENTITY_FILE,
    },
    {
      ["COMMENT"] = "Generated Creature Finder localisation.",
      ["FILE_DESTINATION"] = "LocTable.mxml",
      ["FILE_CONTENT"] = LOC_TABLE,
    },
    {
      ["COMMENT"] = "Custom Creature Finder icons.",
      ["FILE_DESTINATION"] = "TEXTURES/UI/FRONTEND/ICONS/CREATUREFINDER",
      ["EXTERNAL_FILE_SOURCE"] = ICON_SOURCE,
    },
  },
}
