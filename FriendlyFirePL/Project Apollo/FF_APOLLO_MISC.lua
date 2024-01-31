----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "MISC"
METADATA_NMS_VERSION    = "448"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for miscellaneous objects. Modifies various files in METADATA and MODELS directories."



--------------------------------------------------
-- player titles
--------------------------------------------------

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



--------------------------------------------------
-- debug emotes - functions
--------------------------------------------------

function BuildEmoteIconProperty(name,icon) return
[[
<Property value="GcPlayerEmote.xml">
  <Property name="Title" value="TEXT_EMOTE_]]..name..[[" />
  <Property name="ChatText" value="" />
  <Property name="ChatUsesPrefix" value="False" />
  <Property name="EmoteID" value="E_]]..name..[[" />
  <Property name="AnimationName" value="A_]]..name..[[" />
  <Property name="PropData" value="GcPlayerEmotePropData.xml">
    <Property name="Model" value="" />
    <Property name="Scale" value="0" />
    <Property name="Hand" value="GcHand.xml">
      <Property name="Hand" value="Right" />
    </Property>
    <Property name="IsHologram" value="False" />
    <Property name="ScanEffectNodeName" value="" />
    <Property name="ScanEffect" value="GcScanEffectData.xml">
      <Property name="Id" value="" />
      <Property name="ScanEffectType" value="Building" />
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.823" />
        <Property name="G" value="0.475" />
        <Property name="B" value="0.432" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BasecolourIntensity" value="0.2" />
      <Property name="ScanlinesSeparation" value="0.1" />
      <Property name="FresnelIntensity" value="3" />
      <Property name="GlowIntensity" value="0" />
      <Property name="WaveOffset" value="0" />
      <Property name="WaveActive" value="True" />
      <Property name="FixedUpAxis" value="False" />
      <Property name="Transparent" value="False" />
      <Property name="ModelFade" value="False" />
      <Property name="FadeInTime" value="0.2" />
      <Property name="FadeOutTime" value="0.2" />
    </Property>
    <Property name="DelayTime" value="0" />
  </Property>
  <Property name="Icon" value="TkTextureResource.xml">
    <Property name="Filename" value="]]..icon..[[" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="LinkedSpecialID" value="" />
  <Property name="NeverShowInMenu" value="False" />
  <Property name="LoopAnimUntilMove" value="" />
  <Property name="CloseMenuOnSelect" value="False" />
  <Property name="MoveToCancel" value="False" />
  <Property name="GekAnimationName" value="" />
  <Property name="GekLoopAnimUntilMove" value="" />
  <Property name="AvailableUnderwater" value="False" />
  <Property name="RidingAnimationName" value="EMOTE_R_WAVE" />
  <Property name="IsPetCommand" value="False" />
  <Property name="PetCommandTitle" value="" />
  <Property name="PetCommandIcon" value="TkTextureResource.xml">
    <Property name="Filename" value="" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
</Property>
]]
end

function BuildEmoteAnimProperty(name) return
[[
<Property name="Idle" value="TkAnimationData.xml">
  <Property name="Anim" value="A_]]..name..[[" />
  <Property name="AdditiveBaseAnim" value="" />
  <Property name="Filename" value="MODELS/TESTS/EFFECTTEST.ANIM.MBIN" />
  <Property name="StartNode" value="" />
  <Property name="ExtraStartNodes" />
  <Property name="GameData" value="TkAnimationGameData.xml">
    <Property name="RootMotionEnabled" value="False" />
    <Property name="BlockPlayerMovement" value="False" />
    <Property name="BlockPlayerWeapon" value="Unblocked" />
  </Property>
  <Property name="FrameStart" value="0" />
  <Property name="FrameEnd" value="0" />
  <Property name="Priority" value="0" />
  <Property name="OffsetMin" value="0" />
  <Property name="OffsetMax" value="0" />
  <Property name="Delay" value="0" />
  <Property name="Speed" value="1" />
  <Property name="ActionStartFrame" value="0" />
  <Property name="ActionFrame" value="-1" />
  <Property name="AdditiveBaseFrame" value="0" />
  <Property name="AnimType" value="OneShot" />
  <Property name="CreatureSize" value="AllSizes" />
  <Property name="Additive" value="False" />
  <Property name="Mirrored" value="False" />
  <Property name="Active" value="True" />
  <Property name="Has30HzFrames" value="False" />
</Property>
]]
end

function BuildEmoteTriggerProperty(name) return
[[
<Property value="GcTriggerActionComponentData.xml">
  <Property name="HideModel" value="False" />
  <Property name="StartInactive" value="False" />
  <Property name="States">
    <Property value="GcActionTriggerState.xml">
      <Property name="StateID" value="BOOT" />
      <Property name="Triggers">
        <Property value="GcActionTrigger.xml">
          <Property name="Event" value="GcAnimFrameEvent.xml">
            <Property name="Anim" value="A_]]..name..[[" />
            <Property name="FrameStart" value="0" />
            <Property name="StartFromEnd" value="False" />
          </Property>
          <Property name="Action">
            <Property value="GcRewardAction.xml">
              <Property name="Reward" value="RD_]]..name..[[" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
  </Property>
  <Property name="Persistent" value="False" />
  <Property name="PersistentState" value="" />
  <Property name="ResetShotTimeOnStateChange" value="False" />
  <Property name="LinkStateToBaseGrid" value="False" />
</Property>
]]
end

--------------------------------------------------
-- debug emotes - plating
--------------------------------------------------

PROPERTY_EMOTE_PLATING = BuildEmoteIconProperty(
  "PLATING","TEXTURES/ITEMS/PLATING.DDS")

PROPERTY_ANIM_PLATING = BuildEmoteAnimProperty("PLATING")

PROPERTY_TRIGGER_PLATING = BuildEmoteTriggerProperty("PLATING")

--------------------------------------------------
-- debug emotes - fragment
--------------------------------------------------
    
PROPERTY_EMOTE_FRAGMENT = BuildEmoteIconProperty(
  "FRAGMENT","TEXTURES/ITEMS/FRAGMENT.DDS")

PROPERTY_ANIM_FRAGMENT = BuildEmoteAnimProperty("FRAGMENT")

PROPERTY_TRIGGER_FRAGMENT = BuildEmoteTriggerProperty("FRAGMENT")

--------------------------------------------------
-- debug emotes - circuit
--------------------------------------------------

PROPERTY_EMOTE_CIRCUIT = BuildEmoteIconProperty(
  "CIRCUIT","TEXTURES/ITEMS/CIRCUIT.DDS")

PROPERTY_ANIM_CIRCUIT = BuildEmoteAnimProperty("CIRCUIT")

PROPERTY_TRIGGER_CIRCUIT = BuildEmoteTriggerProperty("CIRCUIT")



--------------------------------------------------
-- stat tracking property
--------------------------------------------------

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

--------------------------------------------------
-- portal scan event
--------------------------------------------------

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

--------------------------------------------------
-- dissonant scan event
--------------------------------------------------

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



--------------------------------------------------
-- temporal fracture spawn
--------------------------------------------------

PROPERTY_SPAWN_FRACTURE =
[[
<Property value="GcPulseEncounterInfo.xml">
  <Property name="Id" value="OBJ_FRACTURE" />
  <Property name="MarkerLabel" value="TEXT_FRACTURE_MARKER" />
  <Property name="ChatMessageName" value="" />
  <Property name="MarkerIcon" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/MISSION/MAIN.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="CustomNotify" value="TEXT_FRACTURE_TIP" />
  <Property name="CustomNotifyTitle" value="TEXT_FRACTURE_LABEL" />
  <Property name="CustomNotifyOSD" value="TEXT_FRACTURE_OSD" />
  <Property name="UseMarkerIconInOSD" value="True" />
  <Property name="SpawnConditions" value="GcPulseEncounterSpawnConditions.xml">
    <Property name="AllowedInCreative" value="True" />
    <Property name="AllowedInEmptySystem" value="True" />
    <Property name="AllowedDuringTutorial" value="False" />
    <Property name="AllowedBeyondPortals" value="True" />
    <Property name="AllowedWhileOnMPMission" value="False" />
    <Property name="RequiresProduct" value="" />
    <Property name="RequiresMissionComplete" value="" />
    <Property name="RequiresMissionActive" value="M_STARTER" />
    <Property name="RequiresMissionNotComplete" value="" />
    <Property name="RequiresMissionNotActive" value="" />
    <Property name="RequiresAlienShip" value="False" />
    <Property name="RequiresNearbyCorruptWorld" value="False" />
    <Property name="StandardEncounter" value="False" />
    <Property name="MissionEncounter" value="False" />
  </Property>
  <Property name="SpawnChance" value="1" />
  <Property name="SpawnDistance" value="3000" />
  <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
    <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_06_LP" />
  </Property>
  <Property name="Silent" value="False" />
  <Property name="Encounter" value="GcPulseEncounterSpawnObject.xml">
    <Property name="Object" value="TkModelResource.xml">
      <Property name="Filename" value="MODELS/OBJECTS/FRACTURE.SCENE.MBIN" />
      <Property name="ResHandle" value="GcResource.xml">
        <Property name="ResourceID" value="0" />
      </Property>
    </Property>
    <Property name="SpawnScale" value="100" />
    <Property name="Pitch" value="0" />
    <Property name="Yaw" value="0" />
    <Property name="Roll" value="0" />
  </Property>
</Property>
]]



--------------------------------------------------
-- derelict dialogue overwrite
--------------------------------------------------

PROPERTY_DIALOGUE_DERELICT =
[[
<Property value="GcAlienPuzzleMissionOverride.xml">
  <Property name="Mission" value="M_BOXB" />
  <Property name="OptionalMissionSeed" value="GcSeed.xml">
    <Property name="Seed" value="0" />
    <Property name="UseSeedValue" value="False" />
  </Property>
  <Property name="Puzzle" value="I_DERELICT_1" />
  <Property name="ForceMissionSeed" value="False" />
  <Property name="AltPriorityMissionForSelection" value="" />
</Property>
]]



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILE_GAMESTATE_STATSTABLE =             "METADATA\\GAMESTATE\\STATS\\STATDEFINITIONSTABLE.MBIN"
FILE_GAMESTATE_PLAYERRTITLE =           "METADATA\\GAMESTATE\\PLAYERDATA\\PLAYERTITLEDATA.MBIN"

FILE_SCANNING_PLANET =                  "METADATA\\SIMULATION\\SCANNING\\SCANEVENTTABLEPLANET.MBIN"
FILE_SCANNING_TUTORIAL =                "METADATA\\SIMULATION\\SCANNING\\SCANEVENTTABLETUTORIAL.MBIN"

FILE_SIMULATION_SPAWNTABLE =            "METADATA\\SIMULATION\\SCENE\\EXPERIENCESPAWNTABLE.MBIN"
FILE_MODELS_DERELICT_TERMINAL =         "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\NPCROOMS\\NPC_ABANDFRIGATECAPTAIN\\ENTITIES\\ABANFRIGATETERMINALFINAL.ENTITY.MBIN"

FILE_METADATA_EMOTEMENU =               "METADATA\\UI\\EMOTEMENU.MBIN"
FILE_MODELS_PLAYERENTITY =              "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\PLAYERCHARACTER\\ENTITIES\\PLAYERCHARACTER.ENTITY.MBIN"



--------------------------------------------------
-- lists of data to be added
--------------------------------------------------

LIST_PLAYER_TITLES = 
{
    PROPERTY_TITLE_1,
    PROPERTY_TITLE_2,
    PROPERTY_TITLE_3,
    PROPERTY_TITLE_4,
    PROPERTY_TITLE_5,
}

LIST_EMOTE_ICONS =
{
    PROPERTY_EMOTE_PLATING,
    PROPERTY_EMOTE_FRAGMENT,
    PROPERTY_EMOTE_CIRCUIT,
}

LIST_EMOTE_ANIMS =
{
    PROPERTY_ANIM_PLATING,
    PROPERTY_ANIM_FRAGMENT,
    PROPERTY_ANIM_CIRCUIT,
}

LIST_EMOTE_TRIGGERS = 
{
    PROPERTY_TRIGGER_PLATING,
    PROPERTY_TRIGGER_FRAGMENT,
    PROPERTY_TRIGGER_CIRCUIT,
}



--------------------------------------------------
-- mod container
--------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
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
                    ["MBIN_FILE_SOURCE"] = FILE_SCANNING_TUTORIAL,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "Events",
                            ["ADD"] = PROPERTY_SCAN_PORTAL,

                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_SCANNING_PLANET,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "Events",
                            ["ADD"] = PROPERTY_SCAN_DISSONANT,

                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_GAMESTATE_STATSTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "StatDefinitionTable",
                            ["ADD"] = PROPERTY_STAT_TOKENS,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_SIMULATION_SPAWNTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "PulseEncounters",
                            ["ADD"] = PROPERTY_SPAWN_FRACTURE,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_DERELICT_TERMINAL,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "PuzzleMissionOverrideTable",
                            ["ADD"] = PROPERTY_DIALOGUE_DERELICT,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_GAMESTATE_PLAYERRTITLE,
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
                            ["ADD"] = LIST_PLAYER_TITLES,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_EMOTEMENU,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "Emotes",
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["LINE_OFFSET"] = -1,
                            ["ADD"] = LIST_EMOTE_ICONS,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_PLAYERENTITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Anim","0H_GREET_MOB_04",},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"]  = "ADDafterSECTION",
                            ["ADD"] = LIST_EMOTE_ANIMS,
                        },

                        {
                            ["PKW"] = "GcPlayerEffectsComponentData.xml",
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = LIST_EMOTE_TRIGGERS,
                        },
                    },
                },



            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------