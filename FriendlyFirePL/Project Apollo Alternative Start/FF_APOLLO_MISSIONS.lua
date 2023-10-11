----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "BETA11"
METADATA_MOD_DESC       = "MISSIONS"



----------------------------------------------------------------------------------------------------
-- Space Anomaly tooltip mission
----------------------------------------------------------------------------------------------------

PROPERTY_TOOLTIP_ANOMALY = 
[[
<Property value="GcGenericMissionSequence.xml">
  <Property name="MissionID" value="T_ANOMALY" />
  <Property name="MissionClass" value="Guide" />
  <Property name="MissionIsCritical" value="False" />
  <Property name="MissionObjective" value="" />
  <Property name="MissionTitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescSwitchOverride" value="" />
  <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="UseScanEventDetailsInLogInfo" value="False" />
  <Property name="MissionIcon" value="TkTextureResource.xml">
    <Property name="Filename" value="" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionPriority" value="-1" />
  <Property name="MissionCategory" value="GcMissionCategory.xml">
    <Property name="MissionCategory" value="Urgent" />
  </Property>
  <Property name="MissionPageHint" value="GcMissionPageHint.xml">
    <Property name="MissionPageHint" value="None" />
  </Property>
  <Property name="MissionPageLocID" value="" />
  <Property name="MissionBuildMenuHint" value="" />
  <Property name="MissionHasColourOverride" value="False" />
  <Property name="MissionColourOverride" value="Colour.xml">
    <Property name="R" value="1" />
    <Property name="G" value="1" />
    <Property name="B" value="1" />
    <Property name="A" value="1" />
  </Property>
  <Property name="BeginCheckFrequency" value="1" />
  <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
    <Property name="PrimarySubstances" />
    <Property name="SecondarySubstances" />
    <Property name="PrimaryProducts" />
    <Property name="SecondaryProducts" />
    <Property name="AmountMin" value="0" />
    <Property name="AmountMax" value="0" />
    <Property name="AmountShouldBeRoundNumber" value="False" />
  </Property>
  <Property name="PrefixTitle" value="True" />
  <Property name="NextMissionHint" value="" />
  <Property name="MessageComplete" value="Never" />
  <Property name="MessageStart" value="Never" />
  <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
    <Property name="Type" value="GcMissionType.xml">
      <Property name="MissionType" value="SpaceCombat" />
    </Property>
    <Property name="Difficulty" value="GcMissionDifficulty.xml">
      <Property name="MissionDifficulty" value="Normal" />
    </Property>
    <Property name="MinRank" value="0" />
    <Property name="CloseMissionGiver" value="False" />
    <Property name="IsGuildShopMission" value="False" />
    <Property name="IsPlanetProcMission" value="False" />
    <Property name="IsMultiplayerEventMission" value="False" />
    <Property name="RewardPenaltyOnAbandon" value="" />
    <Property name="Faction" />
    <Property name="Weighting" value="100" />
    <Property name="IgnoreCalculatedObjective" value="False" />
    <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
    <Property name="DefaultItemInitialWarpScanEvents" />
    <Property name="DefaultItemTypeForInitialWarp" value="None" />
    <Property name="BasePartBlueprints" />
  </Property>
  <Property name="AutoStart" value="AllModes" />
  <Property name="RestartOnCompletion" value="False" />
  <Property name="CancelSetsComplete" value="False" />
  <Property name="Dialog" value="GcAlienPuzzleTable.xml">
    <Property name="Table" />
  </Property>
  <Property name="ScanEvents" />
  <Property name="Rewards" />
  <Property name="Costs" />
  <Property name="TradingDataOverride" value="GcTradeData.xml">
    <Property name="AlwaysPresentProducts" />
    <Property name="AlwaysPresentSubstances" />
    <Property name="OptionalProducts" />
    <Property name="OptionalSubstances" />
    <Property name="MinItemsForSale" value="5" />
    <Property name="MaxItemsForSale" value="15" />
    <Property name="PercentageOfItemsAreProducts" value="0.3" />
    <Property name="BuyPriceIncreaseRedThreshold" value="20" />
    <Property name="BuyPriceDecreaseGreenThreshold" value="-10" />
    <Property name="SellPriceIncreaseGreenThreshold" value="10" />
    <Property name="SellPriceDecreaseRedThreshold" value="-20" />
    <Property name="ShowSeasonRewards" value="False" />
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
  <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="StartIsCancel" value="True" />
  <Property name="StartingConditions">
    <Property value="GcMissionConditionLocation.xml">
      <Property name="MissionPlayerLocation" value="InNexus" />
    </Property>
  </Property>
  <Property name="CancelingConditions" />
  <Property name="FinalStageVersions" />
  <Property name="Stages">
  
    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="True" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="TEXTURES/ITEMS/TOKEN.DDS" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="DebugText" value="" />
        <Property name="ObjectiveID" value="" />
        <Property name="ObjectiveTipID" value="" />
        <Property name="HasCategoryOverride" value="True" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Urgent" />
        </Property>
        <Property name="HasColourOverride" value="True" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="0.314" />
          <Property name="G" value="0.196" />
          <Property name="B" value="0.804" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="True" />
        <Property name="PrefixTitleText" value="TEXT_TOOLTIP_TITLE" />
        <Property name="BlockPinning" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="Loop" />
        <Property name="IconStyle" value="Square" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions" />
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
              <Property name="Message" value="" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AnyFalse" />
              </Property>
              <Property name="Conditions">
                <Property value="GcMissionConditionIsMissionInProgress.xml">
                  <Property name="MissionID" value="M_ADVANCED" />
                  <Property name="MustBeSelectedMission" value="False" />
                </Property>
              </Property>
              <Property name="AllowedToFormatObjectives" value="True" />
              <Property name="ForceAllowMissionRestart" value="False" />
              <Property name="ForceAllowMissionRestartEvent" value="" />
              <Property name="DebugText" value="" />
              <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                <Property name="MissionMarkup" value="None" />
              </Property>
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="20" />
              <Property name="DebugText" value="" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
              <Property name="Category" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Urgent" />
              </Property>
              <Property name="Time" value="15" />
              <Property name="Message" value="TEXT_TOOLTIP_ANOMALY" />
              <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="INVALID_EVENT" />
              </Property>
              <Property name="OSDTime" value="0" />
              <Property name="OSDMessage" value="" />
              <Property name="OSDMessageSubtitle" value="" />
              <Property name="OSDMessageColour" value="Colour.xml">
                <Property name="R" value="0.086" />
                <Property name="G" value="0.68" />
                <Property name="B" value="1" />
                <Property name="A" value="0.5" />
              </Property>
              <Property name="OSDMessageStyle" value="Standard" />
              <Property name="OSDUseMissionIcon" value="False" />
              <Property name="DisableIcon" value="False" />
              <Property name="DisableTitlePrefix" value="False" />
              <Property name="UseConditionsForTextFormatting" />
              <Property name="DebugText" value="" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="60" />
              <Property name="DebugText" value="" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

        </Property>
      </Property>
    </Property>

  </Property>
  <Property name="ForcesPageHint" value="False" />
  <Property name="ForcesBuildMenuHint" value="False" />
  <Property name="IsProceduralAllowed" value="False" />
  <Property name="IsRecurring" value="False" />
  <Property name="IsLegacy" value="False" />
  <Property name="BlocksPinning" value="False" />
  <Property name="CanRenounce" value="False" />
  <Property name="UseCommunityMissionForLog" value="" />
  <Property name="TelemetryUpload" value="False" />
  <Property name="UseSeasonTitleOverride" value="False" />
</Property>
]]



----------------------------------------------------------------------------------------------------
-- space station tooltip mission
----------------------------------------------------------------------------------------------------

PROPERTY_TOOLTIP_STATION = 
[[
<Property value="GcGenericMissionSequence.xml">
  <Property name="MissionID" value="T_STATION" />
  <Property name="MissionClass" value="Guide" />
  <Property name="MissionIsCritical" value="False" />
  <Property name="MissionObjective" value="" />
  <Property name="MissionTitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescSwitchOverride" value="" />
  <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="UseScanEventDetailsInLogInfo" value="False" />
  <Property name="MissionIcon" value="TkTextureResource.xml">
    <Property name="Filename" value="" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionPriority" value="-1" />
  <Property name="MissionCategory" value="GcMissionCategory.xml">
    <Property name="MissionCategory" value="Urgent" />
  </Property>
  <Property name="MissionPageHint" value="GcMissionPageHint.xml">
    <Property name="MissionPageHint" value="None" />
  </Property>
  <Property name="MissionPageLocID" value="" />
  <Property name="MissionBuildMenuHint" value="" />
  <Property name="MissionHasColourOverride" value="False" />
  <Property name="MissionColourOverride" value="Colour.xml">
    <Property name="R" value="1" />
    <Property name="G" value="1" />
    <Property name="B" value="1" />
    <Property name="A" value="1" />
  </Property>
  <Property name="BeginCheckFrequency" value="1" />
  <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
    <Property name="PrimarySubstances" />
    <Property name="SecondarySubstances" />
    <Property name="PrimaryProducts" />
    <Property name="SecondaryProducts" />
    <Property name="AmountMin" value="0" />
    <Property name="AmountMax" value="0" />
    <Property name="AmountShouldBeRoundNumber" value="False" />
  </Property>
  <Property name="PrefixTitle" value="True" />
  <Property name="NextMissionHint" value="" />
  <Property name="MessageComplete" value="Never" />
  <Property name="MessageStart" value="Never" />
  <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
    <Property name="Type" value="GcMissionType.xml">
      <Property name="MissionType" value="SpaceCombat" />
    </Property>
    <Property name="Difficulty" value="GcMissionDifficulty.xml">
      <Property name="MissionDifficulty" value="Normal" />
    </Property>
    <Property name="MinRank" value="0" />
    <Property name="CloseMissionGiver" value="False" />
    <Property name="IsGuildShopMission" value="False" />
    <Property name="IsPlanetProcMission" value="False" />
    <Property name="IsMultiplayerEventMission" value="False" />
    <Property name="RewardPenaltyOnAbandon" value="" />
    <Property name="Faction" />
    <Property name="Weighting" value="100" />
    <Property name="IgnoreCalculatedObjective" value="False" />
    <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
    <Property name="DefaultItemInitialWarpScanEvents" />
    <Property name="DefaultItemTypeForInitialWarp" value="None" />
    <Property name="BasePartBlueprints" />
  </Property>
  <Property name="AutoStart" value="AllModes" />
  <Property name="RestartOnCompletion" value="False" />
  <Property name="CancelSetsComplete" value="False" />
  <Property name="Dialog" value="GcAlienPuzzleTable.xml">
    <Property name="Table" />
  </Property>
  <Property name="ScanEvents" />
  <Property name="Rewards" />
  <Property name="Costs" />
  <Property name="TradingDataOverride" value="GcTradeData.xml">
    <Property name="AlwaysPresentProducts" />
    <Property name="AlwaysPresentSubstances" />
    <Property name="OptionalProducts" />
    <Property name="OptionalSubstances" />
    <Property name="MinItemsForSale" value="5" />
    <Property name="MaxItemsForSale" value="15" />
    <Property name="PercentageOfItemsAreProducts" value="0.3" />
    <Property name="BuyPriceIncreaseRedThreshold" value="20" />
    <Property name="BuyPriceDecreaseGreenThreshold" value="-10" />
    <Property name="SellPriceIncreaseGreenThreshold" value="10" />
    <Property name="SellPriceDecreaseRedThreshold" value="-20" />
    <Property name="ShowSeasonRewards" value="False" />
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
  <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="StartIsCancel" value="True" />
  <Property name="StartingConditions">
    <Property value="GcMissionConditionLocation.xml">
      <Property name="MissionPlayerLocation" value="InSpaceStation" />
    </Property>
  </Property>
  <Property name="CancelingConditions" />
  <Property name="FinalStageVersions" />
  <Property name="Stages">
  
    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="True" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="TEXTURES/ITEMS/TOKEN.DDS" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="DebugText" value="" />
        <Property name="ObjectiveID" value="" />
        <Property name="ObjectiveTipID" value="" />
        <Property name="HasCategoryOverride" value="True" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Urgent" />
        </Property>
        <Property name="HasColourOverride" value="True" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="0.314" />
          <Property name="G" value="0.196" />
          <Property name="B" value="0.804" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="True" />
        <Property name="PrefixTitleText" value="TEXT_TOOLTIP_TITLE" />
        <Property name="BlockPinning" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="Loop" />
        <Property name="IconStyle" value="Square" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions" />
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
              <Property name="Message" value="" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AnyFalse" />
              </Property>
              <Property name="Conditions">
                <Property value="GcMissionConditionIsMissionInProgress.xml">
                  <Property name="MissionID" value="M_ADVANCED" />
                  <Property name="MustBeSelectedMission" value="False" />
                </Property>
              </Property>
              <Property name="AllowedToFormatObjectives" value="True" />
              <Property name="ForceAllowMissionRestart" value="False" />
              <Property name="ForceAllowMissionRestartEvent" value="" />
              <Property name="DebugText" value="" />
              <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                <Property name="MissionMarkup" value="None" />
              </Property>
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="20" />
              <Property name="DebugText" value="" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
              <Property name="Category" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Urgent" />
              </Property>
              <Property name="Time" value="15" />
              <Property name="Message" value="TEXT_TOOLTIP_STATION" />
              <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="INVALID_EVENT" />
              </Property>
              <Property name="OSDTime" value="0" />
              <Property name="OSDMessage" value="" />
              <Property name="OSDMessageSubtitle" value="" />
              <Property name="OSDMessageColour" value="Colour.xml">
                <Property name="R" value="0.086" />
                <Property name="G" value="0.68" />
                <Property name="B" value="1" />
                <Property name="A" value="0.5" />
              </Property>
              <Property name="OSDMessageStyle" value="Standard" />
              <Property name="OSDUseMissionIcon" value="False" />
              <Property name="DisableIcon" value="False" />
              <Property name="DisableTitlePrefix" value="False" />
              <Property name="UseConditionsForTextFormatting" />
              <Property name="DebugText" value="" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="60" />
              <Property name="DebugText" value="" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

        </Property>
      </Property>
    </Property>

  </Property>
  <Property name="ForcesPageHint" value="False" />
  <Property name="ForcesBuildMenuHint" value="False" />
  <Property name="IsProceduralAllowed" value="False" />
  <Property name="IsRecurring" value="False" />
  <Property name="IsLegacy" value="False" />
  <Property name="BlocksPinning" value="False" />
  <Property name="CanRenounce" value="False" />
  <Property name="UseCommunityMissionForLog" value="" />
  <Property name="TelemetryUpload" value="False" />
  <Property name="UseSeasonTitleOverride" value="False" />
</Property>
]]



----------------------------------------------------------------------------------------------------
-- mission for dissonant system path
----------------------------------------------------------------------------------------------------

PROPERTY_MISSION_DISSONANT =
[[
  <Property value="GcGenericMissionSequence.xml">
  <Property name="MissionID" value="M_DISSONANT" />
  <Property name="MissionClass" value="Secondary" />
  <Property name="MissionIsCritical" value="False" />
  <Property name="MissionObjective" value="" />
  <Property name="MissionTitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_DISS_TITLE" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_DISS_SUB" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_DISS_DESC" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescSwitchOverride" value="" />
  <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="UseScanEventDetailsInLogInfo" value="True" />
  <Property name="MissionIcon" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PLANET.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.BLACKHOLE.ON.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.BLACKHOLE.OFF.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionPriority" value="0" />
  <Property name="MissionCategory" value="GcMissionCategory.xml">
    <Property name="MissionCategory" value="Mission" />
  </Property>
  <Property name="MissionPageHint" value="GcMissionPageHint.xml">
    <Property name="MissionPageHint" value="None" />
  </Property>
  <Property name="MissionPageLocID" value="" />
  <Property name="MissionBuildMenuHint" value="" />
  <Property name="MissionHasColourOverride" value="False" />
  <Property name="MissionColourOverride" value="Colour.xml">
    <Property name="R" value="1" />
    <Property name="G" value="1" />
    <Property name="B" value="1" />
    <Property name="A" value="1" />
  </Property>
  <Property name="BeginCheckFrequency" value="1" />
  <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
    <Property name="PrimarySubstances" />
    <Property name="SecondarySubstances" />
    <Property name="PrimaryProducts" />
    <Property name="SecondaryProducts" />
    <Property name="AmountMin" value="0" />
    <Property name="AmountMax" value="0" />
    <Property name="AmountShouldBeRoundNumber" value="False" />
  </Property>
  <Property name="PrefixTitle" value="True" />
  <Property name="NextMissionHint" value="" />
  <Property name="MessageComplete" value="Never" />
  <Property name="MessageStart" value="Never" />
  <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
    <Property name="Type" value="GcMissionType.xml">
      <Property name="MissionType" value="SpaceCombat" />
    </Property>
    <Property name="Difficulty" value="GcMissionDifficulty.xml">
      <Property name="MissionDifficulty" value="Normal" />
    </Property>
    <Property name="MinRank" value="0" />
    <Property name="CloseMissionGiver" value="False" />
    <Property name="IsGuildShopMission" value="False" />
    <Property name="IsPlanetProcMission" value="False" />
    <Property name="IsMultiplayerEventMission" value="False" />
    <Property name="RewardPenaltyOnAbandon" value="" />
    <Property name="Faction" />
    <Property name="Weighting" value="100" />
    <Property name="IgnoreCalculatedObjective" value="False" />
    <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
    <Property name="DefaultItemInitialWarpScanEvents" />
    <Property name="DefaultItemTypeForInitialWarp" value="None" />
    <Property name="BasePartBlueprints" />
  </Property>
  <Property name="AutoStart" value="None" />
  <Property name="RestartOnCompletion" value="False" />
  <Property name="CancelSetsComplete" value="False" />
  <Property name="Dialog" value="GcAlienPuzzleTable.xml">
    <Property name="Table" />
  </Property>
  <Property name="ScanEvents">
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
      <Property name="SurveyDistance" value="200" />
      <Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD" />
      <Property name="EventStartType" value="Special" />
      <Property name="EventEndType" value="Interact" />
      <Property name="EventPriority" value="Regular" />
      <Property name="CanEndFromOutsideMission" value="False" />
      <Property name="DisableMultiplayerSync" value="True" />
      <Property name="BlockStartedOnUseEvents" value="False" />
      <Property name="ReplaceEventIfAlreadyActive" value="False" />
      <Property name="BuildingLocation" value="Nearest" />
      <Property name="BuildingType" value="BuildingClass" />
      <Property name="BuildingClass" value="GcBuildingClassification.xml">
        <Property name="BuildingClass" value="AbandonedRobotCamp" />
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
  </Property>
  <Property name="Rewards" />
  <Property name="Costs" />
  <Property name="TradingDataOverride" value="GcTradeData.xml">
    <Property name="AlwaysPresentProducts" />
    <Property name="AlwaysPresentSubstances" />
    <Property name="OptionalProducts" />
    <Property name="OptionalSubstances" />
    <Property name="MinItemsForSale" value="5" />
    <Property name="MaxItemsForSale" value="15" />
    <Property name="PercentageOfItemsAreProducts" value="0.3" />
    <Property name="BuyPriceIncreaseRedThreshold" value="20" />
    <Property name="BuyPriceDecreaseGreenThreshold" value="-10" />
    <Property name="SellPriceIncreaseGreenThreshold" value="10" />
    <Property name="SellPriceDecreaseRedThreshold" value="-20" />
    <Property name="ShowSeasonRewards" value="False" />
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
  <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="StartIsCancel" value="False" />
  <Property name="StartingConditions" />
  <Property name="CancelingConditions" />
  <Property name="FinalStageVersions" />
  <Property name="Stages">

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="False" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="DebugText" value="" />
        <Property name="ObjectiveID" value="TEXT_DISS_S1_OBJ" />
        <Property name="ObjectiveTipID" value="TEXT_DISS_S1_DESC" />
        <Property name="HasCategoryOverride" value="False" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="HasColourOverride" value="False" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="False" />
        <Property name="PrefixTitleText" value="" />
        <Property name="BlockPinning" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="None" />
        <Property name="IconStyle" value="Default" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions" />
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="1" />
              <Property name="DebugText" value="" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceSetCurrentMission.xml">
              <Property name="MissionID" value="" />
              <Property name="Silent" value="False" />
              <Property name="DebugText" value="" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
              <Property name="Category" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="Time" value="0" />
              <Property name="Message" value="" />
              <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="ATLAS_CORE_ACTIVATE" />
              </Property>
              <Property name="OSDTime" value="8" />
              <Property name="OSDMessage" value="TEXT_DISS_S1_OSD" />
              <Property name="OSDMessageSubtitle" value="" />
              <Property name="OSDMessageColour" value="Colour.xml">
                <Property name="R" value="0.086" />
                <Property name="G" value="0.68" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="OSDMessageStyle" value="Standard" />
              <Property name="OSDUseMissionIcon" value="True" />
              <Property name="DisableIcon" value="False" />
              <Property name="DisableTitlePrefix" value="False" />
              <Property name="UseConditionsForTextFormatting" />
              <Property name="DebugText" value="" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
              <Property name="Table" value="GcScanEventTableType.xml">
                <Property name="ScanTable" value="Tutorial" />
              </Property>
              <Property name="Participant" value="GcPlayerMissionParticipantType.xml">
                <Property name="ParticipantType" value="None" />
              </Property>
              <Property name="Event" value="SE_DISSONANT" />
              <Property name="Time" value="0" />
              <Property name="DoAerialScan" value="False" />
              <Property name="AllowOtherPlayersBase" value="False" />
              <Property name="IgnoreIfAlreadyActive" value="False" />
              <Property name="DebugText" value="" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="8" />
              <Property name="DebugText" value="" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceGroup.xml">
              <Property name="Silent" value="True" />
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint.xml">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="" />
              <Property name="ObjectiveTipID" value="" />
              <Property name="HasCategoryOverride" value="False" />
              <Property name="OverrideCategory" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="False" />
              <Property name="ColourOverride" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PrefixTitle" value="False" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="False" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AllFalse" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="False" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                <Property name="HasCustomNotifyTimer" value="False" />
                <Property name="NotifyDisplayTime" value="20" />
                <Property name="NotifyPauseTime" value="30" />
              </Property>
              <Property name="Conditions" />
              <Property name="Consequences" />
              <Property name="Stages">

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_DISS_S1_TIP" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionIsScanEventLocal.xml">
                        <Property name="Event" value="SE_DISSONANT" />
                        <Property name="RequiresFullFireteam" value="False" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>
      
                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait.xml">
                    <Property name="Time" value="1" />
                    <Property name="DebugText" value="" />
                    <Property name="SuppressMessages" value="False" />
                    <Property name="MultiplyTimeBySeasonValue" value="False" />
                  </Property>
                </Property>
      
              </Property>
            </Property>
          </Property>

        </Property>
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="False" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="DebugText" value="" />
        <Property name="ObjectiveID" value="TEXT_DISS_S1_OBJ" />
        <Property name="ObjectiveTipID" value="TEXT_DISS_S2_DESC" />
        <Property name="HasCategoryOverride" value="False" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="HasColourOverride" value="False" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="False" />
        <Property name="PrefixTitleText" value="" />
        <Property name="BlockPinning" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="None" />
        <Property name="IconStyle" value="Default" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions" />
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="1" />
              <Property name="DebugText" value="" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceGroup.xml">
              <Property name="Silent" value="True" />
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint.xml">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="" />
              <Property name="ObjectiveTipID" value="" />
              <Property name="HasCategoryOverride" value="False" />
              <Property name="OverrideCategory" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="False" />
              <Property name="ColourOverride" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PrefixTitle" value="False" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="False" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AllFalse" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="False" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                <Property name="HasCustomNotifyTimer" value="False" />
                <Property name="NotifyDisplayTime" value="20" />
                <Property name="NotifyPauseTime" value="30" />
              </Property>
              <Property name="Conditions" />
              <Property name="Consequences" />
              <Property name="Stages">

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGetToScanEvent.xml">
                    <Property name="Message" value="TEXT_DISS_S2_TIP" />
                    <Property name="GalaxyMapMessage" value="" />
                    <Property name="Event" value="SE_DISSONANT" />
                    <Property name="Distance" value="30" />
                    <Property name="EndEventWhenReached" value="True" />
                    <Property name="Timeout" value="0" />
                    <Property name="DistanceTimeout" value="False" />
                    <Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
                    <Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
                      <Property name="ScanEventGPSHint" value="None" />
                    </Property>
                    <Property name="CanFormatObjectives" value="False" />
                    <Property name="SurveyInactiveHint" value="" />
                    <Property name="SurveySwapHint" value="" />
                    <Property name="SurveyHint" value="" />
                    <Property name="SurveyVehicleHint" value="" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>
      
              </Property>
            </Property>
          </Property>

        </Property>
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="1" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
        <Property name="MissionUpdateMessage" value="End" />
        <Property name="CustomMessageLocID" value="" />
        <Property name="CustomObjectiveLocID" value="TEXT_DISS_S1_OBJ" />
        <Property name="SetMissionSelected" value="False" />
        <Property name="WaitForMessageOver" value="True" />
        <Property name="ShowChangeMissionNotify" value="False" />
        <Property name="PlayMusicSting" value="None" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

  </Property>
  <Property name="ForcesPageHint" value="False" />
  <Property name="ForcesBuildMenuHint" value="False" />
  <Property name="IsProceduralAllowed" value="False" />
  <Property name="IsRecurring" value="False" />
  <Property name="IsLegacy" value="False" />
  <Property name="BlocksPinning" value="False" />
  <Property name="CanRenounce" value="True" />
  <Property name="UseCommunityMissionForLog" value="" />
  <Property name="TelemetryUpload" value="False" />
  <Property name="UseSeasonTitleOverride" value="False" />
</Property>
]]



----------------------------------------------------------------------------------------------------
-- new main mission
----------------------------------------------------------------------------------------------------

PROPERTY_MISSION_ADVANCED =
[[
<Property value="GcGenericMissionSequence.xml">
  <Property name="MissionID" value="M_ADVANCED" />
  <Property name="MissionClass" value="Secondary" />
  <Property name="MissionIsCritical" value="False" />
  <Property name="MissionObjective" value="" />
  <Property name="MissionTitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_MAIN_TITLE" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_MAIN_SUB" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_MAIN_DESC" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescSwitchOverride" value="" />
  <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="UseScanEventDetailsInLogInfo" value="True" />
  <Property name="MissionIcon" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/OTHER/MISSION.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SHIP.ON.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SHIP.OFF.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionPriority" value="0" />
  <Property name="MissionCategory" value="GcMissionCategory.xml">
    <Property name="MissionCategory" value="Mission" />
  </Property>
  <Property name="MissionPageHint" value="GcMissionPageHint.xml">
    <Property name="MissionPageHint" value="None" />
  </Property>
  <Property name="MissionPageLocID" value="" />
  <Property name="MissionBuildMenuHint" value="" />
  <Property name="MissionHasColourOverride" value="False" />
  <Property name="MissionColourOverride" value="Colour.xml">
    <Property name="R" value="1" />
    <Property name="G" value="1" />
    <Property name="B" value="1" />
    <Property name="A" value="1" />
  </Property>
  <Property name="BeginCheckFrequency" value="1" />
  <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
    <Property name="PrimarySubstances" />
    <Property name="SecondarySubstances" />
    <Property name="PrimaryProducts" />
    <Property name="SecondaryProducts" />
  </Property>
  <Property name="PrefixTitle" value="False" />
  <Property name="NextMissionHint" value="" />
  <Property name="MessageComplete" value="Never" />
  <Property name="MessageStart" value="Never" />
  <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
    <Property name="Type" value="GcMissionType.xml">
      <Property name="MissionType" value="SpaceCombat" />
    </Property>
    <Property name="Difficulty" value="GcMissionDifficulty.xml">
      <Property name="MissionDifficulty" value="Normal" />
    </Property>
    <Property name="MinRank" value="0" />
    <Property name="CloseMissionGiver" value="False" />
    <Property name="IsGuildShopMission" value="False" />
    <Property name="IsPlanetProcMission" value="False" />
    <Property name="IsMultiplayerEventMission" value="False" />
    <Property name="RewardPenaltyOnAbandon" value="" />
    <Property name="Faction" />
    <Property name="Weighting" value="100" />
    <Property name="IgnoreCalculatedObjective" value="False" />
    <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
    <Property name="DefaultItemInitialWarpScanEvents" />
    <Property name="DefaultItemTypeForInitialWarp" value="None" />
    <Property name="BasePartBlueprints" />
  </Property>
  <Property name="AutoStart" value="None" />
  <Property name="RestartOnCompletion" value="False" />
  <Property name="CancelSetsComplete" value="False" />
  <Property name="Dialog" value="GcAlienPuzzleTable.xml">
    <Property name="Table">

      <Property value="GcAlienPuzzleEntry.xml">
        <Property name="ProgressionIndex" value="-1" />
        <Property name="MinProgressionForSelection" value="0" />
        <Property name="Id" value="I_COMMS_1" />
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="Type" value="GcInteractionType.xml">
          <Property name="InteractionType" value="None" />
        </Property>
        <Property name="Category" value="GcAlienPuzzleCategory.xml">
          <Property name="AlienPuzzleCategory" value="Default" />
        </Property>
        <Property name="AdditionalOptions" value="None" />
        <Property name="Title" value="TEXT_MAIN_I0_LABEL1" />
        <Property name="Text" value="" />
        <Property name="TextAlien" value="TEXT_MAIN_I0_STORY1" />
        <Property name="TranslateAlienText" value="False" />
        <Property name="TranslationBrackets" value="False" />
        <Property name="ProgressiveDialogue" value="True" />
        <Property name="RequiresScanEvent" value="" />
        <Property name="Options">
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="TEXT_MAIN_I0_OPTION1" />
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
            <Property name="NextInteraction" value="I_COMMS_2" />
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
        <Property name="UseTitleOverrideInLabel" value="True" />
        <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
      </Property>

      <Property value="GcAlienPuzzleEntry.xml">
        <Property name="ProgressionIndex" value="-1" />
        <Property name="MinProgressionForSelection" value="0" />
        <Property name="Id" value="I_COMMS_2" />
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="Type" value="GcInteractionType.xml">
          <Property name="InteractionType" value="None" />
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
        <Property name="ProgressiveDialogue" value="True" />
        <Property name="RequiresScanEvent" value="" />
        <Property name="Options">
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="TEXT_MAIN_I0_OPTION2" />
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
        <Property name="AdditionalText" />
        <Property name="AdditionalTextAlien" />
        <Property name="Mood" value="GcAlienMood.xml">
          <Property name="Mood" value="Neutral" />
        </Property>
        <Property name="Prop" value="GcNPCPropType.xml">
          <Property name="NPCProp" value="DontCare" />
        </Property>
        <Property name="AdvancedInteractionFlow">
          <Property value="GcPuzzleTextFlow.xml">
            <Property name="Text" value="TEXT_MAIN_I0_STORY2" />
            <Property name="IsAlien" value="True" />
            <Property name="Title" value="TEXT_MAIN_I0_LABEL2" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="TranslateAlienTextOverride" value="None" />
            <Property name="BracketsOverride" value="None" />
            <Property name="AlienLanguageOverride" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="ShowHologram" value="False" />
          </Property>
          <Property value="GcPuzzleTextFlow.xml">
            <Property name="Text" value="TEXT_MAIN_I0_STORY3" />
            <Property name="IsAlien" value="True" />
            <Property name="Title" value="TEXT_MAIN_I0_LABEL1" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="TranslateAlienTextOverride" value="None" />
            <Property name="BracketsOverride" value="None" />
            <Property name="AlienLanguageOverride" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="ShowHologram" value="False" />
          </Property>
          <Property value="GcPuzzleTextFlow.xml">
            <Property name="Text" value="TEXT_MAIN_I0_STORY4" />
            <Property name="IsAlien" value="False" />
            <Property name="Title" value="" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="TranslateAlienTextOverride" value="None" />
            <Property name="BracketsOverride" value="None" />
            <Property name="AlienLanguageOverride" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="ShowHologram" value="False" />
          </Property>
        </Property>
        <Property name="PersistancyBufferOverride" value="None" />
        <Property name="CustomFreighterTextIndex" value="-1" />
        <Property name="RadialInteraction" value="False" />
        <Property name="UseTitleOverrideInLabel" value="True" />
        <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
      </Property>

      <Property value="GcAlienPuzzleEntry.xml">
        <Property name="ProgressionIndex" value="-1" />
        <Property name="MinProgressionForSelection" value="0" />
        <Property name="Id" value="I_HESPERUS_1" />
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="Type" value="GcInteractionType.xml">
          <Property name="InteractionType" value="None" />
        </Property>
        <Property name="Category" value="GcAlienPuzzleCategory.xml">
          <Property name="AlienPuzzleCategory" value="Default" />
        </Property>
        <Property name="AdditionalOptions" value="None" />
        <Property name="Title" value="TEXT_MAIN_I1_LABEL" />
        <Property name="Text" value="" />
        <Property name="TextAlien" value="TEXT_MAIN_I1_STORY1" />
        <Property name="TranslateAlienText" value="False" />
        <Property name="TranslationBrackets" value="False" />
        <Property name="ProgressiveDialogue" value="True" />
        <Property name="RequiresScanEvent" value="" />
        <Property name="Options">
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="TEXT_MAIN_I1_OPTION1" />
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
            <Property name="NextInteraction" value="I_HESPERUS_2" />
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
        <Property name="UseTitleOverrideInLabel" value="True" />
        <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
      </Property>

      <Property value="GcAlienPuzzleEntry.xml">
        <Property name="ProgressionIndex" value="-1" />
        <Property name="MinProgressionForSelection" value="0" />
        <Property name="Id" value="I_HESPERUS_2" />
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="Type" value="GcInteractionType.xml">
          <Property name="InteractionType" value="None" />
        </Property>
        <Property name="Category" value="GcAlienPuzzleCategory.xml">
          <Property name="AlienPuzzleCategory" value="Default" />
        </Property>
        <Property name="AdditionalOptions" value="None" />
        <Property name="Title" value="TEXT_MAIN_I1_LABEL" />
        <Property name="Text" value="" />
        <Property name="TextAlien" value="TEXT_MAIN_I1_STORY2" />
        <Property name="TranslateAlienText" value="False" />
        <Property name="TranslationBrackets" value="False" />
        <Property name="ProgressiveDialogue" value="True" />
        <Property name="RequiresScanEvent" value="" />
        <Property name="Options">
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="TEXT_MAIN_I1_OPTION2" />
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
            <Property name="NextInteraction" value="I_HESPERUS_3" />
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
        <Property name="UseTitleOverrideInLabel" value="True" />
        <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
      </Property>

      <Property value="GcAlienPuzzleEntry.xml">
        <Property name="ProgressionIndex" value="-1" />
        <Property name="MinProgressionForSelection" value="0" />
        <Property name="Id" value="I_HESPERUS_3" />
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="Type" value="GcInteractionType.xml">
          <Property name="InteractionType" value="None" />
        </Property>
        <Property name="Category" value="GcAlienPuzzleCategory.xml">
          <Property name="AlienPuzzleCategory" value="Default" />
        </Property>
        <Property name="AdditionalOptions" value="None" />
        <Property name="Title" value="TEXT_MAIN_I1_LABEL" />
        <Property name="Text" value="" />
        <Property name="TextAlien" value="TEXT_MAIN_I1_STORY3" />
        <Property name="TranslateAlienText" value="False" />
        <Property name="TranslationBrackets" value="False" />
        <Property name="ProgressiveDialogue" value="True" />
        <Property name="RequiresScanEvent" value="" />
        <Property name="Options">
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="TEXT_MAIN_I1_OPTION3" />
            <Property name="Text" value="TEXT_MAIN_I1_STORY4" />
            <Property name="IsAlien" value="False" />
            <Property name="Cost" value="" />
            <Property name="Rewards">
              <Property value="NMSString0x10.xml">
                <Property name="Value" value="R_BLUEPRINT" />
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
        <Property name="UseTitleOverrideInLabel" value="True" />
        <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
      </Property>

      <Property value="GcAlienPuzzleEntry.xml">
        <Property name="ProgressionIndex" value="-1" />
        <Property name="MinProgressionForSelection" value="0" />
        <Property name="Id" value="I_CRASH" />
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="Type" value="GcInteractionType.xml">
          <Property name="InteractionType" value="GlitchyStoryBox" />
        </Property>
        <Property name="Category" value="GcAlienPuzzleCategory.xml">
          <Property name="AlienPuzzleCategory" value="Default" />
        </Property>
        <Property name="AdditionalOptions" value="None" />
        <Property name="Title" value="TEXT_MAIN_I2_LABEL" />
        <Property name="Text" value="" />
        <Property name="TextAlien" value="" />
        <Property name="TranslateAlienText" value="False" />
        <Property name="TranslationBrackets" value="False" />
        <Property name="ProgressiveDialogue" value="True" />
        <Property name="RequiresScanEvent" value="" />
        <Property name="Options">
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="TEXT_MAIN_I2_OPTION" />
            <Property name="Text" value="TEXT_MAIN_I2_STORY5" />
            <Property name="IsAlien" value="False" />
            <Property name="Cost" value="" />
            <Property name="Rewards">
              <Property value="NMSString0x10.xml">
                <Property name="Value" value="R_FIRSTTOKEN" />
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
            <Property name="SelectedOnBackOut" value="True" />
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
        <Property name="AdvancedInteractionFlow">
          <Property value="GcPuzzleTextFlow.xml">
            <Property name="Text" value="TEXT_MAIN_I2_STORY1" />
            <Property name="IsAlien" value="False" />
            <Property name="Title" value="" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="TranslateAlienTextOverride" value="None" />
            <Property name="BracketsOverride" value="None" />
            <Property name="AlienLanguageOverride" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="ShowHologram" value="True" />
          </Property>
          <Property value="GcPuzzleTextFlow.xml">
            <Property name="Text" value="TEXT_MAIN_I2_STORY2" />
            <Property name="IsAlien" value="True" />
            <Property name="Title" value="" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="TranslateAlienTextOverride" value="None" />
            <Property name="BracketsOverride" value="None" />
            <Property name="AlienLanguageOverride" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="ShowHologram" value="True" />
          </Property>
          <Property value="GcPuzzleTextFlow.xml">
            <Property name="Text" value="TEXT_MAIN_I2_STORY3" />
            <Property name="IsAlien" value="False" />
            <Property name="Title" value="" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="TranslateAlienTextOverride" value="None" />
            <Property name="BracketsOverride" value="None" />
            <Property name="AlienLanguageOverride" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="ShowHologram" value="True" />
          </Property>
          <Property value="GcPuzzleTextFlow.xml">
            <Property name="Text" value="TEXT_MAIN_I2_STORY4" />
            <Property name="IsAlien" value="False" />
            <Property name="Title" value="" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="TranslateAlienTextOverride" value="None" />
            <Property name="BracketsOverride" value="None" />
            <Property name="AlienLanguageOverride" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="ShowHologram" value="True" />
          </Property>
        </Property>
        <Property name="PersistancyBufferOverride" value="None" />
        <Property name="CustomFreighterTextIndex" value="-1" />
        <Property name="RadialInteraction" value="False" />
        <Property name="UseTitleOverrideInLabel" value="True" />
        <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
      </Property>

      <Property value="GcAlienPuzzleEntry.xml">
        <Property name="ProgressionIndex" value="-1" />
        <Property name="MinProgressionForSelection" value="0" />
        <Property name="Id" value="I_HESPERUS_8" />
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="Type" value="GcInteractionType.xml">
          <Property name="InteractionType" value="None" />
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
        <Property name="ProgressiveDialogue" value="True" />
        <Property name="RequiresScanEvent" value="" />
        <Property name="Options">
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="TEXT_MAIN_I3_OPTION" />
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
            <Property name="NextInteraction" value="I_HESPERUS_9" />
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
            <Property name="MarkInteractionComplete" value="False" />
            <Property name="NextInteraction" value="" />
            <Property name="SelectedOnBackOut" value="True" />
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
        <Property name="AdvancedInteractionFlow">
          <Property value="GcPuzzleTextFlow.xml">
            <Property name="Text" value="TEXT_MAIN_I3_STORY1" />
            <Property name="IsAlien" value="True" />
            <Property name="Title" value="TEXT_MAIN_I3_LABEL" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="TranslateAlienTextOverride" value="None" />
            <Property name="BracketsOverride" value="None" />
            <Property name="AlienLanguageOverride" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="ShowHologram" value="True" />
          </Property>
          <Property value="GcPuzzleTextFlow.xml">
            <Property name="Text" value="TEXT_MAIN_I3_STORY2" />
            <Property name="IsAlien" value="False" />
            <Property name="Title" value="" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="TranslateAlienTextOverride" value="None" />
            <Property name="BracketsOverride" value="None" />
            <Property name="AlienLanguageOverride" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="ShowHologram" value="True" />
          </Property>
        </Property>
        <Property name="PersistancyBufferOverride" value="None" />
        <Property name="CustomFreighterTextIndex" value="-1" />
        <Property name="RadialInteraction" value="False" />
        <Property name="UseTitleOverrideInLabel" value="True" />
        <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
      </Property>

      <Property value="GcAlienPuzzleEntry.xml">
        <Property name="ProgressionIndex" value="-1" />
        <Property name="MinProgressionForSelection" value="0" />
        <Property name="Id" value="I_HESPERUS_9" />
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="Type" value="GcInteractionType.xml">
          <Property name="InteractionType" value="None" />
        </Property>
        <Property name="Category" value="GcAlienPuzzleCategory.xml">
          <Property name="AlienPuzzleCategory" value="Default" />
        </Property>
        <Property name="AdditionalOptions" value="None" />
        <Property name="Title" value="TEXT_MAIN_I3_LABEL" />
        <Property name="Text" value="TEXT_MAIN_I3_STORY4" />
        <Property name="TextAlien" value="TEXT_MAIN_I3_STORY3" />
        <Property name="TranslateAlienText" value="False" />
        <Property name="TranslationBrackets" value="False" />
        <Property name="ProgressiveDialogue" value="False" />
        <Property name="RequiresScanEvent" value="" />
        <Property name="Options">
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="TEXT_MAIN_I3_REWARD" />
            <Property name="Text" value="" />
            <Property name="IsAlien" value="False" />
            <Property name="Cost" value="" />
            <Property name="Rewards">
              <Property value="NMSString0x10.xml">
                <Property name="Value" value="R_SHIPTREE" />
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
            <Property name="SelectedOnBackOut" value="True" />
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
        <Property name="UseTitleOverrideInLabel" value="True" />
        <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
      </Property>

    </Property>
  </Property>
  <Property name="ScanEvents">

    <Property value="GcScanEventData.xml">
      <Property name="Name" value="SE_CRASH" />
      <Property name="ForceInteraction" value="I_CRASH" />
      <Property name="ForceInteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="GlitchyStoryBox" />
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
      <Property name="ClearForcedInteractionOnCompletion" value="True" />
      <Property name="BuildingPreventionRadius" value="50" />
      <Property name="UseMissionTradingDataOverride" value="False" />
      <Property name="AlwaysShow" value="False" />
      <Property name="NeverShow" value="False" />
      <Property name="ShowOnlyIfSequenceTarget" value="False" />
      <Property name="PlanetLabelText" value="" />
      <Property name="SurveyDistance" value="600" />
      <Property name="SurveyDiscoveryOSDMessage" value="TEXT_MAIN_E2_TARGET" />
      <Property name="EventStartType" value="Special" />
      <Property name="EventEndType" value="Interact" />
      <Property name="EventPriority" value="Regular" />
      <Property name="CanEndFromOutsideMission" value="False" />
      <Property name="DisableMultiplayerSync" value="False" />
      <Property name="BlockStartedOnUseEvents" value="False" />
      <Property name="ReplaceEventIfAlreadyActive" value="False" />
      <Property name="BuildingLocation" value="RandomOnFarPlanet" />
      <Property name="BuildingType" value="BuildingClass" />
      <Property name="BuildingClass" value="GcBuildingClassification.xml">
        <Property name="BuildingClass" value="StoryGlitch" />
      </Property>
      <Property name="AllowFriendsBases" value="False" />
      <Property name="ForceWideRandom" value="False" />
      <Property name="MustFindSystem" value="False" />
      <Property name="AllowOverriddenBuildings" value="False" />
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
        <Property name="AllowUnsafeMatches" value="True" />
        <Property name="NeverAllowEmpty" value="True" />
        <Property name="NeverAllowAbandoned" value="True" />
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
        <Property name="AnyRGBBiome" value="True" />
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
        <Property name="AllowUnsafeMatches" value="True" />
        <Property name="NeverAllowEmpty" value="True" />
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
      <Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
      <Property name="MarkerLabel" value="TEXT_MAIN_E2_MARKER" />
      <Property name="MarkerIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/OTHER/MISSION.DDS" />
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
      <Property name="IconTime" value="6" />
      <Property name="TooltipTime" value="16" />
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

    <Property value="GcScanEventData.xml">
      <Property name="Name" value="SE_HESPERUS_1" />
      <Property name="ForceInteraction" value="I_HESPERUS_1" />
      <Property name="ForceInteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="ExoticExtra5" />
      </Property>
      <Property name="RequireInteractionRace" value="GcAlienRace.xml">
        <Property name="AlienRace" value="Exotics" />
      </Property>
      <Property name="OverrideInteractionRace" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="ForceBroken" value="False" />
      <Property name="ForceFixed" value="False" />
      <Property name="ForceOverridesAll" value="True" />
      <Property name="ForceOverrideEncounter" value="" />
      <Property name="IsCommunityPortalOverride" value="False" />
      <Property name="ClearForcedInteractionOnCompletion" value="True" />
      <Property name="BuildingPreventionRadius" value="50" />
      <Property name="UseMissionTradingDataOverride" value="False" />
      <Property name="AlwaysShow" value="False" />
      <Property name="NeverShow" value="False" />
      <Property name="ShowOnlyIfSequenceTarget" value="False" />
      <Property name="PlanetLabelText" value="" />
      <Property name="SurveyDistance" value="0" />
      <Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD" />
      <Property name="EventStartType" value="Special" />
      <Property name="EventEndType" value="Interact" />
      <Property name="EventPriority" value="Regular" />
      <Property name="CanEndFromOutsideMission" value="False" />
      <Property name="DisableMultiplayerSync" value="False" />
      <Property name="BlockStartedOnUseEvents" value="False" />
      <Property name="ReplaceEventIfAlreadyActive" value="False" />
      <Property name="BuildingLocation" value="Nearest" />
      <Property name="BuildingType" value="Nexus" />
      <Property name="BuildingClass" value="GcBuildingClassification.xml">
        <Property name="BuildingClass" value="None" />
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
      <Property name="MarkerLabel" value="TEXT_MAIN_I3_LABEL" />
      <Property name="MarkerIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/OTHER/MISSION.DDS" />
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

    <Property value="GcScanEventData.xml">
      <Property name="Name" value="SE_HESPERUS_2" />
      <Property name="ForceInteraction" value="I_HESPERUS_8" />
      <Property name="ForceInteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="ExoticExtra5" />
      </Property>
      <Property name="RequireInteractionRace" value="GcAlienRace.xml">
        <Property name="AlienRace" value="Exotics" />
      </Property>
      <Property name="OverrideInteractionRace" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="ForceBroken" value="False" />
      <Property name="ForceFixed" value="False" />
      <Property name="ForceOverridesAll" value="True" />
      <Property name="ForceOverrideEncounter" value="" />
      <Property name="IsCommunityPortalOverride" value="False" />
      <Property name="ClearForcedInteractionOnCompletion" value="True" />
      <Property name="BuildingPreventionRadius" value="50" />
      <Property name="UseMissionTradingDataOverride" value="False" />
      <Property name="AlwaysShow" value="False" />
      <Property name="NeverShow" value="False" />
      <Property name="ShowOnlyIfSequenceTarget" value="False" />
      <Property name="PlanetLabelText" value="" />
      <Property name="SurveyDistance" value="0" />
      <Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD" />
      <Property name="EventStartType" value="Special" />
      <Property name="EventEndType" value="Interact" />
      <Property name="EventPriority" value="Regular" />
      <Property name="CanEndFromOutsideMission" value="False" />
      <Property name="DisableMultiplayerSync" value="False" />
      <Property name="BlockStartedOnUseEvents" value="False" />
      <Property name="ReplaceEventIfAlreadyActive" value="False" />
      <Property name="BuildingLocation" value="Nearest" />
      <Property name="BuildingType" value="Nexus" />
      <Property name="BuildingClass" value="GcBuildingClassification.xml">
        <Property name="BuildingClass" value="None" />
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
      <Property name="MarkerLabel" value="TEXT_MAIN_I3_LABEL" />
      <Property name="MarkerIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/OTHER/MISSION.DDS" />
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

  </Property>
  <Property name="Rewards">

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_BLUEPRINT" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardOSDMessage.xml">
              <Property name="Time" value="0" />
              <Property name="Message" value="" />
              <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_31" />
              </Property>
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="MessageColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="0.141" />
                <Property name="B" value="0.141" />
                <Property name="A" value="0.8" />
              </Property>
              <Property name="UseTimedMessage" value="False" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificTech.xml">
              <Property name="TechId" value="TECH_SCANNER" />
              <Property name="AutoPin" value="False" />
              <Property name="Silent" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_PLATING" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="StartMission" />
            <Property name="Reward" value="GcRewardMissionSeeded.xml">
              <Property name="Mission" value="M_PLATING" />
              <Property name="MissionNoGroundCombat" value="" />
              <Property name="MissionNoSpaceCombat" value="" />
              <Property name="InheritActiveMultiplayerMissionSeed" value="False" />
              <Property name="SelectMissionAsLocalMissionBoard" value="False" />
              <Property name="ForceUseConversationSeed" value="False" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_FRAGMENT" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="StartMission" />
            <Property name="Reward" value="GcRewardMissionSeeded.xml">
              <Property name="Mission" value="M_FRAGMENT" />
              <Property name="MissionNoGroundCombat" value="" />
              <Property name="MissionNoSpaceCombat" value="" />
              <Property name="InheritActiveMultiplayerMissionSeed" value="False" />
              <Property name="SelectMissionAsLocalMissionBoard" value="False" />
              <Property name="ForceUseConversationSeed" value="False" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_CIRCUIT" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="StartMission" />
            <Property name="Reward" value="GcRewardMissionSeeded.xml">
              <Property name="Mission" value="M_CIRCUIT" />
              <Property name="MissionNoGroundCombat" value="" />
              <Property name="MissionNoSpaceCombat" value="" />
              <Property name="InheritActiveMultiplayerMissionSeed" value="False" />
              <Property name="SelectMissionAsLocalMissionBoard" value="False" />
              <Property name="ForceUseConversationSeed" value="False" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_FIRSTTOKEN" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardOSDMessage.xml">
              <Property name="Time" value="0" />
              <Property name="Message" value="" />
              <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_31" />
              </Property>
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="MessageColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="0.141" />
                <Property name="B" value="0.141" />
                <Property name="A" value="0.8" />
              </Property>
              <Property name="UseTimedMessage" value="False" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="ITEM_TOKEN" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="True" />
              <Property name="ForceSpecialMessage" value="True" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

  </Property>
  <Property name="Costs">

    <Property value="GcCostTableEntry.xml">
      <Property name="Id" value="C_SCANNER" />
      <Property name="DisplayCost" value="True" />
      <Property name="DontCharge" value="False" />
      <Property name="HideOptionAndDisplayCostOnly" value="False" />
      <Property name="DisplayOnlyCostIfCantAfford" value="False" />
      <Property name="HideCostStringIfCanAfford" value="False" />
      <Property name="RemoveOptionIfCantAfford" value="False" />
      <Property name="InvertCanAffordOutcome" value="False" />
      <Property name="MustAffordInCreative" value="False" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
      <Property name="Cost" value="GcCostInstalledTech.xml">
        <Property name="Id" value="TECH_SCANNER" />
        <Property name="InventoryToCheck" value="Weapon" />
      </Property>
    </Property>

  </Property>
  <Property name="TradingDataOverride" value="GcTradeData.xml">
    <Property name="AlwaysPresentProducts" />
    <Property name="AlwaysPresentSubstances" />
    <Property name="OptionalProducts" />
    <Property name="OptionalSubstances" />
    <Property name="MinItemsForSale" value="5" />
    <Property name="MaxItemsForSale" value="15" />
    <Property name="PercentageOfItemsAreProducts" value="0.3" />
    <Property name="BuyPriceIncreaseRedThreshold" value="20" />
    <Property name="BuyPriceDecreaseGreenThreshold" value="-10" />
    <Property name="SellPriceIncreaseGreenThreshold" value="10" />
    <Property name="SellPriceDecreaseRedThreshold" value="-20" />
    <Property name="ShowSeasonRewards" value="False" />
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
  <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="StartIsCancel" value="False" />
  <Property name="StartingConditions" />
  <Property name="CancelingConditions" />
  <Property name="FinalStageVersions" />
  <Property name="Stages">

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="1" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
        <Property name="Message" value="" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyTrue" />
        </Property>
        <Property name="Conditions">
          <Property value="GcMissionConditionLocation.xml">
            <Property name="MissionPlayerLocation" value="InShipInSpace" />
          </Property>
        </Property>
        <Property name="AllowedToFormatObjectives" value="True" />
        <Property name="ForceAllowMissionRestart" value="False" />
        <Property name="ForceAllowMissionRestartEvent" value="" />
        <Property name="DebugText" value="" />
        <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
          <Property name="MissionMarkup" value="None" />
        </Property>
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
        <Property name="Message" value="" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyTrue" />
        </Property>
        <Property name="Conditions">
          <Property value="GcMissionConditionShipEngineStatus.xml">
            <Property name="EngineStatus" value="Pulsing" />
          </Property>
        </Property>
        <Property name="AllowedToFormatObjectives" value="True" />
        <Property name="ForceAllowMissionRestart" value="False" />
        <Property name="ForceAllowMissionRestartEvent" value="" />
        <Property name="DebugText" value="" />
        <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
          <Property name="MissionMarkup" value="None" />
        </Property>
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="10" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
        <Property name="Message" value="" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyTrue" />
        </Property>
        <Property name="Conditions">
          <Property value="GcMissionConditionShipEngineStatus.xml">
            <Property name="EngineStatus" value="Pulsing" />
          </Property>
        </Property>
        <Property name="AllowedToFormatObjectives" value="True" />
        <Property name="ForceAllowMissionRestart" value="False" />
        <Property name="ForceAllowMissionRestartEvent" value="" />
        <Property name="DebugText" value="" />
        <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
          <Property name="MissionMarkup" value="None" />
        </Property>
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceAudioEvent.xml">
        <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_06_LP" />
        </Property>
        <Property name="UseFrontendAudioObject" value="False" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
        <Property name="Category" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="Time" value="0" />
        <Property name="Message" value="" />
        <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
        <Property name="OSDTime" value="8" />
        <Property name="OSDMessage" value="TEXT_MAIN_S0_OSD" />
        <Property name="OSDMessageSubtitle" value="" />
        <Property name="OSDMessageColour" value="Colour.xml">
          <Property name="R" value="0.314" />
          <Property name="G" value="0.196" />
          <Property name="B" value="0.804" />
          <Property name="A" value="1" />
        </Property>
        <Property name="OSDMessageStyle" value="Standard" />
        <Property name="OSDUseMissionIcon" value="True" />
        <Property name="DisableIcon" value="True" />
        <Property name="DisableTitlePrefix" value="False" />
        <Property name="UseConditionsForTextFormatting" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="8" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceCommunicator.xml">
        <Property name="Message" value="" />
        <Property name="VRMessage" value="" />
        <Property name="OptionalWaitMessage" value="" />
        <Property name="OSDMessage" value="" />
        <Property name="Comms" value="GcPlayerCommunicatorMessage.xml">
          <Property name="Dialog" value="I_COMMS_1" />
          <Property name="ShowHologram" value="False" />
          <Property name="CommunicatorType" value="Generic" />
          <Property name="RaceOverride" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="ShipHUDOverride" value="TEXT_MAIN_S0_HUD" />
          <Property name="HailAudioOverride" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
        </Property>
        <Property name="AutoOpen" value="True" />
        <Property name="UsePulseEncounterObjectAsAttachment" value="False" />
        <Property name="MinTimeInSpaceBeforeCall" value="0" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceAudioEvent.xml">
        <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_06_LP_STOP" />
        </Property>
        <Property name="UseFrontendAudioObject" value="False" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="3" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="False" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="DebugText" value="" />
        <Property name="ObjectiveID" value="TEXT_MAIN_S1_OBJ" />
        <Property name="ObjectiveTipID" value="TEXT_MAIN_S1_DESC1" />
        <Property name="HasCategoryOverride" value="False" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="HasColourOverride" value="False" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="False" />
        <Property name="PrefixTitleText" value="" />
        <Property name="BlockPinning" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="None" />
        <Property name="IconStyle" value="Default" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions" />
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
              <Property name="MissionUpdateMessage" value="Start" />
              <Property name="CustomMessageLocID" value="" />
              <Property name="CustomObjectiveLocID" value="" />
              <Property name="SetMissionSelected" value="True" />
              <Property name="WaitForMessageOver" value="True" />
              <Property name="ShowChangeMissionNotify" value="False" />
              <Property name="PlayMusicSting" value="Corrupted" />
              <Property name="DebugText" value="" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="1" />
              <Property name="DebugText" value="" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceGroup.xml">
              <Property name="Silent" value="True" />
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint.xml">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="" />
              <Property name="ObjectiveTipID" value="" />
              <Property name="HasCategoryOverride" value="False" />
              <Property name="OverrideCategory" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="False" />
              <Property name="ColourOverride" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PrefixTitle" value="False" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="False" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AllFalse" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="False" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                <Property name="HasCustomNotifyTimer" value="False" />
                <Property name="NotifyDisplayTime" value="20" />
                <Property name="NotifyPauseTime" value="30" />
              </Property>
              <Property name="Conditions" />
              <Property name="Consequences" />
              <Property name="Stages">

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_MAIN_S1_TIP1" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionLocation.xml">
                        <Property name="MissionPlayerLocation" value="InNexus" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait.xml">
                    <Property name="Time" value="1" />
                    <Property name="DebugText" value="" />
                    <Property name="SuppressMessages" value="False" />
                    <Property name="MultiplyTimeBySeasonValue" value="False" />
                  </Property>
                </Property>

                 <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
                    <Property name="Table" value="GcScanEventTableType.xml">
                      <Property name="ScanTable" value="Tutorial" />
                    </Property>
                    <Property name="Participant" value="GcPlayerMissionParticipantType.xml">
                      <Property name="ParticipantType" value="Primary" />
                    </Property>
                    <Property name="Event" value="SE_HESPERUS_1" />
                    <Property name="Time" value="0" />
                    <Property name="DoAerialScan" value="False" />
                    <Property name="AllowOtherPlayersBase" value="False" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForScanEvent.xml">
                    <Property name="Message" value="TEXT_MAIN_S1_TIP1" />
                    <Property name="GalaxyMapMessage" value="UI_SCANEVENT_GOTO_NEXUS" />
                    <Property name="NexusMessage" value="" />
                    <Property name="Event" value="SE_HESPERUS_1" />
                    <Property name="Timeout" value="0" />
                    <Property name="DistanceTimeout" value="False" />
                    <Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
                    <Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
                      <Property name="ScanEventGPSHint" value="None" />
                    </Property>
                    <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                    <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                    <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                    <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_MAIN_S1_TIP1" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionTechnologyKnown.xml">
                        <Property name="Technology" value="TECH_SCANNER" />
                        <Property name="DependentOnSeasonMilestone" value="False" />
                        <Property name="TakeTechFromSeasonData" value="False" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>
               
              </Property>
            </Property>
          </Property>

        </Property>
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceEndScanEvent.xml">
        <Property name="Event" value="SE_HESPERUS_1" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceReward.xml">
        <Property name="Message" value="" />
        <Property name="Reward" value="R_PLATING" />
        <Property name="DoMissionBoardOverride" value="False" />
        <Property name="Silent" value="True" />
        <Property name="RewardInventoryOverride" value="None" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceReward.xml">
        <Property name="Message" value="" />
        <Property name="Reward" value="R_FRAGMENT" />
        <Property name="DoMissionBoardOverride" value="False" />
        <Property name="Silent" value="True" />
        <Property name="RewardInventoryOverride" value="None" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceReward.xml">
        <Property name="Message" value="" />
        <Property name="Reward" value="R_CIRCUIT" />
        <Property name="DoMissionBoardOverride" value="False" />
        <Property name="Silent" value="True" />
        <Property name="RewardInventoryOverride" value="None" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceSetCurrentMission.xml">
        <Property name="MissionID" value="" />
        <Property name="Silent" value="False" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="1" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="False" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="DebugText" value="" />
        <Property name="ObjectiveID" value="TEXT_MAIN_S1_OBJ" />
        <Property name="ObjectiveTipID" value="TEXT_MAIN_S1_DESC2" />
        <Property name="HasCategoryOverride" value="False" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="HasColourOverride" value="False" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="False" />
        <Property name="PrefixTitleText" value="" />
        <Property name="BlockPinning" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="None" />
        <Property name="IconStyle" value="Default" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions" />
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceGroup.xml">
              <Property name="Silent" value="True" />
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint.xml">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="" />
              <Property name="ObjectiveTipID" value="" />
              <Property name="HasCategoryOverride" value="False" />
              <Property name="OverrideCategory" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="False" />
              <Property name="ColourOverride" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PrefixTitle" value="False" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="False" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AnyTrue" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="False" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                <Property name="HasCustomNotifyTimer" value="False" />
                <Property name="NotifyDisplayTime" value="20" />
                <Property name="NotifyPauseTime" value="30" />
              </Property>
              <Property name="Conditions">
                <Property value="GcMissionConditionHasTechnology.xml">
                  <Property name="Technology" value="TECH_SCANNER" />
                  <Property name="AllowPartiallyInstalled" value="False" />
                  <Property name="TeachIfNotKnown" value="False" />
                  <Property name="TakeTechFromSeasonData" value="False" />
                </Property>
              </Property>
              <Property name="Consequences" />
              <Property name="Stages">
      
                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_MAIN_S1_TIP2" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionHasTechnology.xml">
                        <Property name="Technology" value="TECH_SCANNER" />
                        <Property name="AllowPartiallyInstalled" value="False" />
                        <Property name="TeachIfNotKnown" value="False" />
                        <Property name="TakeTechFromSeasonData" value="False" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>
    
              </Property>
            </Property>
          </Property>

        </Property>
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="1" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
        <Property name="MissionUpdateMessage" value="End" />
        <Property name="CustomMessageLocID" value="" />
        <Property name="CustomObjectiveLocID" value="TEXT_MAIN_S1_OBJ" />
        <Property name="SetMissionSelected" value="False" />
        <Property name="WaitForMessageOver" value="True" />
        <Property name="ShowChangeMissionNotify" value="False" />
        <Property name="PlayMusicSting" value="None" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="1" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="False" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="DebugText" value="" />
        <Property name="ObjectiveID" value="TEXT_MAIN_S2_OBJ" />
        <Property name="ObjectiveTipID" value="TEXT_MAIN_S2_DESC" />
        <Property name="HasCategoryOverride" value="False" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="HasColourOverride" value="False" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="False" />
        <Property name="PrefixTitleText" value="" />
        <Property name="BlockPinning" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="None" />
        <Property name="IconStyle" value="Default" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions" />
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
              <Property name="MissionUpdateMessage" value="Start" />
              <Property name="CustomMessageLocID" value="" />
              <Property name="CustomObjectiveLocID" value="" />
              <Property name="SetMissionSelected" value="True" />
              <Property name="WaitForMessageOver" value="True" />
              <Property name="ShowChangeMissionNotify" value="False" />
              <Property name="PlayMusicSting" value="Corrupted" />
              <Property name="DebugText" value="" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="1" />
              <Property name="DebugText" value="" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceGroup.xml">
              <Property name="Silent" value="True" />
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint.xml">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="" />
              <Property name="ObjectiveTipID" value="" />
              <Property name="HasCategoryOverride" value="False" />
              <Property name="OverrideCategory" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="False" />
              <Property name="ColourOverride" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PrefixTitle" value="False" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="False" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AllFalse" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="False" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                <Property name="HasCustomNotifyTimer" value="False" />
                <Property name="NotifyDisplayTime" value="20" />
                <Property name="NotifyPauseTime" value="30" />
              </Property>
              <Property name="Conditions" />
              <Property name="Consequences" />
              <Property name="Stages">

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_MAIN_S2_TIP" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionLocation.xml">
                        <Property name="MissionPlayerLocation" value="InShipInSpace" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceScan.xml">
                    <Property name="Message" value="TEXT_MAIN_S2_TIP" />
                    <Property name="WaitTime" value="0" />
                    <Property name="BlockTimedScans" value="True" />
                    <Property name="ScanTypesToOverride">
                      <Property name="Tool" value="False" />
                      <Property name="Beacon" value="False" />
                      <Property name="RadioTower" value="False" />
                      <Property name="Observatory" value="False" />
                      <Property name="DistressSignal" value="False" />
                      <Property name="Waypoint" value="False" />
                      <Property name="Ship" value="False" />
                      <Property name="DebugPlanet" value="False" />
                      <Property name="DebugSpace" value="False" />
                      <Property name="VisualOnly" value="False" />
                      <Property name="VisualOnlyAerial" value="False" />
                    </Property>
                    <Property name="ScanOverrideData" value="" />
                    <Property name="RequiresMissionActive" value="True" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait.xml">
                    <Property name="Time" value="5" />
                    <Property name="DebugText" value="" />
                    <Property name="SuppressMessages" value="False" />
                    <Property name="MultiplyTimeBySeasonValue" value="False" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionIsCurrentMission.xml" />
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="False" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
                    <Property name="Category" value="GcMissionCategory.xml">
                      <Property name="MissionCategory" value="Mission" />
                    </Property>
                    <Property name="Time" value="0" />
                    <Property name="Message" value="" />
                    <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                      <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_28" />
                    </Property>
                    <Property name="OSDTime" value="8" />
                    <Property name="OSDMessage" value="TEXT_MAIN_E2_OSD" />
                    <Property name="OSDMessageSubtitle" value="" />
                    <Property name="OSDMessageColour" value="Colour.xml">
                      <Property name="R" value="0.314" />
                      <Property name="G" value="0.196" />
                      <Property name="B" value="0.804" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OSDMessageStyle" value="Standard" />
                    <Property name="OSDUseMissionIcon" value="True" />
                    <Property name="DisableIcon" value="False" />
                    <Property name="DisableTitlePrefix" value="False" />
                    <Property name="UseConditionsForTextFormatting" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>
                
                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
                    <Property name="Table" value="GcScanEventTableType.xml">
                      <Property name="ScanTable" value="Tutorial" />
                    </Property>
                    <Property name="Participant" value="GcPlayerMissionParticipantType.xml">
                      <Property name="ParticipantType" value="Secondary1" />
                    </Property>
                    <Property name="Event" value="SE_CRASH" />
                    <Property name="Time" value="0" />
                    <Property name="DoAerialScan" value="False" />
                    <Property name="AllowOtherPlayersBase" value="False" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_MAIN_E2_TIP1" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AllTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionIsScanEventOnCurrentPlanet.xml">
                        <Property name="Event" value="SE_CRASH" />
                        <Property name="AllowInShip" value="False" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGetToScanEvent.xml">
                    <Property name="Message" value="TEXT_MAIN_E2_TIP2" />
                    <Property name="GalaxyMapMessage" value="UI_SCANEVENT_GOTO_MAP" />
                    <Property name="Event" value="SE_CRASH" />
                    <Property name="Distance" value="20" />
                    <Property name="EndEventWhenReached" value="False" />
                    <Property name="Timeout" value="0" />
                    <Property name="DistanceTimeout" value="False" />
                    <Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
                    <Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
                      <Property name="ScanEventGPSHint" value="None" />
                    </Property>
                    <Property name="CanFormatObjectives" value="False" />
                    <Property name="SurveyInactiveHint" value="" />
                    <Property name="SurveySwapHint" value="" />
                    <Property name="SurveyHint" value="" />
                    <Property name="SurveyVehicleHint" value="" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGroup.xml">
                    <Property name="Silent" value="True" />
                    <Property name="Icon" value="TkTextureResource.xml">
                      <Property name="Filename" value="" />
                      <Property name="ResHandle" value="GcResource.xml">
                        <Property name="ResourceID" value="0" />
                      </Property>
                    </Property>
                    <Property name="PageHint" value="GcMissionPageHint.xml">
                      <Property name="MissionPageHint" value="None" />
                    </Property>
                    <Property name="PageDataLocID" value="" />
                    <Property name="BuildMenuHint" value="" />
                    <Property name="InventoryHint" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="ObjectiveID" value="" />
                    <Property name="ObjectiveTipID" value="" />
                    <Property name="HasCategoryOverride" value="False" />
                    <Property name="OverrideCategory" value="GcMissionCategory.xml">
                      <Property name="MissionCategory" value="Mission" />
                    </Property>
                    <Property name="HasColourOverride" value="False" />
                    <Property name="ColourOverride" value="Colour.xml">
                      <Property name="R" value="1" />
                      <Property name="G" value="1" />
                      <Property name="B" value="1" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="PrefixTitle" value="False" />
                    <Property name="PrefixTitleText" value="" />
                    <Property name="BlockPinning" value="False" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="HideFromLogIfConditionsMet" value="False" />
                    <Property name="RepeatLogic" value="None" />
                    <Property name="IconStyle" value="Default" />
                    <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                      <Property name="InputButton" value="None" />
                    </Property>
                    <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                      <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                      <Property name="FormattableObjective" value="" />
                      <Property name="FormattableObjectiveTip" value="" />
                    </Property>
                    <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                      <Property name="TargetMissionSurveyId" value="" />
                      <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                      <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                      <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                      <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                      <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
                    </Property>
                    <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                      <Property name="HasCustomNotifyTimer" value="False" />
                      <Property name="NotifyDisplayTime" value="20" />
                      <Property name="NotifyPauseTime" value="30" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionHasProduct.xml">
                        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                          <Property name="DefaultProductType" value="None" />
                        </Property>
                        <Property name="Product" value="ITEM_TOKEN" />
                        <Property name="Amount" value="1" />
                        <Property name="UseDefaultAmount" value="False" />
                        <Property name="SyncWithMissionFireteam" value="False" />
                        <Property name="ForceSearchFreighterAndChests" value="False" />
                        <Property name="SearchEveryShip" value="False" />
                        <Property name="SearchGrave" value="False" />
                        <Property name="SearchCookingIngredients" value="False" />
                        <Property name="TakeAmountFromSeasonData" value="False" />
                        <Property name="TakeIdFromSeasonData" value="False" />
                        <Property name="DependentOnSeasonMilestone" value="False" />
                        <Property name="UseAmountToAffordRecipe" value="" />
                        <Property name="TakeAffordRecipeFromSeasonData" value="False" />
                        <Property name="UseAffordRecipeForTextFormatting" value="False" />
                        <Property name="Purpose" value="GcItemNeedPurpose.xml">
                          <Property name="ItemPurpose" value="None" />
                        </Property>
                        <Property name="ForceInventoryHintAtAllTimes" value="False" />
                        <Property name="UseProductIconAsMissionIcon" value="False" />
                        <Property name="DoNotFormatText" value="False" />
                      </Property>
                    </Property>
                    <Property name="Consequences" />
                    <Property name="Stages">

                      <Property value="GcGenericMissionStage.xml">
                        <Property name="Versions" />
                        <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                          <Property name="Message" value="TEXT_MAIN_E2_TIP2" />
                          <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                            <Property name="ConditionTest" value="AnyTrue" />
                          </Property>
                          <Property name="Conditions">
                            <Property value="GcMissionConditionHasProduct.xml">
                              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                                <Property name="DefaultProductType" value="None" />
                              </Property>
                              <Property name="Product" value="ITEM_TOKEN" />
                              <Property name="Amount" value="1" />
                              <Property name="UseDefaultAmount" value="False" />
                              <Property name="SyncWithMissionFireteam" value="False" />
                              <Property name="ForceSearchFreighterAndChests" value="False" />
                              <Property name="SearchEveryShip" value="False" />
                              <Property name="SearchGrave" value="False" />
                              <Property name="SearchCookingIngredients" value="False" />
                              <Property name="TakeAmountFromSeasonData" value="False" />
                              <Property name="TakeIdFromSeasonData" value="False" />
                              <Property name="DependentOnSeasonMilestone" value="False" />
                              <Property name="UseAmountToAffordRecipe" value="" />
                              <Property name="TakeAffordRecipeFromSeasonData" value="False" />
                              <Property name="UseAffordRecipeForTextFormatting" value="False" />
                              <Property name="Purpose" value="GcItemNeedPurpose.xml">
                                <Property name="ItemPurpose" value="None" />
                              </Property>
                              <Property name="ForceInventoryHintAtAllTimes" value="False" />
                              <Property name="UseProductIconAsMissionIcon" value="False" />
                              <Property name="DoNotFormatText" value="False" />
                            </Property>
                          </Property>
                          <Property name="AllowedToFormatObjectives" value="True" />
                          <Property name="ForceAllowMissionRestart" value="False" />
                          <Property name="ForceAllowMissionRestartEvent" value="" />
                          <Property name="DebugText" value="" />
                          <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                            <Property name="MissionMarkup" value="None" />
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

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceEndScanEvent.xml">
        <Property name="Event" value="SE_CRASH" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="1" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
        <Property name="MissionUpdateMessage" value="End" />
        <Property name="CustomMessageLocID" value="" />
        <Property name="CustomObjectiveLocID" value="TEXT_MAIN_S2_OBJ" />
        <Property name="SetMissionSelected" value="False" />
        <Property name="WaitForMessageOver" value="True" />
        <Property name="ShowChangeMissionNotify" value="False" />
        <Property name="PlayMusicSting" value="None" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="1" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="False" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="DebugText" value="" />
        <Property name="ObjectiveID" value="TEXT_MAIN_S3_OBJ" />
        <Property name="ObjectiveTipID" value="TEXT_MAIN_S3_DESC1" />
        <Property name="HasCategoryOverride" value="False" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="HasColourOverride" value="False" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="False" />
        <Property name="PrefixTitleText" value="" />
        <Property name="BlockPinning" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="None" />
        <Property name="IconStyle" value="Default" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions" />
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
              <Property name="MissionUpdateMessage" value="Start" />
              <Property name="CustomMessageLocID" value="" />
              <Property name="CustomObjectiveLocID" value="" />
              <Property name="SetMissionSelected" value="True" />
              <Property name="WaitForMessageOver" value="True" />
              <Property name="ShowChangeMissionNotify" value="False" />
              <Property name="PlayMusicSting" value="Corrupted" />
              <Property name="DebugText" value="" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="1" />
              <Property name="DebugText" value="" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceGroup.xml">
              <Property name="Silent" value="True" />
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint.xml">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="" />
              <Property name="ObjectiveTipID" value="" />
              <Property name="HasCategoryOverride" value="False" />
              <Property name="OverrideCategory" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="False" />
              <Property name="ColourOverride" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PrefixTitle" value="False" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="False" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AllFalse" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="False" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                <Property name="HasCustomNotifyTimer" value="False" />
                <Property name="NotifyDisplayTime" value="20" />
                <Property name="NotifyPauseTime" value="30" />
              </Property>
              <Property name="Conditions" />
              <Property name="Consequences" />
              <Property name="Stages">

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_MAIN_S3_TIP" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionLocation.xml">
                        <Property name="MissionPlayerLocation" value="InNexus" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait.xml">
                    <Property name="Time" value="1" />
                    <Property name="DebugText" value="" />
                    <Property name="SuppressMessages" value="False" />
                    <Property name="MultiplyTimeBySeasonValue" value="False" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
                    <Property name="Table" value="GcScanEventTableType.xml">
                      <Property name="ScanTable" value="Tutorial" />
                    </Property>
                    <Property name="Participant" value="GcPlayerMissionParticipantType.xml">
                      <Property name="ParticipantType" value="Secondary2" />
                    </Property>
                    <Property name="Event" value="SE_HESPERUS_2" />
                    <Property name="Time" value="0" />
                    <Property name="DoAerialScan" value="False" />
                    <Property name="AllowOtherPlayersBase" value="False" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForScanEvent.xml">
                    <Property name="Message" value="TEXT_MAIN_S3_TIP" />
                    <Property name="GalaxyMapMessage" value="UI_SCANEVENT_GOTO_NEXUS" />
                    <Property name="NexusMessage" value="" />
                    <Property name="Event" value="SE_HESPERUS_2" />
                    <Property name="Timeout" value="0" />
                    <Property name="DistanceTimeout" value="False" />
                    <Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
                    <Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
                      <Property name="ScanEventGPSHint" value="None" />
                    </Property>
                    <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                    <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                    <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                    <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>
               
                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGroup.xml">
                    <Property name="Silent" value="True" />
                    <Property name="Icon" value="TkTextureResource.xml">
                      <Property name="Filename" value="" />
                      <Property name="ResHandle" value="GcResource.xml">
                        <Property name="ResourceID" value="0" />
                      </Property>
                    </Property>
                    <Property name="PageHint" value="GcMissionPageHint.xml">
                      <Property name="MissionPageHint" value="None" />
                    </Property>
                    <Property name="PageDataLocID" value="" />
                    <Property name="BuildMenuHint" value="" />
                    <Property name="InventoryHint" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="ObjectiveID" value="" />
                    <Property name="ObjectiveTipID" value="" />
                    <Property name="HasCategoryOverride" value="False" />
                    <Property name="OverrideCategory" value="GcMissionCategory.xml">
                      <Property name="MissionCategory" value="Mission" />
                    </Property>
                    <Property name="HasColourOverride" value="False" />
                    <Property name="ColourOverride" value="Colour.xml">
                      <Property name="R" value="1" />
                      <Property name="G" value="1" />
                      <Property name="B" value="1" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="PrefixTitle" value="False" />
                    <Property name="PrefixTitleText" value="" />
                    <Property name="BlockPinning" value="False" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="HideFromLogIfConditionsMet" value="False" />
                    <Property name="RepeatLogic" value="None" />
                    <Property name="IconStyle" value="Default" />
                    <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                      <Property name="InputButton" value="None" />
                    </Property>
                    <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                      <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                      <Property name="FormattableObjective" value="" />
                      <Property name="FormattableObjectiveTip" value="" />
                    </Property>
                    <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                      <Property name="TargetMissionSurveyId" value="" />
                      <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                      <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                      <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                      <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                      <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
                    </Property>
                    <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                      <Property name="HasCustomNotifyTimer" value="False" />
                      <Property name="NotifyDisplayTime" value="20" />
                      <Property name="NotifyPauseTime" value="30" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionTechnologyKnown.xml">
                        <Property name="Technology" value="SHIP_LIFESUP" />
                        <Property name="DependentOnSeasonMilestone" value="False" />
                        <Property name="TakeTechFromSeasonData" value="False" />
                      </Property>
                      <Property value="GcMissionConditionTechnologyKnown.xml">
                        <Property name="Technology" value="TECH_SHIELD" />
                        <Property name="DependentOnSeasonMilestone" value="False" />
                        <Property name="TakeTechFromSeasonData" value="False" />
                      </Property>
                      <Property value="GcMissionConditionTechnologyKnown.xml">
                        <Property name="Technology" value="TECH_COMPUTER" />
                        <Property name="DependentOnSeasonMilestone" value="False" />
                        <Property name="TakeTechFromSeasonData" value="False" />
                      </Property>
                      <Property value="GcMissionConditionTechnologyKnown.xml">
                        <Property name="Technology" value="TECH_WHITE" />
                        <Property name="DependentOnSeasonMilestone" value="False" />
                        <Property name="TakeTechFromSeasonData" value="False" />
                      </Property>
                      <Property value="GcMissionConditionTechnologyKnown.xml">
                        <Property name="Technology" value="TECH_GLOBE" />
                        <Property name="DependentOnSeasonMilestone" value="False" />
                        <Property name="TakeTechFromSeasonData" value="False" />
                      </Property>
                    </Property>
                    <Property name="Consequences" />
                    <Property name="Stages">

                      <Property value="GcGenericMissionStage.xml">
                        <Property name="Versions" />
                        <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                          <Property name="Message" value="TEXT_MAIN_S3_TIP" />
                          <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                            <Property name="ConditionTest" value="AnyTrue" />
                          </Property>
                          <Property name="Conditions">
                            <Property value="GcMissionConditionTechnologyKnown.xml">
                              <Property name="Technology" value="SHIP_LIFESUP" />
                              <Property name="DependentOnSeasonMilestone" value="False" />
                              <Property name="TakeTechFromSeasonData" value="False" />
                            </Property>
                            <Property value="GcMissionConditionTechnologyKnown.xml">
                              <Property name="Technology" value="TECH_SHIELD" />
                              <Property name="DependentOnSeasonMilestone" value="False" />
                              <Property name="TakeTechFromSeasonData" value="False" />
                            </Property>
                            <Property value="GcMissionConditionTechnologyKnown.xml">
                              <Property name="Technology" value="TECH_COMPUTER" />
                              <Property name="DependentOnSeasonMilestone" value="False" />
                              <Property name="TakeTechFromSeasonData" value="False" />
                            </Property>
                            <Property value="GcMissionConditionTechnologyKnown.xml">
                              <Property name="Technology" value="TECH_WHITE" />
                              <Property name="DependentOnSeasonMilestone" value="False" />
                              <Property name="TakeTechFromSeasonData" value="False" />
                            </Property>
                            <Property value="GcMissionConditionTechnologyKnown.xml">
                              <Property name="Technology" value="TECH_GLOBE" />
                              <Property name="DependentOnSeasonMilestone" value="False" />
                              <Property name="TakeTechFromSeasonData" value="False" />
                            </Property>
                          </Property>
                          <Property name="AllowedToFormatObjectives" value="True" />
                          <Property name="ForceAllowMissionRestart" value="False" />
                          <Property name="ForceAllowMissionRestartEvent" value="" />
                          <Property name="DebugText" value="" />
                          <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                            <Property name="MissionMarkup" value="None" />
                          </Property>
                        </Property>
                      </Property>

                      <Property value="GcGenericMissionStage.xml">
                        <Property name="Versions" />
                        <Property name="Stage" value="GcMissionSequenceSetCurrentMission.xml">
                          <Property name="MissionID" value="" />
                          <Property name="Silent" value="False" />
                          <Property name="DebugText" value="" />
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

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceEndScanEvent.xml">
        <Property name="Event" value="SE_HESPERUS_2" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="False" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="DebugText" value="" />
        <Property name="ObjectiveID" value="TEXT_MAIN_S3_OBJ" />
        <Property name="ObjectiveTipID" value="TEXT_MAIN_S3_DESC2" />
        <Property name="HasCategoryOverride" value="False" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="HasColourOverride" value="False" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="False" />
        <Property name="PrefixTitleText" value="" />
        <Property name="BlockPinning" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="None" />
        <Property name="IconStyle" value="Default" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions" />
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="5" />
              <Property name="DebugText" value="" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceGroup.xml">
              <Property name="Silent" value="True" />
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint.xml">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="" />
              <Property name="ObjectiveTipID" value="" />
              <Property name="HasCategoryOverride" value="True" />
              <Property name="OverrideCategory" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Urgent" />
              </Property>
              <Property name="HasColourOverride" value="True" />
              <Property name="ColourOverride" value="Colour.xml">
                <Property name="R" value="0.314" />
                <Property name="G" value="0.196" />
                <Property name="B" value="0.804" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PrefixTitle" value="True" />
              <Property name="PrefixTitleText" value="TEXT_MAIN_S3_OBJ" />
              <Property name="BlockPinning" value="False" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AnyFalse" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="False" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Square" />
              <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                <Property name="HasCustomNotifyTimer" value="False" />
                <Property name="NotifyDisplayTime" value="20" />
                <Property name="NotifyPauseTime" value="30" />
              </Property>
              <Property name="Conditions" />
              <Property name="Consequences" />
              <Property name="Stages">

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait.xml">
                    <Property name="Time" value="1" />
                    <Property name="DebugText" value="" />
                    <Property name="SuppressMessages" value="False" />
                    <Property name="MultiplyTimeBySeasonValue" value="False" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceDetailMessage.xml">
                    <Property name="Title" value="TEXT_MAIN_S3_OBJ" />
                    <Property name="Description" value="TEXT_MAIN_S3_INFO0" />
                    <Property name="Image" value="BANNER_TECH" />
                    <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                      <Property name="AkEvent" value="MUS_SPACEVIRGIN" />
                    </Property>
                    <Property name="Points">
                      <Property value="GcMissionSequenceDetailMessagePoint.xml">
                        <Property name="Text" value="TEXT_MAIN_S3_INFO1" />
                        <Property name="PointState" value="Statement" />
                        <Property name="InsertItemName" value="" />
                      </Property>
                      <Property value="GcMissionSequenceDetailMessagePoint.xml">
                        <Property name="Text" value="TEXT_MAIN_S3_INFO2" />
                        <Property name="PointState" value="Statement" />
                        <Property name="InsertItemName" value="" />
                      </Property>
                      <Property value="GcMissionSequenceDetailMessagePoint.xml">
                        <Property name="Text" value="TEXT_MAIN_S3_INFO3" />
                        <Property name="PointState" value="Statement" />
                        <Property name="InsertItemName" value="" />
                      </Property>
                      <Property value="GcMissionSequenceDetailMessagePoint.xml">
                        <Property name="Text" value="TEXT_MAIN_S3_INFO4" />
                        <Property name="PointState" value="Statement" />
                        <Property name="InsertItemName" value="" />
                      </Property>
                    </Property>
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>

              </Property>
            </Property>
          </Property>

        </Property>
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
        <Property name="Message" value="" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="Conditions">
          <Property value="GcMissionConditionHasActiveDetailMessage.xml" />
        </Property>
        <Property name="AllowedToFormatObjectives" value="False" />
        <Property name="ForceAllowMissionRestart" value="False" />
        <Property name="ForceAllowMissionRestartEvent" value="" />
        <Property name="DebugText" value="" />
        <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
          <Property name="MissionMarkup" value="None" />
        </Property>
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="1" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
        <Property name="MissionUpdateMessage" value="End" />
        <Property name="CustomMessageLocID" value="" />
        <Property name="CustomObjectiveLocID" value="TEXT_MAIN_S3_OBJ" />
        <Property name="SetMissionSelected" value="False" />
        <Property name="WaitForMessageOver" value="True" />
        <Property name="ShowChangeMissionNotify" value="False" />
        <Property name="PlayMusicSting" value="None" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="3" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
        <Property name="Category" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="Time" value="0" />
        <Property name="Message" value="" />
        <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
        <Property name="OSDTime" value="10" />
        <Property name="OSDMessage" value="TEXT_MAIN_END_T" />
        <Property name="OSDMessageSubtitle" value="TEXT_MAIN_END_A" />
        <Property name="OSDMessageColour" value="Colour.xml">
          <Property name="R" value="0.086" />
          <Property name="G" value="0.68" />
          <Property name="B" value="1" />
          <Property name="A" value="0.5" />
        </Property>
        <Property name="OSDMessageStyle" value="Stats" />
        <Property name="OSDUseMissionIcon" value="False" />
        <Property name="DisableIcon" value="False" />
        <Property name="DisableTitlePrefix" value="True" />
        <Property name="UseConditionsForTextFormatting" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="1" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

  </Property>
  <Property name="ForcesPageHint" value="False" />
  <Property name="ForcesBuildMenuHint" value="False" />
  <Property name="IsProceduralAllowed" value="False" />
  <Property name="IsRecurring" value="False" />
  <Property name="IsLegacy" value="False" />
  <Property name="BlocksPinning" value="False" />
  <Property name="CanRenounce" value="True" />
  <Property name="UseCommunityMissionForLog" value="" />
  <Property name="TelemetryUpload" value="False" />
  <Property name="UseSeasonTitleOverride" value="False" />
</Property>
]]



----------------------------------------------------------------------------------------------------
-- mission for plating
----------------------------------------------------------------------------------------------------

PROPERTY_MISSION_PLATING =
[[
<Property value="GcGenericMissionSequence.xml">
  <Property name="MissionID" value="M_PLATING" />
  <Property name="MissionClass" value="Secondary" />
  <Property name="MissionIsCritical" value="False" />
  <Property name="MissionObjective" value="" />
  <Property name="MissionTitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_PLATING_TITLE" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_PLATING_SUB" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_PLATING_DESC" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescSwitchOverride" value="" />
  <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="UseScanEventDetailsInLogInfo" value="True" />
  <Property name="MissionIcon" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/OTHER/MISSION.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/ITEMS/PLATING.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/ITEMS/PLATING.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionPriority" value="0" />
  <Property name="MissionCategory" value="GcMissionCategory.xml">
    <Property name="MissionCategory" value="Mission" />
  </Property>
  <Property name="MissionPageHint" value="GcMissionPageHint.xml">
    <Property name="MissionPageHint" value="None" />
  </Property>
  <Property name="MissionPageLocID" value="" />
  <Property name="MissionBuildMenuHint" value="" />
  <Property name="MissionHasColourOverride" value="False" />
  <Property name="MissionColourOverride" value="Colour.xml">
    <Property name="R" value="1" />
    <Property name="G" value="1" />
    <Property name="B" value="1" />
    <Property name="A" value="1" />
  </Property>
  <Property name="BeginCheckFrequency" value="1" />
  <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
    <Property name="PrimarySubstances" />
    <Property name="SecondarySubstances" />
    <Property name="PrimaryProducts" />
    <Property name="SecondaryProducts" />
  </Property>
  <Property name="PrefixTitle" value="False" />
  <Property name="NextMissionHint" value="" />
  <Property name="MessageComplete" value="Never" />
  <Property name="MessageStart" value="Never" />
  <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
    <Property name="Type" value="GcMissionType.xml">
      <Property name="MissionType" value="SpaceCombat" />
    </Property>
    <Property name="Difficulty" value="GcMissionDifficulty.xml">
      <Property name="MissionDifficulty" value="Normal" />
    </Property>
    <Property name="MinRank" value="0" />
    <Property name="CloseMissionGiver" value="False" />
    <Property name="IsGuildShopMission" value="False" />
    <Property name="IsPlanetProcMission" value="False" />
    <Property name="IsMultiplayerEventMission" value="False" />
    <Property name="RewardPenaltyOnAbandon" value="" />
    <Property name="Faction" />
    <Property name="Weighting" value="100" />
    <Property name="IgnoreCalculatedObjective" value="False" />
    <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
    <Property name="DefaultItemInitialWarpScanEvents" />
    <Property name="DefaultItemTypeForInitialWarp" value="None" />
    <Property name="BasePartBlueprints" />
  </Property>
  <Property name="AutoStart" value="None" />
  <Property name="RestartOnCompletion" value="False" />
  <Property name="CancelSetsComplete" value="False" />
  <Property name="Dialog" value="GcAlienPuzzleTable.xml">
    <Property name="Table">

      <Property value="GcAlienPuzzleEntry.xml">
        <Property name="ProgressionIndex" value="-1" />
        <Property name="MinProgressionForSelection" value="0" />
        <Property name="Id" value="I_FACTORY" />
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="Type" value="GcInteractionType.xml">
          <Property name="InteractionType" value="None" />
        </Property>
        <Property name="Category" value="GcAlienPuzzleCategory.xml">
          <Property name="AlienPuzzleCategory" value="Default" />
        </Property>
        <Property name="AdditionalOptions" value="None" />
        <Property name="Title" value="TEXT_PLATING_I1_LABEL" />
        <Property name="Text" value="TEXT_PLATING_I1_STORY1" />
        <Property name="TextAlien" value="" />
        <Property name="TranslateAlienText" value="True" />
        <Property name="TranslationBrackets" value="False" />
        <Property name="ProgressiveDialogue" value="True" />
        <Property name="RequiresScanEvent" value="SE_FACTORY" />
        <Property name="Options">
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="TEXT_PLATING_I1_OPTION" />
            <Property name="Text" value="TEXT_PLATING_I1_STORY2" />
            <Property name="IsAlien" value="False" />
            <Property name="Cost" value="C_FACTORY" />
            <Property name="Rewards">
              <Property value="NMSString0x10.xml">
                <Property name="Value" value="R_FACTORY" />
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
            <Property name="MarkInteractionComplete" value="False" />
            <Property name="NextInteraction" value="" />
            <Property name="SelectedOnBackOut" value="True" />
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
        <Property name="UseTitleOverrideInLabel" value="True" />
        <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
      </Property>

    </Property>
  </Property>
  <Property name="ScanEvents">

    <Property value="GcScanEventData.xml">
      <Property name="Name" value="SE_FACTORY" />
      <Property name="ForceInteraction" value="I_FACTORY" />
      <Property name="ForceInteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="Factory" />
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
      <Property name="ClearForcedInteractionOnCompletion" value="True" />
      <Property name="BuildingPreventionRadius" value="50" />
      <Property name="UseMissionTradingDataOverride" value="False" />
      <Property name="AlwaysShow" value="False" />
      <Property name="NeverShow" value="False" />
      <Property name="ShowOnlyIfSequenceTarget" value="False" />
      <Property name="PlanetLabelText" value="" />
      <Property name="SurveyDistance" value="600" />
      <Property name="SurveyDiscoveryOSDMessage" value="TEXT_PLATING_E1_TARGET" />
      <Property name="EventStartType" value="Special" />
      <Property name="EventEndType" value="Interact" />
      <Property name="EventPriority" value="Regular" />
      <Property name="CanEndFromOutsideMission" value="False" />
      <Property name="DisableMultiplayerSync" value="False" />
      <Property name="BlockStartedOnUseEvents" value="False" />
      <Property name="ReplaceEventIfAlreadyActive" value="False" />
      <Property name="BuildingLocation" value="RandomOnFarPlanet" />
      <Property name="BuildingType" value="BuildingClass" />
      <Property name="BuildingClass" value="GcBuildingClassification.xml">
        <Property name="BuildingClass" value="Factory" />
      </Property>
      <Property name="AllowFriendsBases" value="False" />
      <Property name="ForceWideRandom" value="False" />
      <Property name="MustFindSystem" value="False" />
      <Property name="AllowOverriddenBuildings" value="False" />
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
        <Property name="AllowUnsafeMatches" value="True" />
        <Property name="NeverAllowEmpty" value="True" />
        <Property name="NeverAllowAbandoned" value="True" />
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
        <Property name="AnyRGBBiome" value="True" />
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
        <Property name="AllowUnsafeMatches" value="True" />
        <Property name="NeverAllowEmpty" value="True" />
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
      <Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
      <Property name="MarkerLabel" value="TEXT_PLATING_E1_MARKER" />
      <Property name="MarkerIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/OTHER/MISSION.DDS" />
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
      <Property name="IconTime" value="6" />
      <Property name="TooltipTime" value="16" />
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

  </Property>
  <Property name="Rewards">

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_FACTORY" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardOSDMessage.xml">
              <Property name="Time" value="0" />
              <Property name="Message" value="" />
              <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_25" />
              </Property>
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="MessageColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="0.141" />
                <Property name="B" value="0.141" />
                <Property name="A" value="0.8" />
              </Property>
              <Property name="UseTimedMessage" value="False" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProductRecipe.xml">
              <Property name="ID" value="ITEM_PLATING" />
              <Property name="Silent" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="SeasonRewardFormat" value="UI_BLUEPRINT_REWARD_FORMAT" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

  </Property>
  <Property name="Costs">

    <Property value="GcCostTableEntry.xml">
      <Property name="Id" value="C_FACTORY" />
      <Property name="DisplayCost" value="True" />
      <Property name="DontCharge" value="False" />
      <Property name="HideOptionAndDisplayCostOnly" value="False" />
      <Property name="DisplayOnlyCostIfCantAfford" value="False" />
      <Property name="HideCostStringIfCanAfford" value="False" />
      <Property name="RemoveOptionIfCantAfford" value="False" />
      <Property name="InvertCanAffordOutcome" value="False" />
      <Property name="MustAffordInCreative" value="False" />
      <Property name="UseCommunityContributionCap" value="False" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
      <Property name="Cost" value="GcCostMoney.xml">
        <Property name="Cost" value="512" />
        <Property name="CostCurrency" value="GcCurrency.xml">
          <Property name="Currency" value="Nanites" />
        </Property>
      </Property>
    </Property>

  </Property>
  <Property name="TradingDataOverride" value="GcTradeData.xml">
    <Property name="AlwaysPresentProducts" />
    <Property name="AlwaysPresentSubstances" />
    <Property name="OptionalProducts" />
    <Property name="OptionalSubstances" />
    <Property name="MinItemsForSale" value="5" />
    <Property name="MaxItemsForSale" value="15" />
    <Property name="PercentageOfItemsAreProducts" value="0.3" />
    <Property name="BuyPriceIncreaseRedThreshold" value="20" />
    <Property name="BuyPriceDecreaseGreenThreshold" value="-10" />
    <Property name="SellPriceIncreaseGreenThreshold" value="10" />
    <Property name="SellPriceDecreaseRedThreshold" value="-20" />
    <Property name="ShowSeasonRewards" value="False" />
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
  <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="StartIsCancel" value="False" />
  <Property name="StartingConditions" />
  <Property name="CancelingConditions" />
  <Property name="FinalStageVersions" />
  <Property name="Stages">

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="False" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="DebugText" value="" />
        <Property name="ObjectiveID" value="TEXT_PLATING_S1_OBJ" />
        <Property name="ObjectiveTipID" value="TEXT_PLATING_S1_DESC" />
        <Property name="HasCategoryOverride" value="False" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="HasColourOverride" value="False" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="False" />
        <Property name="PrefixTitleText" value="" />
        <Property name="BlockPinning" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="None" />
        <Property name="IconStyle" value="Default" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions" />
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
              <Property name="Message" value="" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AnyTrue" />
              </Property>
              <Property name="Conditions">
                <Property value="GcMissionConditionIsCurrentMission.xml" />
              </Property>
              <Property name="AllowedToFormatObjectives" value="False" />
              <Property name="ForceAllowMissionRestart" value="False" />
              <Property name="ForceAllowMissionRestartEvent" value="" />
              <Property name="DebugText" value="" />
              <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                <Property name="MissionMarkup" value="None" />
              </Property>
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
              <Property name="MissionUpdateMessage" value="Start" />
              <Property name="CustomMessageLocID" value="" />
              <Property name="CustomObjectiveLocID" value="" />
              <Property name="SetMissionSelected" value="False" />
              <Property name="WaitForMessageOver" value="True" />
              <Property name="ShowChangeMissionNotify" value="False" />
              <Property name="PlayMusicSting" value="None" />
              <Property name="DebugText" value="" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="1" />
              <Property name="DebugText" value="" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceGroup.xml">
              <Property name="Silent" value="True" />
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint.xml">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="" />
              <Property name="ObjectiveTipID" value="" />
              <Property name="HasCategoryOverride" value="False" />
              <Property name="OverrideCategory" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="False" />
              <Property name="ColourOverride" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PrefixTitle" value="False" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="False" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AllFalse" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="False" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                <Property name="HasCustomNotifyTimer" value="False" />
                <Property name="NotifyDisplayTime" value="20" />
                <Property name="NotifyPauseTime" value="30" />
              </Property>
              <Property name="Conditions" />
              <Property name="Consequences" />
              <Property name="Stages">

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_PLATING_S1_TIP1" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionLocation.xml">
                        <Property name="MissionPlayerLocation" value="InShipInSpace" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait.xml">
                    <Property name="Time" value="5" />
                    <Property name="DebugText" value="" />
                    <Property name="SuppressMessages" value="False" />
                    <Property name="MultiplyTimeBySeasonValue" value="False" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionIsCurrentMission.xml" />
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="False" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
                    <Property name="Category" value="GcMissionCategory.xml">
                      <Property name="MissionCategory" value="Mission" />
                    </Property>
                    <Property name="Time" value="0" />
                    <Property name="Message" value="" />
                    <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                      <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_16" />
                    </Property>
                    <Property name="OSDTime" value="8" />
                    <Property name="OSDMessage" value="TEXT_PLATING_E1_OSD" />
                    <Property name="OSDMessageSubtitle" value="" />
                    <Property name="OSDMessageColour" value="Colour.xml">
                      <Property name="R" value="0.314" />
                      <Property name="G" value="0.196" />
                      <Property name="B" value="0.804" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OSDMessageStyle" value="Standard" />
                    <Property name="OSDUseMissionIcon" value="True" />
                    <Property name="DisableIcon" value="False" />
                    <Property name="DisableTitlePrefix" value="False" />
                    <Property name="UseConditionsForTextFormatting" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>
                
                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
                    <Property name="Table" value="GcScanEventTableType.xml">
                      <Property name="ScanTable" value="Tutorial" />
                    </Property>
                    <Property name="Participant" value="GcPlayerMissionParticipantType.xml">
                      <Property name="ParticipantType" value="Primary" />
                    </Property>
                    <Property name="Event" value="SE_FACTORY" />
                    <Property name="Time" value="0" />
                    <Property name="DoAerialScan" value="False" />
                    <Property name="AllowOtherPlayersBase" value="False" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_PLATING_E1_TIP1" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AllTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionIsScanEventOnCurrentPlanet.xml">
                        <Property name="Event" value="SE_FACTORY" />
                        <Property name="AllowInShip" value="False" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGetToScanEvent.xml">
                    <Property name="Message" value="TEXT_PLATING_E1_TIP2" />
                    <Property name="GalaxyMapMessage" value="UI_SCANEVENT_GOTO_MAP" />
                    <Property name="Event" value="SE_FACTORY" />
                    <Property name="Distance" value="20" />
                    <Property name="EndEventWhenReached" value="False" />
                    <Property name="Timeout" value="0" />
                    <Property name="DistanceTimeout" value="False" />
                    <Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
                    <Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
                      <Property name="ScanEventGPSHint" value="None" />
                    </Property>
                    <Property name="CanFormatObjectives" value="False" />
                    <Property name="SurveyInactiveHint" value="" />
                    <Property name="SurveySwapHint" value="" />
                    <Property name="SurveyHint" value="" />
                    <Property name="SurveyVehicleHint" value="" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGroup.xml">
                    <Property name="Silent" value="True" />
                    <Property name="Icon" value="TkTextureResource.xml">
                      <Property name="Filename" value="" />
                      <Property name="ResHandle" value="GcResource.xml">
                        <Property name="ResourceID" value="0" />
                      </Property>
                    </Property>
                    <Property name="PageHint" value="GcMissionPageHint.xml">
                      <Property name="MissionPageHint" value="None" />
                    </Property>
                    <Property name="PageDataLocID" value="" />
                    <Property name="BuildMenuHint" value="" />
                    <Property name="InventoryHint" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="ObjectiveID" value="" />
                    <Property name="ObjectiveTipID" value="" />
                    <Property name="HasCategoryOverride" value="False" />
                    <Property name="OverrideCategory" value="GcMissionCategory.xml">
                      <Property name="MissionCategory" value="Mission" />
                    </Property>
                    <Property name="HasColourOverride" value="False" />
                    <Property name="ColourOverride" value="Colour.xml">
                      <Property name="R" value="1" />
                      <Property name="G" value="1" />
                      <Property name="B" value="1" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="PrefixTitle" value="False" />
                    <Property name="PrefixTitleText" value="" />
                    <Property name="BlockPinning" value="False" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="HideFromLogIfConditionsMet" value="False" />
                    <Property name="RepeatLogic" value="None" />
                    <Property name="IconStyle" value="Default" />
                    <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                      <Property name="InputButton" value="None" />
                    </Property>
                    <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                      <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                      <Property name="FormattableObjective" value="" />
                      <Property name="FormattableObjectiveTip" value="" />
                    </Property>
                    <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                      <Property name="TargetMissionSurveyId" value="" />
                      <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                      <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                      <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                      <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                      <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
                    </Property>
                    <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                      <Property name="HasCustomNotifyTimer" value="False" />
                      <Property name="NotifyDisplayTime" value="20" />
                      <Property name="NotifyPauseTime" value="30" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionProductKnown.xml">
                        <Property name="Product" value="ITEM_PLATING" />
                        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                          <Property name="DefaultProductType" value="None" />
                        </Property>
                        <Property name="DependentOnSeasonMilestone" value="False" />
                        <Property name="TakeProductFromSeasonData" value="False" />
                      </Property>
                    </Property>
                    <Property name="Consequences" />
                    <Property name="Stages">

                      <Property value="GcGenericMissionStage.xml">
                        <Property name="Versions" />
                        <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                          <Property name="Message" value="TEXT_PLATING_S1_TIP2" />
                          <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                            <Property name="ConditionTest" value="AnyTrue" />
                          </Property>
                          <Property name="Conditions">
                            <Property value="GcMissionConditionProductKnown.xml">
                              <Property name="Product" value="ITEM_PLATING" />
                              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                                <Property name="DefaultProductType" value="None" />
                              </Property>
                              <Property name="DependentOnSeasonMilestone" value="False" />
                              <Property name="TakeProductFromSeasonData" value="False" />
                            </Property>
                          </Property>
                          <Property name="AllowedToFormatObjectives" value="True" />
                          <Property name="ForceAllowMissionRestart" value="False" />
                          <Property name="ForceAllowMissionRestartEvent" value="" />
                          <Property name="DebugText" value="" />
                          <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                            <Property name="MissionMarkup" value="None" />
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

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceEndScanEvent.xml">
        <Property name="Event" value="SE_FACTORY" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="1" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
        <Property name="MissionUpdateMessage" value="End" />
        <Property name="CustomMessageLocID" value="" />
        <Property name="CustomObjectiveLocID" value="TEXT_PLATING_S1_OBJ" />
        <Property name="SetMissionSelected" value="False" />
        <Property name="WaitForMessageOver" value="True" />
        <Property name="ShowChangeMissionNotify" value="False" />
        <Property name="PlayMusicSting" value="None" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

  </Property>
  <Property name="ForcesPageHint" value="False" />
  <Property name="ForcesBuildMenuHint" value="False" />
  <Property name="IsProceduralAllowed" value="False" />
  <Property name="IsRecurring" value="False" />
  <Property name="IsLegacy" value="False" />
  <Property name="BlocksPinning" value="False" />
  <Property name="CanRenounce" value="True" />
  <Property name="UseCommunityMissionForLog" value="" />
  <Property name="TelemetryUpload" value="False" />
  <Property name="UseSeasonTitleOverride" value="False" />
</Property>
]]



----------------------------------------------------------------------------------------------------
-- mission for time fragment
----------------------------------------------------------------------------------------------------

PROPERTY_MISSION_FRAGMENT =
[[
<Property value="GcGenericMissionSequence.xml">
  <Property name="MissionID" value="M_FRAGMENT" />
  <Property name="MissionClass" value="Secondary" />
  <Property name="MissionIsCritical" value="False" />
  <Property name="MissionObjective" value="" />
  <Property name="MissionTitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_FRAGMENT_TITLE" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_FRAGMENT_SUB" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_FRAGMENT_DESC" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescSwitchOverride" value="" />
  <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="UseScanEventDetailsInLogInfo" value="True" />
  <Property name="MissionIcon" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/OTHER/MISSION.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/ITEMS/FRAGMENT.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/ITEMS/FRAGMENT.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionPriority" value="0" />
  <Property name="MissionCategory" value="GcMissionCategory.xml">
    <Property name="MissionCategory" value="Mission" />
  </Property>
  <Property name="MissionPageHint" value="GcMissionPageHint.xml">
    <Property name="MissionPageHint" value="None" />
  </Property>
  <Property name="MissionPageLocID" value="" />
  <Property name="MissionBuildMenuHint" value="" />
  <Property name="MissionHasColourOverride" value="False" />
  <Property name="MissionColourOverride" value="Colour.xml">
    <Property name="R" value="1" />
    <Property name="G" value="1" />
    <Property name="B" value="1" />
    <Property name="A" value="1" />
  </Property>
  <Property name="BeginCheckFrequency" value="1" />
  <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
    <Property name="PrimarySubstances" />
    <Property name="SecondarySubstances" />
    <Property name="PrimaryProducts" />
    <Property name="SecondaryProducts" />
  </Property>
  <Property name="PrefixTitle" value="False" />
  <Property name="NextMissionHint" value="" />
  <Property name="MessageComplete" value="Never" />
  <Property name="MessageStart" value="Never" />
  <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
    <Property name="Type" value="GcMissionType.xml">
      <Property name="MissionType" value="SpaceCombat" />
    </Property>
    <Property name="Difficulty" value="GcMissionDifficulty.xml">
      <Property name="MissionDifficulty" value="Normal" />
    </Property>
    <Property name="MinRank" value="0" />
    <Property name="CloseMissionGiver" value="False" />
    <Property name="IsGuildShopMission" value="False" />
    <Property name="IsPlanetProcMission" value="False" />
    <Property name="IsMultiplayerEventMission" value="False" />
    <Property name="RewardPenaltyOnAbandon" value="" />
    <Property name="Faction" />
    <Property name="Weighting" value="100" />
    <Property name="IgnoreCalculatedObjective" value="False" />
    <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
    <Property name="DefaultItemInitialWarpScanEvents" />
    <Property name="DefaultItemTypeForInitialWarp" value="None" />
    <Property name="BasePartBlueprints" />
  </Property>
  <Property name="AutoStart" value="None" />
  <Property name="RestartOnCompletion" value="False" />
  <Property name="CancelSetsComplete" value="False" />
  <Property name="Dialog" value="GcAlienPuzzleTable.xml">
    <Property name="Table">

      <Property value="GcAlienPuzzleEntry.xml">
        <Property name="ProgressionIndex" value="-1" />
        <Property name="MinProgressionForSelection" value="0" />
        <Property name="Id" value="I_MONOLITH" />
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="Type" value="GcInteractionType.xml">
          <Property name="InteractionType" value="Monolith" />
        </Property>
        <Property name="Category" value="GcAlienPuzzleCategory.xml">
          <Property name="AlienPuzzleCategory" value="Default" />
        </Property>
        <Property name="AdditionalOptions" value="None" />
        <Property name="Title" value="TEXT_FRAGMENT_I1_LABEL" />
        <Property name="Text" value="" />
        <Property name="TextAlien" value="" />
        <Property name="TranslateAlienText" value="False" />
        <Property name="TranslationBrackets" value="False" />
        <Property name="ProgressiveDialogue" value="True" />
        <Property name="RequiresScanEvent" value="SE_MONOLITH" />
        <Property name="Options">
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="TEXT_FRAGMENT_I1_OPTION" />
            <Property name="Text" value="TEXT_FRAGMENT_I1_STORYD" />
            <Property name="IsAlien" value="False" />
            <Property name="Cost" value="C_MONOLITH" />
            <Property name="Rewards">
              <Property value="NMSString0x10.xml">
                <Property name="Value" value="R_MONO" />
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
            <Property name="MarkInteractionComplete" value="False" />
            <Property name="NextInteraction" value="" />
            <Property name="SelectedOnBackOut" value="True" />
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
        <Property name="AdvancedInteractionFlow">
          <Property value="GcPuzzleTextFlow.xml">
            <Property name="Text" value="TEXT_FRAGMENT_I1_STORYA" />
            <Property name="IsAlien" value="False" />
            <Property name="Title" value="" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="TranslateAlienTextOverride" value="None" />
            <Property name="BracketsOverride" value="None" />
            <Property name="AlienLanguageOverride" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="ShowHologram" value="True" />
          </Property>
          <Property value="GcPuzzleTextFlow.xml">
            <Property name="Text" value="TEXT_FRAGMENT_I1_STORYB" />
            <Property name="IsAlien" value="True" />
            <Property name="Title" value="TEXT_FRAGMENT_I1_LABEL" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="TranslateAlienTextOverride" value="None" />
            <Property name="BracketsOverride" value="None" />
            <Property name="AlienLanguageOverride" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="ShowHologram" value="True" />
          </Property>
          <Property value="GcPuzzleTextFlow.xml">
            <Property name="Text" value="TEXT_FRAGMENT_I1_STORYC" />
            <Property name="IsAlien" value="False" />
            <Property name="Title" value="" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="TranslateAlienTextOverride" value="None" />
            <Property name="BracketsOverride" value="None" />
            <Property name="AlienLanguageOverride" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="ShowHologram" value="True" />
          </Property>
        </Property>
        <Property name="PersistancyBufferOverride" value="None" />
        <Property name="CustomFreighterTextIndex" value="-1" />
        <Property name="RadialInteraction" value="False" />
        <Property name="UseTitleOverrideInLabel" value="True" />
        <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
      </Property>

    </Property>
  </Property>
  <Property name="ScanEvents">

    <Property value="GcScanEventData.xml">
      <Property name="Name" value="SE_MONOLITH" />
      <Property name="ForceInteraction" value="I_MONOLITH" />
      <Property name="ForceInteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="Monolith" />
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
      <Property name="ClearForcedInteractionOnCompletion" value="True" />
      <Property name="BuildingPreventionRadius" value="50" />
      <Property name="UseMissionTradingDataOverride" value="False" />
      <Property name="AlwaysShow" value="False" />
      <Property name="NeverShow" value="False" />
      <Property name="ShowOnlyIfSequenceTarget" value="False" />
      <Property name="PlanetLabelText" value="" />
      <Property name="SurveyDistance" value="600" />
      <Property name="SurveyDiscoveryOSDMessage" value="TEXT_FRAGMENT_E1_TARGET" />
      <Property name="EventStartType" value="Special" />
      <Property name="EventEndType" value="Interact" />
      <Property name="EventPriority" value="Regular" />
      <Property name="CanEndFromOutsideMission" value="False" />
      <Property name="DisableMultiplayerSync" value="False" />
      <Property name="BlockStartedOnUseEvents" value="False" />
      <Property name="ReplaceEventIfAlreadyActive" value="False" />
      <Property name="BuildingLocation" value="RandomOnFarPlanet" />
      <Property name="BuildingType" value="BuildingClass" />
      <Property name="BuildingClass" value="GcBuildingClassification.xml">
        <Property name="BuildingClass" value="Monolith" />
      </Property>
      <Property name="AllowFriendsBases" value="False" />
      <Property name="ForceWideRandom" value="False" />
      <Property name="MustFindSystem" value="False" />
      <Property name="AllowOverriddenBuildings" value="False" />
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
        <Property name="AllowUnsafeMatches" value="True" />
        <Property name="NeverAllowEmpty" value="True" />
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
        <Property name="AnyRGBBiome" value="True" />
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
        <Property name="AllowUnsafeMatches" value="True" />
        <Property name="NeverAllowEmpty" value="True" />
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
      <Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
      <Property name="MarkerLabel" value="TEXT_FRAGMENT_E1_MARKER" />
      <Property name="MarkerIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/OTHER/MISSION.DDS" />
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
      <Property name="IconTime" value="6" />
      <Property name="TooltipTime" value="16" />
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

  </Property>
  <Property name="Rewards">

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_MONO" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardOSDMessage.xml">
              <Property name="Time" value="0" />
              <Property name="Message" value="" />
              <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_27" />
              </Property>
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="MessageColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="0.141" />
                <Property name="B" value="0.141" />
                <Property name="A" value="0.8" />
              </Property>
              <Property name="UseTimedMessage" value="False" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="ITEM_FRAGMENT" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="True" />
              <Property name="ForceSpecialMessage" value="True" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

  </Property>
  <Property name="Costs">

    <Property value="GcCostTableEntry.xml">
      <Property name="Id" value="C_MONOLITH" />
      <Property name="DisplayCost" value="True" />
      <Property name="DontCharge" value="False" />
      <Property name="HideOptionAndDisplayCostOnly" value="False" />
      <Property name="DisplayOnlyCostIfCantAfford" value="False" />
      <Property name="HideCostStringIfCanAfford" value="False" />
      <Property name="RemoveOptionIfCantAfford" value="False" />
      <Property name="InvertCanAffordOutcome" value="False" />
      <Property name="MustAffordInCreative" value="False" />
      <Property name="UseCommunityContributionCap" value="False" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
      <Property name="Cost" value="GcCostProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="ATLAS_SEED_1" />
        <Property name="Amount" value="1" />
        <Property name="UseDefaultAmount" value="False" />
      </Property>
    </Property>

  </Property>
  <Property name="TradingDataOverride" value="GcTradeData.xml">
    <Property name="AlwaysPresentProducts" />
    <Property name="AlwaysPresentSubstances" />
    <Property name="OptionalProducts" />
    <Property name="OptionalSubstances" />
    <Property name="MinItemsForSale" value="5" />
    <Property name="MaxItemsForSale" value="15" />
    <Property name="PercentageOfItemsAreProducts" value="0.3" />
    <Property name="BuyPriceIncreaseRedThreshold" value="20" />
    <Property name="BuyPriceDecreaseGreenThreshold" value="-10" />
    <Property name="SellPriceIncreaseGreenThreshold" value="10" />
    <Property name="SellPriceDecreaseRedThreshold" value="-20" />
    <Property name="ShowSeasonRewards" value="False" />
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
  <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="StartIsCancel" value="False" />
  <Property name="StartingConditions" />
  <Property name="CancelingConditions" />
  <Property name="FinalStageVersions" />
  <Property name="Stages">

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="False" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="DebugText" value="" />
        <Property name="ObjectiveID" value="TEXT_FRAGMENT_S1_OBJ" />
        <Property name="ObjectiveTipID" value="TEXT_FRAGMENT_S1_DESC" />
        <Property name="HasCategoryOverride" value="False" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="HasColourOverride" value="False" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="False" />
        <Property name="PrefixTitleText" value="" />
        <Property name="BlockPinning" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="None" />
        <Property name="IconStyle" value="Default" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions" />
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
              <Property name="Message" value="" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AnyTrue" />
              </Property>
              <Property name="Conditions">
                <Property value="GcMissionConditionIsCurrentMission.xml" />
              </Property>
              <Property name="AllowedToFormatObjectives" value="False" />
              <Property name="ForceAllowMissionRestart" value="False" />
              <Property name="ForceAllowMissionRestartEvent" value="" />
              <Property name="DebugText" value="" />
              <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                <Property name="MissionMarkup" value="None" />
              </Property>
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
              <Property name="MissionUpdateMessage" value="Start" />
              <Property name="CustomMessageLocID" value="" />
              <Property name="CustomObjectiveLocID" value="" />
              <Property name="SetMissionSelected" value="False" />
              <Property name="WaitForMessageOver" value="True" />
              <Property name="ShowChangeMissionNotify" value="False" />
              <Property name="PlayMusicSting" value="None" />
              <Property name="DebugText" value="" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="1" />
              <Property name="DebugText" value="" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceGroup.xml">
              <Property name="Silent" value="True" />
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint.xml">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="" />
              <Property name="ObjectiveTipID" value="" />
              <Property name="HasCategoryOverride" value="False" />
              <Property name="OverrideCategory" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="False" />
              <Property name="ColourOverride" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PrefixTitle" value="False" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="False" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AnyTrue" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="False" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                <Property name="HasCustomNotifyTimer" value="False" />
                <Property name="NotifyDisplayTime" value="20" />
                <Property name="NotifyPauseTime" value="30" />
              </Property>
              <Property name="Conditions" />
              <Property name="Consequences" />
              <Property name="Stages">

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_FRAGMENT_S1_TIP1" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionLocation.xml">
                        <Property name="MissionPlayerLocation" value="InShipInSpace" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait.xml">
                    <Property name="Time" value="5" />
                    <Property name="DebugText" value="" />
                    <Property name="SuppressMessages" value="False" />
                    <Property name="MultiplyTimeBySeasonValue" value="False" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionIsCurrentMission.xml" />
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="False" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
                    <Property name="Category" value="GcMissionCategory.xml">
                      <Property name="MissionCategory" value="Mission" />
                    </Property>
                    <Property name="Time" value="0" />
                    <Property name="Message" value="" />
                    <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                      <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_23" />
                    </Property>
                    <Property name="OSDTime" value="8" />
                    <Property name="OSDMessage" value="TEXT_FRAGMENT_E1_MESSAGE" />
                    <Property name="OSDMessageSubtitle" value="" />
                    <Property name="OSDMessageColour" value="Colour.xml">
                      <Property name="R" value="0.314" />
                      <Property name="G" value="0.196" />
                      <Property name="B" value="0.804" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OSDMessageStyle" value="Standard" />
                    <Property name="OSDUseMissionIcon" value="True" />
                    <Property name="DisableIcon" value="False" />
                    <Property name="DisableTitlePrefix" value="False" />
                    <Property name="UseConditionsForTextFormatting" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>
                
                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
                    <Property name="Table" value="GcScanEventTableType.xml">
                      <Property name="ScanTable" value="Tutorial" />
                    </Property>
                    <Property name="Participant" value="GcPlayerMissionParticipantType.xml">
                      <Property name="ParticipantType" value="Primary" />
                    </Property>
                    <Property name="Event" value="SE_MONOLITH" />
                    <Property name="Time" value="0" />
                    <Property name="DoAerialScan" value="False" />
                    <Property name="AllowOtherPlayersBase" value="False" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_FRAGMENT_E1_TIP1" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AllTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionIsScanEventOnCurrentPlanet.xml">
                        <Property name="Event" value="SE_MONOLITH" />
                        <Property name="AllowInShip" value="False" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGetToScanEvent.xml">
                    <Property name="Message" value="TEXT_FRAGMENT_E1_TIP2" />
                    <Property name="GalaxyMapMessage" value="UI_SCANEVENT_GOTO_MAP" />
                    <Property name="Event" value="SE_MONOLITH" />
                    <Property name="Distance" value="20" />
                    <Property name="EndEventWhenReached" value="False" />
                    <Property name="Timeout" value="0" />
                    <Property name="DistanceTimeout" value="False" />
                    <Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
                    <Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
                      <Property name="ScanEventGPSHint" value="None" />
                    </Property>
                    <Property name="CanFormatObjectives" value="False" />
                    <Property name="SurveyInactiveHint" value="" />
                    <Property name="SurveySwapHint" value="" />
                    <Property name="SurveyHint" value="" />
                    <Property name="SurveyVehicleHint" value="" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGroup.xml">
                    <Property name="Silent" value="True" />
                    <Property name="Icon" value="TkTextureResource.xml">
                      <Property name="Filename" value="" />
                      <Property name="ResHandle" value="GcResource.xml">
                        <Property name="ResourceID" value="0" />
                      </Property>
                    </Property>
                    <Property name="PageHint" value="GcMissionPageHint.xml">
                      <Property name="MissionPageHint" value="None" />
                    </Property>
                    <Property name="PageDataLocID" value="" />
                    <Property name="BuildMenuHint" value="" />
                    <Property name="InventoryHint" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="ObjectiveID" value="" />
                    <Property name="ObjectiveTipID" value="" />
                    <Property name="HasCategoryOverride" value="False" />
                    <Property name="OverrideCategory" value="GcMissionCategory.xml">
                      <Property name="MissionCategory" value="Mission" />
                    </Property>
                    <Property name="HasColourOverride" value="False" />
                    <Property name="ColourOverride" value="Colour.xml">
                      <Property name="R" value="1" />
                      <Property name="G" value="1" />
                      <Property name="B" value="1" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="PrefixTitle" value="False" />
                    <Property name="PrefixTitleText" value="" />
                    <Property name="BlockPinning" value="False" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="HideFromLogIfConditionsMet" value="False" />
                    <Property name="RepeatLogic" value="None" />
                    <Property name="IconStyle" value="Default" />
                    <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                      <Property name="InputButton" value="None" />
                    </Property>
                    <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                      <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                      <Property name="FormattableObjective" value="" />
                      <Property name="FormattableObjectiveTip" value="" />
                    </Property>
                    <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                      <Property name="TargetMissionSurveyId" value="" />
                      <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                      <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                      <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                      <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                      <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
                    </Property>
                    <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                      <Property name="HasCustomNotifyTimer" value="False" />
                      <Property name="NotifyDisplayTime" value="20" />
                      <Property name="NotifyPauseTime" value="30" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionHasProduct.xml">
                        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                          <Property name="DefaultProductType" value="None" />
                        </Property>
                        <Property name="Product" value="ITEM_FRAGMENT" />
                        <Property name="Amount" value="1" />
                        <Property name="UseDefaultAmount" value="False" />
                        <Property name="SyncWithMissionFireteam" value="False" />
                        <Property name="ForceSearchFreighterAndChests" value="False" />
                        <Property name="SearchEveryShip" value="False" />
                        <Property name="SearchGrave" value="False" />
                        <Property name="SearchCookingIngredients" value="False" />
                        <Property name="TakeAmountFromSeasonData" value="False" />
                        <Property name="TakeIdFromSeasonData" value="False" />
                        <Property name="DependentOnSeasonMilestone" value="False" />
                        <Property name="UseAmountToAffordRecipe" value="" />
                        <Property name="TakeAffordRecipeFromSeasonData" value="False" />
                        <Property name="UseAffordRecipeForTextFormatting" value="False" />
                        <Property name="Purpose" value="GcItemNeedPurpose.xml">
                          <Property name="ItemPurpose" value="None" />
                        </Property>
                        <Property name="ForceInventoryHintAtAllTimes" value="False" />
                        <Property name="UseProductIconAsMissionIcon" value="False" />
                        <Property name="DoNotFormatText" value="False" />
                      </Property>
                    </Property>
                    <Property name="Consequences" />
                    <Property name="Stages">

                      <Property value="GcGenericMissionStage.xml">
                        <Property name="Versions" />
                        <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                          <Property name="Message" value="TEXT_FRAGMENT_S1_TIP2" />
                          <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                            <Property name="ConditionTest" value="AnyTrue" />
                          </Property>
                          <Property name="Conditions">
                            <Property value="GcMissionConditionHasProduct.xml">
                              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                                <Property name="DefaultProductType" value="None" />
                              </Property>
                              <Property name="Product" value="ITEM_FRAGMENT" />
                              <Property name="Amount" value="1" />
                              <Property name="UseDefaultAmount" value="False" />
                              <Property name="SyncWithMissionFireteam" value="False" />
                              <Property name="ForceSearchFreighterAndChests" value="False" />
                              <Property name="SearchEveryShip" value="False" />
                              <Property name="SearchGrave" value="False" />
                              <Property name="SearchCookingIngredients" value="False" />
                              <Property name="TakeAmountFromSeasonData" value="False" />
                              <Property name="TakeIdFromSeasonData" value="False" />
                              <Property name="DependentOnSeasonMilestone" value="False" />
                              <Property name="UseAmountToAffordRecipe" value="" />
                              <Property name="TakeAffordRecipeFromSeasonData" value="False" />
                              <Property name="UseAffordRecipeForTextFormatting" value="False" />
                              <Property name="Purpose" value="GcItemNeedPurpose.xml">
                                <Property name="ItemPurpose" value="None" />
                              </Property>
                              <Property name="ForceInventoryHintAtAllTimes" value="False" />
                              <Property name="UseProductIconAsMissionIcon" value="False" />
                              <Property name="DoNotFormatText" value="False" />
                            </Property>
                          </Property>
                          <Property name="AllowedToFormatObjectives" value="True" />
                          <Property name="ForceAllowMissionRestart" value="False" />
                          <Property name="ForceAllowMissionRestartEvent" value="" />
                          <Property name="DebugText" value="" />
                          <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                            <Property name="MissionMarkup" value="None" />
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

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceEndScanEvent.xml">
        <Property name="Event" value="SE_MONOLITH" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="1" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
        <Property name="MissionUpdateMessage" value="End" />
        <Property name="CustomMessageLocID" value="" />
        <Property name="CustomObjectiveLocID" value="TEXT_FRAGMENT_S1_OBJ" />
        <Property name="SetMissionSelected" value="False" />
        <Property name="WaitForMessageOver" value="True" />
        <Property name="ShowChangeMissionNotify" value="False" />
        <Property name="PlayMusicSting" value="None" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

  </Property>
  <Property name="ForcesPageHint" value="False" />
  <Property name="ForcesBuildMenuHint" value="False" />
  <Property name="IsProceduralAllowed" value="False" />
  <Property name="IsRecurring" value="False" />
  <Property name="IsLegacy" value="False" />
  <Property name="BlocksPinning" value="False" />
  <Property name="CanRenounce" value="True" />
  <Property name="UseCommunityMissionForLog" value="" />
  <Property name="TelemetryUpload" value="False" />
  <Property name="UseSeasonTitleOverride" value="False" />
</Property>
]]



----------------------------------------------------------------------------------------------------
-- mission for matrix
----------------------------------------------------------------------------------------------------

PROPERTY_MISSION_CIRCUIT =
[[
<Property value="GcGenericMissionSequence.xml">
  <Property name="MissionID" value="M_CIRCUIT" />
  <Property name="MissionClass" value="Secondary" />
  <Property name="MissionIsCritical" value="False" />
  <Property name="MissionObjective" value="" />
  <Property name="MissionTitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_CIRCUIT_TITLE" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_CIRCUIT_SUB" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_CIRCUIT_DESC" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescSwitchOverride" value="" />
  <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="UseScanEventDetailsInLogInfo" value="True" />
  <Property name="MissionIcon" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/OTHER/MISSION.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/ITEMS/CIRCUIT.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/ITEMS/CIRCUIT.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionPriority" value="0" />
  <Property name="MissionCategory" value="GcMissionCategory.xml">
    <Property name="MissionCategory" value="Mission" />
  </Property>
  <Property name="MissionPageHint" value="GcMissionPageHint.xml">
    <Property name="MissionPageHint" value="None" />
  </Property>
  <Property name="MissionPageLocID" value="" />
  <Property name="MissionBuildMenuHint" value="" />
  <Property name="MissionHasColourOverride" value="False" />
  <Property name="MissionColourOverride" value="Colour.xml">
    <Property name="R" value="1" />
    <Property name="G" value="1" />
    <Property name="B" value="1" />
    <Property name="A" value="1" />
  </Property>
  <Property name="BeginCheckFrequency" value="1" />
  <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
    <Property name="PrimarySubstances" />
    <Property name="SecondarySubstances" />
    <Property name="PrimaryProducts" />
    <Property name="SecondaryProducts" />
  </Property>
  <Property name="PrefixTitle" value="False" />
  <Property name="NextMissionHint" value="" />
  <Property name="MessageComplete" value="Never" />
  <Property name="MessageStart" value="Never" />
  <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
    <Property name="Type" value="GcMissionType.xml">
      <Property name="MissionType" value="SpaceCombat" />
    </Property>
    <Property name="Difficulty" value="GcMissionDifficulty.xml">
      <Property name="MissionDifficulty" value="Normal" />
    </Property>
    <Property name="MinRank" value="0" />
    <Property name="CloseMissionGiver" value="False" />
    <Property name="IsGuildShopMission" value="False" />
    <Property name="IsPlanetProcMission" value="False" />
    <Property name="IsMultiplayerEventMission" value="False" />
    <Property name="RewardPenaltyOnAbandon" value="" />
    <Property name="Faction" />
    <Property name="Weighting" value="100" />
    <Property name="IgnoreCalculatedObjective" value="False" />
    <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
    <Property name="DefaultItemInitialWarpScanEvents" />
    <Property name="DefaultItemTypeForInitialWarp" value="None" />
    <Property name="BasePartBlueprints" />
  </Property>
  <Property name="AutoStart" value="None" />
  <Property name="RestartOnCompletion" value="False" />
  <Property name="CancelSetsComplete" value="False" />
  <Property name="Dialog" value="GcAlienPuzzleTable.xml">
    <Property name="Table">

      <Property value="GcAlienPuzzleEntry.xml">
        <Property name="ProgressionIndex" value="-1" />
        <Property name="MinProgressionForSelection" value="0" />
        <Property name="Id" value="I_HARMONIC_1" />
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="Type" value="GcInteractionType.xml">
          <Property name="InteractionType" value="None" />
        </Property>
        <Property name="Category" value="GcAlienPuzzleCategory.xml">
          <Property name="AlienPuzzleCategory" value="Default" />
        </Property>
        <Property name="AdditionalOptions" value="None" />
        <Property name="Title" value="TEXT_CIRCUIT_I1_LABEL" />
        <Property name="Text" value="TEXT_CIRCUIT_I1_STORYA" />
        <Property name="TextAlien" value="" />
        <Property name="TranslateAlienText" value="False" />
        <Property name="TranslationBrackets" value="False" />
        <Property name="ProgressiveDialogue" value="True" />
        <Property name="RequiresScanEvent" value="SE_HARMONIC" />
        <Property name="Options">
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="TEXT_CIRCUIT_I1_OPTION" />
            <Property name="Text" value="" />
            <Property name="IsAlien" value="False" />
            <Property name="Cost" value="" />
            <Property name="Rewards">
              <Property value="NMSString0x10.xml">
                <Property name="Value" value="R_ALARM" />
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
            <Property name="KeepOpen" value="True" />
            <Property name="DisplayCost" value="True" />
            <Property name="TruncateCost" value="False" />
            <Property name="MarkInteractionComplete" value="False" />
            <Property name="NextInteraction" value="I_HARMONIC_2" />
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
            <Property name="MarkInteractionComplete" value="False" />
            <Property name="NextInteraction" value="" />
            <Property name="SelectedOnBackOut" value="True" />
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
        <Property name="UseTitleOverrideInLabel" value="True" />
        <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
      </Property>

      <Property value="GcAlienPuzzleEntry.xml">
        <Property name="ProgressionIndex" value="-1" />
        <Property name="MinProgressionForSelection" value="0" />
        <Property name="Id" value="I_HARMONIC_2" />
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="Type" value="GcInteractionType.xml">
          <Property name="InteractionType" value="None" />
        </Property>
        <Property name="Category" value="GcAlienPuzzleCategory.xml">
          <Property name="AlienPuzzleCategory" value="Default" />
        </Property>
        <Property name="AdditionalOptions" value="None" />
        <Property name="Title" value="TEXT_CIRCUIT_I1_LABEL" />
        <Property name="Text" value="" />
        <Property name="TextAlien" value="" />
        <Property name="TranslateAlienText" value="False" />
        <Property name="TranslationBrackets" value="False" />
        <Property name="ProgressiveDialogue" value="True" />
        <Property name="RequiresScanEvent" value="" />
        <Property name="Options">
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="TEXT_CIRCUIT_I2_OPTION" />
            <Property name="Text" value="TEXT_CIRCUIT_I2_STORYD" />
            <Property name="IsAlien" value="False" />
            <Property name="Cost" value="C_HEART" />
            <Property name="Rewards">
              <Property value="NMSString0x10.xml">
                <Property name="Value" value="R_HARMONIC" />
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
            <Property name="MarkInteractionComplete" value="False" />
            <Property name="NextInteraction" value="" />
            <Property name="SelectedOnBackOut" value="True" />
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
        <Property name="AdvancedInteractionFlow">
          <Property value="GcPuzzleTextFlow.xml">
            <Property name="Text" value="TEXT_CIRCUIT_I2_STORYA" />
            <Property name="IsAlien" value="False" />
            <Property name="Title" value="" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="TranslateAlienTextOverride" value="None" />
            <Property name="BracketsOverride" value="None" />
            <Property name="AlienLanguageOverride" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="ShowHologram" value="True" />
          </Property>
          <Property value="GcPuzzleTextFlow.xml">
            <Property name="Text" value="TEXT_CIRCUIT_I2_STORYB" />
            <Property name="IsAlien" value="True" />
            <Property name="Title" value="TEXT_CIRCUIT_I1_LABEL" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="TranslateAlienTextOverride" value="None" />
            <Property name="BracketsOverride" value="None" />
            <Property name="AlienLanguageOverride" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="ShowHologram" value="True" />
          </Property>
          <Property value="GcPuzzleTextFlow.xml">
            <Property name="Text" value="TEXT_CIRCUIT_I2_STORYC" />
            <Property name="IsAlien" value="False" />
            <Property name="Title" value="" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="TranslateAlienTextOverride" value="None" />
            <Property name="BracketsOverride" value="None" />
            <Property name="AlienLanguageOverride" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="ShowHologram" value="True" />
          </Property>
        </Property>
        <Property name="PersistancyBufferOverride" value="None" />
        <Property name="CustomFreighterTextIndex" value="-1" />
        <Property name="RadialInteraction" value="False" />
        <Property name="UseTitleOverrideInLabel" value="True" />
        <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
      </Property>

    </Property>
  </Property>
  <Property name="ScanEvents">

    <Property value="GcScanEventData.xml">
      <Property name="Name" value="SE_HARMONIC" />
      <Property name="ForceInteraction" value="I_HARMONIC_1" />
      <Property name="ForceInteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="RobotCampTerminal" />
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
      <Property name="ClearForcedInteractionOnCompletion" value="True" />
      <Property name="BuildingPreventionRadius" value="50" />
      <Property name="UseMissionTradingDataOverride" value="False" />
      <Property name="AlwaysShow" value="False" />
      <Property name="NeverShow" value="False" />
      <Property name="ShowOnlyIfSequenceTarget" value="False" />
      <Property name="PlanetLabelText" value="" />
      <Property name="SurveyDistance" value="600" />
      <Property name="SurveyDiscoveryOSDMessage" value="TEXT_CIRCUIT_E1_TARGET" />
      <Property name="EventStartType" value="Special" />
      <Property name="EventEndType" value="Interact" />
      <Property name="EventPriority" value="Regular" />
      <Property name="CanEndFromOutsideMission" value="False" />
      <Property name="DisableMultiplayerSync" value="False" />
      <Property name="BlockStartedOnUseEvents" value="False" />
      <Property name="ReplaceEventIfAlreadyActive" value="False" />
      <Property name="BuildingLocation" value="RandomOnFarPlanet" />
      <Property name="BuildingType" value="BuildingClass" />
      <Property name="BuildingClass" value="GcBuildingClassification.xml">
        <Property name="BuildingClass" value="AbandonedRobotCamp" />
      </Property>
      <Property name="AllowFriendsBases" value="False" />
      <Property name="ForceWideRandom" value="False" />
      <Property name="MustFindSystem" value="False" />
      <Property name="AllowOverriddenBuildings" value="False" />
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
        <Property name="AllowUnsafeMatches" value="True" />
        <Property name="NeverAllowEmpty" value="True" />
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
        <Property name="AnyRGBBiome" value="True" />
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
        <Property name="AllowUnsafeMatches" value="True" />
        <Property name="NeverAllowEmpty" value="True" />
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
      <Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
      <Property name="MarkerLabel" value="TEXT_CIRCUIT_E1_MARKER" />
      <Property name="MarkerIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/OTHER/MISSION.DDS" />
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
        <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_29" />
      </Property>
      <Property name="IconTime" value="6" />
      <Property name="TooltipTime" value="16" />
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

  </Property>
  <Property name="Rewards">

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_ALARM" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardOSDMessage.xml">
              <Property name="Time" value="10" />
              <Property name="Message" value="" />
              <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="SETTLEMENT_ALARM" />
              </Property>
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="MessageColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="0.141" />
                <Property name="B" value="0.141" />
                <Property name="A" value="0.8" />
              </Property>
              <Property name="UseTimedMessage" value="False" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="SetWanted" />
            <Property name="Reward" value="GcRewardWantedLevel.xml">
              <Property name="Message" value="" />
              <Property name="Level" value="3" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_HARMONIC" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardWantedLevel.xml">
              <Property name="Message" value="" />
              <Property name="Level" value="0" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardOSDMessage.xml">
              <Property name="Time" value="0" />
              <Property name="Message" value="" />
              <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_33" />
              </Property>
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="MessageColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="0.141" />
                <Property name="B" value="0.141" />
                <Property name="A" value="0.8" />
              </Property>
              <Property name="UseTimedMessage" value="False" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="ITEM_CIRCUIT" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="True" />
              <Property name="ForceSpecialMessage" value="True" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

  </Property>
  <Property name="Costs">

    <Property value="GcCostTableEntry.xml">
      <Property name="Id" value="C_HEART" />
      <Property name="DisplayCost" value="True" />
      <Property name="DontCharge" value="False" />
      <Property name="HideOptionAndDisplayCostOnly" value="False" />
      <Property name="DisplayOnlyCostIfCantAfford" value="False" />
      <Property name="HideCostStringIfCanAfford" value="False" />
      <Property name="RemoveOptionIfCantAfford" value="False" />
      <Property name="InvertCanAffordOutcome" value="False" />
      <Property name="MustAffordInCreative" value="False" />
      <Property name="UseCommunityContributionCap" value="False" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
      <Property name="Cost" value="GcCostProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="SPIDER_PROD" />
        <Property name="Amount" value="1" />
        <Property name="UseDefaultAmount" value="False" />
      </Property>
    </Property>

  </Property>
  <Property name="TradingDataOverride" value="GcTradeData.xml">
    <Property name="AlwaysPresentProducts" />
    <Property name="AlwaysPresentSubstances" />
    <Property name="OptionalProducts" />
    <Property name="OptionalSubstances" />
    <Property name="MinItemsForSale" value="5" />
    <Property name="MaxItemsForSale" value="15" />
    <Property name="PercentageOfItemsAreProducts" value="0.3" />
    <Property name="BuyPriceIncreaseRedThreshold" value="20" />
    <Property name="BuyPriceDecreaseGreenThreshold" value="-10" />
    <Property name="SellPriceIncreaseGreenThreshold" value="10" />
    <Property name="SellPriceDecreaseRedThreshold" value="-20" />
    <Property name="ShowSeasonRewards" value="False" />
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
  <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="StartIsCancel" value="False" />
  <Property name="StartingConditions" />
  <Property name="CancelingConditions" />
  <Property name="FinalStageVersions" />
  <Property name="Stages">

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="False" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="DebugText" value="" />
        <Property name="ObjectiveID" value="TEXT_CIRCUIT_S1_OBJ" />
        <Property name="ObjectiveTipID" value="TEXT_CIRCUIT_S1_DESC" />
        <Property name="HasCategoryOverride" value="False" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="HasColourOverride" value="False" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="False" />
        <Property name="PrefixTitleText" value="" />
        <Property name="BlockPinning" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="None" />
        <Property name="IconStyle" value="Default" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions" />
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
              <Property name="Message" value="" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AnyTrue" />
              </Property>
              <Property name="Conditions">
                <Property value="GcMissionConditionIsCurrentMission.xml" />
              </Property>
              <Property name="AllowedToFormatObjectives" value="False" />
              <Property name="ForceAllowMissionRestart" value="False" />
              <Property name="ForceAllowMissionRestartEvent" value="" />
              <Property name="DebugText" value="" />
              <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                <Property name="MissionMarkup" value="None" />
              </Property>
            </Property>
          </Property>
      
          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
              <Property name="MissionUpdateMessage" value="Start" />
              <Property name="CustomMessageLocID" value="" />
              <Property name="CustomObjectiveLocID" value="" />
              <Property name="SetMissionSelected" value="False" />
              <Property name="WaitForMessageOver" value="True" />
              <Property name="ShowChangeMissionNotify" value="False" />
              <Property name="PlayMusicSting" value="None" />
              <Property name="DebugText" value="" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="1" />
              <Property name="DebugText" value="" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceGroup.xml">
              <Property name="Silent" value="True" />
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint.xml">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="" />
              <Property name="ObjectiveTipID" value="" />
              <Property name="HasCategoryOverride" value="False" />
              <Property name="OverrideCategory" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="False" />
              <Property name="ColourOverride" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PrefixTitle" value="False" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="False" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AnyTrue" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="False" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                <Property name="HasCustomNotifyTimer" value="False" />
                <Property name="NotifyDisplayTime" value="20" />
                <Property name="NotifyPauseTime" value="30" />
              </Property>
              <Property name="Conditions" />
              <Property name="Consequences" />
              <Property name="Stages">

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_CIRCUIT_S1_TIP1" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionLocation.xml">
                        <Property name="MissionPlayerLocation" value="InShipInSpace" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait.xml">
                    <Property name="Time" value="5" />
                    <Property name="DebugText" value="" />
                    <Property name="SuppressMessages" value="False" />
                    <Property name="MultiplyTimeBySeasonValue" value="False" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionIsCurrentMission.xml" />
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="False" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
                    <Property name="Category" value="GcMissionCategory.xml">
                      <Property name="MissionCategory" value="Mission" />
                    </Property>
                    <Property name="Time" value="0" />
                    <Property name="Message" value="" />
                    <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                      <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_16" />
                    </Property>
                    <Property name="OSDTime" value="8" />
                    <Property name="OSDMessage" value="TEXT_CIRCUIT_E1_MESSAGE" />
                    <Property name="OSDMessageSubtitle" value="" />
                    <Property name="OSDMessageColour" value="Colour.xml">
                      <Property name="R" value="0.314" />
                      <Property name="G" value="0.196" />
                      <Property name="B" value="0.804" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OSDMessageStyle" value="Standard" />
                    <Property name="OSDUseMissionIcon" value="True" />
                    <Property name="DisableIcon" value="False" />
                    <Property name="DisableTitlePrefix" value="False" />
                    <Property name="UseConditionsForTextFormatting" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>
                
                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
                    <Property name="Table" value="GcScanEventTableType.xml">
                      <Property name="ScanTable" value="Tutorial" />
                    </Property>
                    <Property name="Participant" value="GcPlayerMissionParticipantType.xml">
                      <Property name="ParticipantType" value="Primary" />
                    </Property>
                    <Property name="Event" value="SE_HARMONIC" />
                    <Property name="Time" value="0" />
                    <Property name="DoAerialScan" value="False" />
                    <Property name="AllowOtherPlayersBase" value="False" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_CIRCUIT_E1_TIP1" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AllTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionIsScanEventOnCurrentPlanet.xml">
                        <Property name="Event" value="SE_HARMONIC" />
                        <Property name="AllowInShip" value="False" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGetToScanEvent.xml">
                    <Property name="Message" value="TEXT_CIRCUIT_E1_TIP2" />
                    <Property name="GalaxyMapMessage" value="UI_SCANEVENT_GOTO_MAP" />
                    <Property name="Event" value="SE_HARMONIC" />
                    <Property name="Distance" value="20" />
                    <Property name="EndEventWhenReached" value="False" />
                    <Property name="Timeout" value="0" />
                    <Property name="DistanceTimeout" value="False" />
                    <Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
                    <Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
                      <Property name="ScanEventGPSHint" value="None" />
                    </Property>
                    <Property name="CanFormatObjectives" value="False" />
                    <Property name="SurveyInactiveHint" value="" />
                    <Property name="SurveySwapHint" value="" />
                    <Property name="SurveyHint" value="" />
                    <Property name="SurveyVehicleHint" value="" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGroup.xml">
                    <Property name="Silent" value="True" />
                    <Property name="Icon" value="TkTextureResource.xml">
                      <Property name="Filename" value="" />
                      <Property name="ResHandle" value="GcResource.xml">
                        <Property name="ResourceID" value="0" />
                      </Property>
                    </Property>
                    <Property name="PageHint" value="GcMissionPageHint.xml">
                      <Property name="MissionPageHint" value="None" />
                    </Property>
                    <Property name="PageDataLocID" value="" />
                    <Property name="BuildMenuHint" value="" />
                    <Property name="InventoryHint" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="ObjectiveID" value="" />
                    <Property name="ObjectiveTipID" value="" />
                    <Property name="HasCategoryOverride" value="False" />
                    <Property name="OverrideCategory" value="GcMissionCategory.xml">
                      <Property name="MissionCategory" value="Mission" />
                    </Property>
                    <Property name="HasColourOverride" value="False" />
                    <Property name="ColourOverride" value="Colour.xml">
                      <Property name="R" value="1" />
                      <Property name="G" value="1" />
                      <Property name="B" value="1" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="PrefixTitle" value="False" />
                    <Property name="PrefixTitleText" value="" />
                    <Property name="BlockPinning" value="False" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="HideFromLogIfConditionsMet" value="False" />
                    <Property name="RepeatLogic" value="None" />
                    <Property name="IconStyle" value="Default" />
                    <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                      <Property name="InputButton" value="None" />
                    </Property>
                    <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                      <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                      <Property name="FormattableObjective" value="" />
                      <Property name="FormattableObjectiveTip" value="" />
                    </Property>
                    <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                      <Property name="TargetMissionSurveyId" value="" />
                      <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                      <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                      <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                      <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                      <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
                    </Property>
                    <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                      <Property name="HasCustomNotifyTimer" value="False" />
                      <Property name="NotifyDisplayTime" value="20" />
                      <Property name="NotifyPauseTime" value="30" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionHasProduct.xml">
                        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                          <Property name="DefaultProductType" value="None" />
                        </Property>
                        <Property name="Product" value="ITEM_CIRCUIT" />
                        <Property name="Amount" value="1" />
                        <Property name="UseDefaultAmount" value="False" />
                        <Property name="SyncWithMissionFireteam" value="False" />
                        <Property name="ForceSearchFreighterAndChests" value="False" />
                        <Property name="SearchEveryShip" value="False" />
                        <Property name="SearchGrave" value="False" />
                        <Property name="SearchCookingIngredients" value="False" />
                        <Property name="TakeAmountFromSeasonData" value="False" />
                        <Property name="TakeIdFromSeasonData" value="False" />
                        <Property name="DependentOnSeasonMilestone" value="False" />
                        <Property name="UseAmountToAffordRecipe" value="" />
                        <Property name="TakeAffordRecipeFromSeasonData" value="False" />
                        <Property name="UseAffordRecipeForTextFormatting" value="False" />
                        <Property name="Purpose" value="GcItemNeedPurpose.xml">
                          <Property name="ItemPurpose" value="None" />
                        </Property>
                        <Property name="ForceInventoryHintAtAllTimes" value="False" />
                        <Property name="UseProductIconAsMissionIcon" value="False" />
                        <Property name="DoNotFormatText" value="False" />
                      </Property>
                    </Property>
                    <Property name="Consequences" />
                    <Property name="Stages">

                      <Property value="GcGenericMissionStage.xml">
                        <Property name="Versions" />
                        <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                          <Property name="Message" value="TEXT_CIRCUIT_S1_TIP2" />
                          <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                            <Property name="ConditionTest" value="AnyTrue" />
                          </Property>
                          <Property name="Conditions">
                            <Property value="GcMissionConditionHasProduct.xml">
                              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                                <Property name="DefaultProductType" value="None" />
                              </Property>
                              <Property name="Product" value="ITEM_CIRCUIT" />
                              <Property name="Amount" value="1" />
                              <Property name="UseDefaultAmount" value="False" />
                              <Property name="SyncWithMissionFireteam" value="False" />
                              <Property name="ForceSearchFreighterAndChests" value="False" />
                              <Property name="SearchEveryShip" value="False" />
                              <Property name="SearchGrave" value="False" />
                              <Property name="SearchCookingIngredients" value="False" />
                              <Property name="TakeAmountFromSeasonData" value="False" />
                              <Property name="TakeIdFromSeasonData" value="False" />
                              <Property name="DependentOnSeasonMilestone" value="False" />
                              <Property name="UseAmountToAffordRecipe" value="" />
                              <Property name="TakeAffordRecipeFromSeasonData" value="False" />
                              <Property name="UseAffordRecipeForTextFormatting" value="False" />
                              <Property name="Purpose" value="GcItemNeedPurpose.xml">
                                <Property name="ItemPurpose" value="None" />
                              </Property>
                              <Property name="ForceInventoryHintAtAllTimes" value="False" />
                              <Property name="UseProductIconAsMissionIcon" value="False" />
                              <Property name="DoNotFormatText" value="False" />
                            </Property>
                          </Property>
                          <Property name="AllowedToFormatObjectives" value="True" />
                          <Property name="ForceAllowMissionRestart" value="False" />
                          <Property name="ForceAllowMissionRestartEvent" value="" />
                          <Property name="DebugText" value="" />
                          <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                            <Property name="MissionMarkup" value="None" />
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

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceEndScanEvent.xml">
        <Property name="Event" value="SE_HARMONIC" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="1" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
        <Property name="MissionUpdateMessage" value="End" />
        <Property name="CustomMessageLocID" value="" />
        <Property name="CustomObjectiveLocID" value="TEXT_CIRCUIT_S1_OBJ" />
        <Property name="SetMissionSelected" value="False" />
        <Property name="WaitForMessageOver" value="True" />
        <Property name="ShowChangeMissionNotify" value="False" />
        <Property name="PlayMusicSting" value="None" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

  </Property>
  <Property name="ForcesPageHint" value="False" />
  <Property name="ForcesBuildMenuHint" value="False" />
  <Property name="IsProceduralAllowed" value="False" />
  <Property name="IsRecurring" value="False" />
  <Property name="IsLegacy" value="False" />
  <Property name="BlocksPinning" value="False" />
  <Property name="CanRenounce" value="True" />
  <Property name="UseCommunityMissionForLog" value="" />
  <Property name="TelemetryUpload" value="False" />
  <Property name="UseSeasonTitleOverride" value="False" />
</Property>
]]







----------------------------------------------------------------------------------------------------
-- mission for scanner activation
----------------------------------------------------------------------------------------------------

PROPERTY_MISSION_SCANNER =
[[
<Property value="GcGenericMissionSequence.xml">
  <Property name="MissionID" value="M_SCANNER" />
  <Property name="MissionClass" value="Secondary" />
  <Property name="MissionIsCritical" value="False" />
  <Property name="MissionObjective" value="" />
  <Property name="MissionTitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_SCANNER_TITLE" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_SCANNER_SUB" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_SCANNER_DESC" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescSwitchOverride" value="" />
  <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="UseScanEventDetailsInLogInfo" value="True" />
  <Property name="MissionIcon" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/OTHER/MISSION.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SHIP.ON.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SHIP.OFF.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionPriority" value="0" />
  <Property name="MissionCategory" value="GcMissionCategory.xml">
    <Property name="MissionCategory" value="Mission" />
  </Property>
  <Property name="MissionPageHint" value="GcMissionPageHint.xml">
    <Property name="MissionPageHint" value="None" />
  </Property>
  <Property name="MissionPageLocID" value="" />
  <Property name="MissionBuildMenuHint" value="" />
  <Property name="MissionHasColourOverride" value="False" />
  <Property name="MissionColourOverride" value="Colour.xml">
    <Property name="R" value="1" />
    <Property name="G" value="1" />
    <Property name="B" value="1" />
    <Property name="A" value="1" />
  </Property>
  <Property name="BeginCheckFrequency" value="1" />
  <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
    <Property name="PrimarySubstances" />
    <Property name="SecondarySubstances" />
    <Property name="PrimaryProducts" />
    <Property name="SecondaryProducts" />
  </Property>
  <Property name="PrefixTitle" value="True" />
  <Property name="NextMissionHint" value="" />
  <Property name="MessageComplete" value="Never" />
  <Property name="MessageStart" value="Never" />
  <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
    <Property name="Type" value="GcMissionType.xml">
      <Property name="MissionType" value="SpaceCombat" />
    </Property>
    <Property name="Difficulty" value="GcMissionDifficulty.xml">
      <Property name="MissionDifficulty" value="Normal" />
    </Property>
    <Property name="MinRank" value="0" />
    <Property name="CloseMissionGiver" value="False" />
    <Property name="IsGuildShopMission" value="False" />
    <Property name="IsPlanetProcMission" value="False" />
    <Property name="IsMultiplayerEventMission" value="False" />
    <Property name="RewardPenaltyOnAbandon" value="" />
    <Property name="Faction" />
    <Property name="Weighting" value="100" />
    <Property name="IgnoreCalculatedObjective" value="False" />
    <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
    <Property name="DefaultItemInitialWarpScanEvents" />
    <Property name="DefaultItemTypeForInitialWarp" value="None" />
    <Property name="BasePartBlueprints" />
  </Property>
  <Property name="AutoStart" value="None" />
  <Property name="RestartOnCompletion" value="False" />
  <Property name="CancelSetsComplete" value="False" />
  <Property name="Dialog" value="GcAlienPuzzleTable.xml">
    <Property name="Table">

      <Property value="GcAlienPuzzleEntry.xml">
        <Property name="ProgressionIndex" value="-1" />
        <Property name="MinProgressionForSelection" value="0" />
        <Property name="Id" value="I_SCANNER" />
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="Type" value="GcInteractionType.xml">
          <Property name="InteractionType" value="None" />
        </Property>
        <Property name="Category" value="GcAlienPuzzleCategory.xml">
          <Property name="AlienPuzzleCategory" value="Default" />
        </Property>
        <Property name="AdditionalOptions" value="None" />
        <Property name="Title" value="" />
        <Property name="Text" value="TEXT_SCANNER_I1_STORY" />
        <Property name="TextAlien" value="" />
        <Property name="TranslateAlienText" value="False" />
        <Property name="TranslationBrackets" value="False" />
        <Property name="ProgressiveDialogue" value="True" />
        <Property name="RequiresScanEvent" value="SE_SCANNER" />
        <Property name="Options">
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="TEXT_SCANNER_I1_OPTION" />
            <Property name="Text" value="TEXT_SCANNER_I1_RESULT" />
            <Property name="IsAlien" value="False" />
            <Property name="Cost" value="C_SCANNER" />
            <Property name="Rewards">
              <Property value="NMSString0x10.xml">
                <Property name="Value" value="R_MESSAGE" />
              </Property>
              <Property value="NMSString0x10.xml">
                <Property name="Value" value="R_WANTED" />
              </Property>
              <Property value="NMSString0x10.xml">
                <Property name="Value" value="R_TOKEN" />
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
            <Property name="MarkInteractionComplete" value="False" />
            <Property name="NextInteraction" value="" />
            <Property name="SelectedOnBackOut" value="True" />
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
        <Property name="UseTitleOverrideInLabel" value="True" />
        <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
      </Property>

    </Property>
  </Property>
  <Property name="ScanEvents">

    <Property value="GcScanEventData.xml">
      <Property name="Name" value="SE_SCANNER" />
      <Property name="ForceInteraction" value="I_SCANNER" />
      <Property name="ForceInteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="DistressBeacon" />
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
      <Property name="ClearForcedInteractionOnCompletion" value="True" />
      <Property name="BuildingPreventionRadius" value="50" />
      <Property name="UseMissionTradingDataOverride" value="False" />
      <Property name="AlwaysShow" value="False" />
      <Property name="NeverShow" value="False" />
      <Property name="ShowOnlyIfSequenceTarget" value="False" />
      <Property name="PlanetLabelText" value="" />
      <Property name="SurveyDistance" value="600" />
      <Property name="SurveyDiscoveryOSDMessage" value="TEXT_SCANNER_E1_TARGET" />
      <Property name="EventStartType" value="Special" />
      <Property name="EventEndType" value="Interact" />
      <Property name="EventPriority" value="Regular" />
      <Property name="CanEndFromOutsideMission" value="False" />
      <Property name="DisableMultiplayerSync" value="False" />
      <Property name="BlockStartedOnUseEvents" value="False" />
      <Property name="ReplaceEventIfAlreadyActive" value="False" />
      <Property name="BuildingLocation" value="RandomOnFarPlanet" />
      <Property name="BuildingType" value="BuildingClass" />
      <Property name="BuildingClass" value="GcBuildingClassification.xml">
        <Property name="BuildingClass" value="DistressSignal" />
      </Property>
      <Property name="AllowFriendsBases" value="False" />
      <Property name="ForceWideRandom" value="False" />
      <Property name="MustFindSystem" value="False" />
      <Property name="AllowOverriddenBuildings" value="False" />
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
        <Property name="AllowUnsafeMatches" value="True" />
        <Property name="NeverAllowEmpty" value="True" />
        <Property name="NeverAllowAbandoned" value="True" />
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
        <Property name="AnyRGBBiome" value="True" />
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
        <Property name="AllowUnsafeMatches" value="True" />
        <Property name="NeverAllowEmpty" value="True" />
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
      <Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
      <Property name="MarkerLabel" value="TEXT_SCANNER_E1_MARKER" />
      <Property name="MarkerIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/OTHER/MISSION.DDS" />
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
      <Property name="IconTime" value="6" />
      <Property name="TooltipTime" value="16" />
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

  </Property>
  <Property name="Rewards">

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_TOKEN" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="90" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="ITEM_TOKEN" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="5" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="ITEM_TOKEN" />
              <Property name="AmountMin" value="2" />
              <Property name="AmountMax" value="2" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="3" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProductRecipe.xml">
              <Property name="ID" value="ITEM_BOXA" />
              <Property name="Silent" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="SeasonRewardFormat" value="UI_BLUEPRINT_REWARD_FORMAT" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="2" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProductRecipe.xml">
              <Property name="ID" value="ITEM_BOXC" />
              <Property name="Silent" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="SeasonRewardFormat" value="UI_BLUEPRINT_REWARD_FORMAT" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_MESSAGE" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardOSDMessage.xml">
              <Property name="Time" value="10" />
              <Property name="Message" value="TEXT_SCANNER_I1_WANTED" />
              <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="INVALID_EVENT" />
              </Property>
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="TEXTURES/UI/HUD/WANTEDMESSAGEICON.DDS" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="MessageColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="0.141" />
                <Property name="B" value="0.141" />
                <Property name="A" value="0.8" />
              </Property>
              <Property name="UseTimedMessage" value="False" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_WANTED" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="90" />
            <Property name="LabelID" value="SetWanted" />
            <Property name="Reward" value="GcRewardWantedLevel.xml">
              <Property name="Message" value="" />
              <Property name="Level" value="3" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="10" />
            <Property name="LabelID" value="SetWanted" />
            <Property name="Reward" value="GcRewardWantedLevel.xml">
              <Property name="Message" value="" />
              <Property name="Level" value="4" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

  </Property>
  <Property name="Costs">

    <Property value="GcCostTableEntry.xml">
      <Property name="Id" value="C_SCANNER" />
      <Property name="DisplayCost" value="True" />
      <Property name="DontCharge" value="False" />
      <Property name="HideOptionAndDisplayCostOnly" value="False" />
      <Property name="DisplayOnlyCostIfCantAfford" value="False" />
      <Property name="HideCostStringIfCanAfford" value="False" />
      <Property name="RemoveOptionIfCantAfford" value="False" />
      <Property name="InvertCanAffordOutcome" value="False" />
      <Property name="MustAffordInCreative" value="False" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
      <Property name="Cost" value="GcCostInstalledTech.xml">
        <Property name="Id" value="TECH_SCANNER" />
        <Property name="InventoryToCheck" value="Weapon" />
      </Property>
    </Property>

  </Property>
  <Property name="TradingDataOverride" value="GcTradeData.xml">
    <Property name="AlwaysPresentProducts" />
    <Property name="AlwaysPresentSubstances" />
    <Property name="OptionalProducts" />
    <Property name="OptionalSubstances" />
    <Property name="MinItemsForSale" value="5" />
    <Property name="MaxItemsForSale" value="15" />
    <Property name="PercentageOfItemsAreProducts" value="0.3" />
    <Property name="BuyPriceIncreaseRedThreshold" value="20" />
    <Property name="BuyPriceDecreaseGreenThreshold" value="-10" />
    <Property name="SellPriceIncreaseGreenThreshold" value="10" />
    <Property name="SellPriceDecreaseRedThreshold" value="-20" />
    <Property name="ShowSeasonRewards" value="False" />
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
  <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="StartIsCancel" value="False" />
  <Property name="StartingConditions" />
  <Property name="CancelingConditions" />
  <Property name="FinalStageVersions" />
  <Property name="Stages">

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceSetCurrentMission.xml">
        <Property name="MissionID" value="" />
        <Property name="Silent" value="False" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="False" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="DebugText" value="" />
        <Property name="ObjectiveID" value="TEXT_SCANNER_S1_OBJ" />
        <Property name="ObjectiveTipID" value="TEXT_SCANNER_S1_DESC" />
        <Property name="HasCategoryOverride" value="False" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="HasColourOverride" value="False" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="False" />
        <Property name="PrefixTitleText" value="" />
        <Property name="BlockPinning" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="None" />
        <Property name="IconStyle" value="Default" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions" />
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="1" />
              <Property name="DebugText" value="" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceGroup.xml">
              <Property name="Silent" value="True" />
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint.xml">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="" />
              <Property name="ObjectiveTipID" value="" />
              <Property name="HasCategoryOverride" value="False" />
              <Property name="OverrideCategory" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="False" />
              <Property name="ColourOverride" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PrefixTitle" value="False" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="False" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AnyTrue" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="False" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                <Property name="HasCustomNotifyTimer" value="False" />
                <Property name="NotifyDisplayTime" value="20" />
                <Property name="NotifyPauseTime" value="30" />
              </Property>
              <Property name="Conditions" />
              <Property name="Consequences" />
              <Property name="Stages">

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait.xml">
                    <Property name="Time" value="5" />
                    <Property name="DebugText" value="" />
                    <Property name="SuppressMessages" value="False" />
                    <Property name="MultiplyTimeBySeasonValue" value="False" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
                    <Property name="Category" value="GcMissionCategory.xml">
                      <Property name="MissionCategory" value="Mission" />
                    </Property>
                    <Property name="Time" value="0" />
                    <Property name="Message" value="" />
                    <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                      <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_28" />
                    </Property>
                    <Property name="OSDTime" value="8" />
                    <Property name="OSDMessage" value="TEXT_SCANNER_E1_MESSAGE" />
                    <Property name="OSDMessageSubtitle" value="" />
                    <Property name="OSDMessageColour" value="Colour.xml">
                      <Property name="R" value="0.314" />
                      <Property name="G" value="0.196" />
                      <Property name="B" value="0.804" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OSDMessageStyle" value="Standard" />
                    <Property name="OSDUseMissionIcon" value="True" />
                    <Property name="DisableIcon" value="False" />
                    <Property name="DisableTitlePrefix" value="False" />
                    <Property name="UseConditionsForTextFormatting" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait.xml">
                    <Property name="Time" value="10" />
                    <Property name="DebugText" value="" />
                    <Property name="SuppressMessages" value="False" />
                    <Property name="MultiplyTimeBySeasonValue" value="False" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
                    <Property name="Table" value="GcScanEventTableType.xml">
                      <Property name="ScanTable" value="Tutorial" />
                    </Property>
                    <Property name="Participant" value="GcPlayerMissionParticipantType.xml">
                      <Property name="ParticipantType" value="Primary" />
                    </Property>
                    <Property name="Event" value="SE_SCANNER" />
                    <Property name="Time" value="0" />
                    <Property name="DoAerialScan" value="False" />
                    <Property name="AllowOtherPlayersBase" value="False" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_SCANNER_S1_TIP" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AllTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionIsScanEventOnCurrentPlanet.xml">
                        <Property name="Event" value="SE_SCANNER" />
                        <Property name="AllowInShip" value="False" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGetToScanEvent.xml">
                    <Property name="Message" value="TEXT_SCANNER_E1_TIP" />
                    <Property name="GalaxyMapMessage" value="UI_SCANEVENT_GOTO_MAP" />
                    <Property name="Event" value="SE_SCANNER" />
                    <Property name="Distance" value="20" />
                    <Property name="EndEventWhenReached" value="False" />
                    <Property name="Timeout" value="0" />
                    <Property name="DistanceTimeout" value="False" />
                    <Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
                    <Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
                      <Property name="ScanEventGPSHint" value="None" />
                    </Property>
                    <Property name="CanFormatObjectives" value="False" />
                    <Property name="SurveyInactiveHint" value="" />
                    <Property name="SurveySwapHint" value="" />
                    <Property name="SurveyHint" value="" />
                    <Property name="SurveyVehicleHint" value="" />
                    <Property name="DebugText" value="" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGroup.xml">
                    <Property name="Silent" value="True" />
                    <Property name="Icon" value="TkTextureResource.xml">
                      <Property name="Filename" value="" />
                      <Property name="ResHandle" value="GcResource.xml">
                        <Property name="ResourceID" value="0" />
                      </Property>
                    </Property>
                    <Property name="PageHint" value="GcMissionPageHint.xml">
                      <Property name="MissionPageHint" value="None" />
                    </Property>
                    <Property name="PageDataLocID" value="" />
                    <Property name="BuildMenuHint" value="" />
                    <Property name="InventoryHint" value="" />
                    <Property name="DebugText" value="" />
                    <Property name="ObjectiveID" value="" />
                    <Property name="ObjectiveTipID" value="" />
                    <Property name="HasCategoryOverride" value="False" />
                    <Property name="OverrideCategory" value="GcMissionCategory.xml">
                      <Property name="MissionCategory" value="Mission" />
                    </Property>
                    <Property name="HasColourOverride" value="False" />
                    <Property name="ColourOverride" value="Colour.xml">
                      <Property name="R" value="1" />
                      <Property name="G" value="1" />
                      <Property name="B" value="1" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="PrefixTitle" value="False" />
                    <Property name="PrefixTitleText" value="" />
                    <Property name="BlockPinning" value="False" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="HideFromLogIfConditionsMet" value="False" />
                    <Property name="RepeatLogic" value="None" />
                    <Property name="IconStyle" value="Default" />
                    <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                      <Property name="InputButton" value="None" />
                    </Property>
                    <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                      <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                      <Property name="FormattableObjective" value="" />
                      <Property name="FormattableObjectiveTip" value="" />
                    </Property>
                    <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                      <Property name="TargetMissionSurveyId" value="" />
                      <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                      <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                      <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                      <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                      <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
                    </Property>
                    <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                      <Property name="HasCustomNotifyTimer" value="False" />
                      <Property name="NotifyDisplayTime" value="20" />
                      <Property name="NotifyPauseTime" value="30" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionIsPlayerWanted.xml">
                        <Property name="Level" value="3" />
                        <Property name="Test" value="TkEqualityEnum.xml">
                          <Property name="EqualityEnum" value="GreaterEqual" />
                        </Property>
                      </Property>
                    </Property>
                    <Property name="Consequences" />
                    <Property name="Stages">

                      <Property value="GcGenericMissionStage.xml">
                        <Property name="Versions" />
                        <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                          <Property name="Message" value="TEXT_SCANNER_E1_TIP" />
                          <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                            <Property name="ConditionTest" value="AnyTrue" />
                          </Property>
                          <Property name="Conditions">
                            <Property value="GcMissionConditionIsPlayerWanted.xml">
                              <Property name="Level" value="3" />
                              <Property name="Test" value="TkEqualityEnum.xml">
                                <Property name="EqualityEnum" value="GreaterEqual" />
                              </Property>
                            </Property>
                          </Property>
                          <Property name="AllowedToFormatObjectives" value="True" />
                          <Property name="ForceAllowMissionRestart" value="False" />
                          <Property name="ForceAllowMissionRestartEvent" value="" />
                          <Property name="DebugText" value="" />
                          <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                            <Property name="MissionMarkup" value="None" />
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

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceEndScanEvent.xml">
        <Property name="Event" value="SE_SCANNER" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="1" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="True" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="DebugText" value="" />
        <Property name="ObjectiveID" value="" />
        <Property name="ObjectiveTipID" value="" />
        <Property name="HasCategoryOverride" value="False" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="HasColourOverride" value="False" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="False" />
        <Property name="PrefixTitleText" value="" />
        <Property name="BlockPinning" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyTrue" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="None" />
        <Property name="IconStyle" value="Default" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions">
          <Property value="GcMissionConditionIsPlayerWanted.xml">
            <Property name="Level" value="0" />
            <Property name="Test" value="TkEqualityEnum.xml">
              <Property name="EqualityEnum" value="LessEqual" />
            </Property>
          </Property>
        </Property>
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
              <Property name="Message" value="TEXT_SCANNER_S2_TIP" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AnyTrue" />
              </Property>
              <Property name="Conditions">
                <Property value="GcMissionConditionIsPlayerWanted.xml">
                  <Property name="Level" value="0" />
                  <Property name="Test" value="TkEqualityEnum.xml">
                    <Property name="EqualityEnum" value="LessEqual" />
                  </Property>
                </Property>
              </Property>
              <Property name="AllowedToFormatObjectives" value="True" />
              <Property name="ForceAllowMissionRestart" value="False" />
              <Property name="ForceAllowMissionRestartEvent" value="" />
              <Property name="DebugText" value="" />
              <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                <Property name="MissionMarkup" value="None" />
              </Property>
            </Property>
          </Property>

        </Property>
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="5" />
        <Property name="DebugText" value="" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceModifyStat.xml">
        <Property name="Stat" value="STAT_TOKENS" />
        <Property name="Amount" value="1" />
        <Property name="ModifyType" value="GcStatModifyType.xml">
          <Property name="ModifyType" value="Add" />
        </Property>
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
        <Property name="MissionUpdateMessage" value="End" />
        <Property name="CustomMessageLocID" value="" />
        <Property name="CustomObjectiveLocID" value="TEXT_SCANNER_S1_OBJ" />
        <Property name="SetMissionSelected" value="False" />
        <Property name="WaitForMessageOver" value="True" />
        <Property name="ShowChangeMissionNotify" value="False" />
        <Property name="PlayMusicSting" value="None" />
        <Property name="DebugText" value="" />
      </Property>
    </Property>

  </Property>
  <Property name="ForcesPageHint" value="False" />
  <Property name="ForcesBuildMenuHint" value="False" />
  <Property name="IsProceduralAllowed" value="False" />
  <Property name="IsRecurring" value="False" />
  <Property name="IsLegacy" value="False" />
  <Property name="BlocksPinning" value="False" />
  <Property name="CanRenounce" value="True" />
  <Property name="UseCommunityMissionForLog" value="" />
  <Property name="TelemetryUpload" value="False" />
  <Property name="UseSeasonTitleOverride" value="False" />
</Property>
]]



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_TUTORIALMISSIONS =     "METADATA\\SIMULATION\\MISSIONS\\TUTORIALMISSIONTABLE.MBIN"
FILE_STARTEDONUSEMISSION =  "METADATA\\SIMULATION\\MISSIONS\\STARTEDONUSEMISSIONTABLE.MBIN"

FILE_SPIDERMAN =            "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\NPCROBOT_SPIDER\\ENTITIES\\NPCROBOT_SPIDER.ENTITY.MBIN"



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
                    ["MBIN_FILE_SOURCE"] = FILE_STARTEDONUSEMISSION,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"MissionID","ROBOT_CAMP",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = 
                            {
                                PROPERTY_MISSION_ADVANCED,
                                PROPERTY_MISSION_PLATING,
                                PROPERTY_MISSION_FRAGMENT,
                                PROPERTY_MISSION_CIRCUIT,
                                PROPERTY_MISSION_SCANNER,
                                PROPERTY_MISSION_DISSONANT,
                            },
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_TUTORIALMISSIONS,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"MissionID","ROBOCHART_HINT",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = 
                            {
                              PROPERTY_TOOLTIP_ANOMALY,
                              PROPERTY_TOOLTIP_STATION,
                            },
                        },
                    },
                },

                -- testing spiderman as mission giver
                {
                    ["MBIN_FILE_SOURCE"] = FILE_SPIDERMAN,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VCT"] = {{"StartMissionOnUse","M_ADVANCED",},},
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