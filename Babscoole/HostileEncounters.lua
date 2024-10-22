NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "zzz_hostileencounters_v101.pak",
["MOD_AUTHOR"]    = "camus",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.75",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\LIVINGSHIP\LARGE\LOWUMBRELLA.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MediumPlantData", "Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\LIVINGSHIP\SHARED\LARGEPLANT.ENTITY.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\LIVINGSHIP\LARGE\SINGLESUMMER.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Data", "Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\LIVINGSHIP\SHARED\MEDIUMPLANTDATA.ENTITY.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\LIVINGSHIP\LARGE\SUMMERUMBRELLA.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "data", "Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\LIVINGSHIP\SHARED\LARGEPLANT.ENTITY.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\LIVINGSHIP\LARGE\LARGEEGGHOLDER\ENTITIES\EGGHOLDER.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UseBasePartOptimisation", "True"},
                                {"IncreaseFiendWanted",     "True"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\BIOMES\LIVINGSHIP\MEDIUM\ARRAYSHELL.SCENE.MBIN",
                        "MODELS\PLANETS\BIOMES\LIVINGSHIP\MEDIUM\FROZENSPIKE.SCENE.MBIN",
                        "MODELS\PLANETS\BIOMES\LIVINGSHIP\MEDIUM\HOTROCKLIFTED.SCENE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Data", "Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\LIVINGSHIP\SHARED\LARGEROCK.ENTITY.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\LIVINGSHIP\MEDIUM\CURLYTENDRILS.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Data", "Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\LIVINGSHIP\SHARED\LARGEPLANT.ENTITY.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\BIOMES\LIVINGSHIP\MEDIUM\HOTROCK.SCENE.MBIN",
                        "MODELS\PLANETS\BIOMES\LIVINGSHIP\MEDIUM\SUMMERSPIKE.SCENE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Data", "Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\LIVINGSHIP\SHARED\MEDIUMROCKSCAN.ENTITY.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\BIOMES\LIVINGSHIP\MEDIUM\HOTTENDRILS.SCENE.MBIN",
                        "MODELS\PLANETS\BIOMES\LIVINGSHIP\MEDIUM\SPINDLEEGG.SCENE.MBIN",
                        "MODELS\PLANETS\BIOMES\LIVINGSHIP\MEDIUM\SPINDLESUMMER.SCENE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Data", "Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\LIVINGSHIP\SHARED\MEDIUMPLANT.ENTITY.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\LIVINGSHIP\MEDIUM\MEDIUMPLANT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MediumPlantData", "Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\LIVINGSHIP\SHARED\LARGEPLANT.ENTITY.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\LIVINGSHIP\MEDIUM\MEDIUMPLANT\ENTITIES\MEDIUMPLANTDATA.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UseBasePartOptimisation", "True"},
                                {"IncreaseFiendWanted",     "True"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS\PLANETS\BIOMES\COMMON\PLANTS\LARGEPLANT\ENTITIES\LARGEPLANT.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\LIVINGSHIP\SHARED\LARGEPLANT.ENTITY.MBIN", "REMOVE"},
                        {"MODELS\PLANETS\BIOMES\COMMON\ROCKS\LARGE\LARGEROCK\ENTITIES\LARGEROCK.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\LIVINGSHIP\SHARED\LARGEROCK.ENTITY.MBIN", "REMOVE"},
                        {"MODELS\PLANETS\BIOMES\COMMON\PLANTS\MEDIUMPLANT\ENTITIES\MEDIUMPLANT.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\LIVINGSHIP\SHARED\MEDIUMPLANT.ENTITY.MBIN", "REMOVE"},
                        {"MODELS\PLANETS\BIOMES\COMMON\ROCKS\MEDIUM\MEDIUMROCK\ENTITIES\MEDIUMROCKSCAN.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\LIVINGSHIP\SHARED\MEDIUMROCKSCAN.ENTITY.MBIN", "REMOVE"},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\BIOMES\LIVINGSHIP\SHARED\LARGEPLANT.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\LIVINGSHIP\SHARED\LARGEROCK.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\LIVINGSHIP\SHARED\MEDIUMPLANT.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\LIVINGSHIP\SHARED\MEDIUMROCKSCAN.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UseBasePartOptimisation", "True"},
                                {"IncreaseFiendWanted",     "True"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TABLES\FLEETMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Missions"},
                            ["ADD_OPTION"] = "ADDendSECTION", 
                            ["ADD"] =
[[
    <Property value="GcGenericMissionSequence.xml">
      <Property name="MissionID" value="INFESTED" />
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
      <Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides.xml">
        <Property name="ApplicableSeasonNumbers" />
        <Property name="MissionTitle" value="" />
        <Property name="MissionSubtitle" value="" />
        <Property name="MissionDescription" value="" />
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
      <Property name="WikiMissionBlockedBySeasons" />
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
      <Property name="RestartOnCompletion" value="True" />
      <Property name="CancelSetsComplete" value="False" />
      <Property name="Dialog" value="GcAlienPuzzleTable.xml">
        <Property name="Table" />
      </Property>
      <Property name="ScanEvents" />
      <Property name="Rewards">
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="DAFIENDS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="IncrementStat" value="" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardActivateFiends.xml">
                  <Property name="SpawnID" value="" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Costs" />
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
            <Property name="TerrainTarget" value="" />
            <Property name="DebugText" value="must be abandoned system" />
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
            <Property name="AutoPinRepairs" value="False" />
            <Property name="BlockSpaceBattles" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AllFalse" />
            </Property>
            <Property name="HideFromLogIfConditionsMet" value="False" />
            <Property name="DoConsequencesIfNeverActivated" value="True" />
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="GalMapPathOverride" value="None" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
              <Property name="ApplicableSeasonNumbers" />
              <Property name="OverrideObjective" value="" />
              <Property name="OverrideObjectiveTip" value="" />
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
            <Property name="Conditions">
              <Property value="GcMissionConditionAbandonedOrEmptySystem.xml">
                <Property name="MissionSystemType" value="Abandoned" />
              </Property>
            </Property>
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
                  <Property name="TerrainTarget" value="" />
                  <Property name="DebugText" value="1st random wait" />
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
                  <Property name="AutoPinRepairs" value="False" />
                  <Property name="BlockSpaceBattles" value="False" />
                  <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                    <Property name="ConditionTest" value="AllTrue" />
                  </Property>
                  <Property name="HideFromLogIfConditionsMet" value="False" />
                  <Property name="DoConsequencesIfNeverActivated" value="True" />
                  <Property name="RepeatLogic" value="None" />
                  <Property name="IconStyle" value="Default" />
                  <Property name="GalMapPathOverride" value="None" />
                  <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                    <Property name="InputButton" value="None" />
                  </Property>
                  <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                    <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                    <Property name="FormattableObjective" value="" />
                    <Property name="FormattableObjectiveTip" value="" />
                  </Property>
                  <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
                    <Property name="ApplicableSeasonNumbers" />
                    <Property name="OverrideObjective" value="" />
                    <Property name="OverrideObjectiveTip" value="" />
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
                  <Property name="Conditions">
                    <Property value="GcMissionConditionPercentageChance.xml">
                      <Property name="Percent" value="50" />
                      <Property name="Seeded" value="False" />
                      <Property name="OverrideZeroSeed" value="True" />
                      <Property name="OverrideMissionSeedWithRandomSeed" value="True" />
                    </Property>
                  </Property>
                  <Property name="Consequences" />
                  <Property name="Stages">
                    <Property value="GcGenericMissionStage.xml">
                      <Property name="Versions" />
                      <Property name="Stage" value="GcMissionSequenceWait.xml">
                        <Property name="Time" value="30" />
                        <Property name="DebugText" value="1st wait" />
                        <Property name="SuppressMessages" value="False" />
                        <Property name="MultiplyTimeBySeasonValue" value="False" />
                      </Property>
                    </Property>
                  </Property>
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
                  <Property name="TerrainTarget" value="" />
                  <Property name="DebugText" value="2nd random wait" />
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
                  <Property name="AutoPinRepairs" value="False" />
                  <Property name="BlockSpaceBattles" value="False" />
                  <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                    <Property name="ConditionTest" value="AllTrue" />
                  </Property>
                  <Property name="HideFromLogIfConditionsMet" value="False" />
                  <Property name="DoConsequencesIfNeverActivated" value="True" />
                  <Property name="RepeatLogic" value="None" />
                  <Property name="IconStyle" value="Default" />
                  <Property name="GalMapPathOverride" value="None" />
                  <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                    <Property name="InputButton" value="None" />
                  </Property>
                  <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                    <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                    <Property name="FormattableObjective" value="" />
                    <Property name="FormattableObjectiveTip" value="" />
                  </Property>
                  <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
                    <Property name="ApplicableSeasonNumbers" />
                    <Property name="OverrideObjective" value="" />
                    <Property name="OverrideObjectiveTip" value="" />
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
                  <Property name="Conditions">
                    <Property value="GcMissionConditionPercentageChance.xml">
                      <Property name="Percent" value="75" />
                      <Property name="Seeded" value="False" />
                      <Property name="OverrideZeroSeed" value="True" />
                      <Property name="OverrideMissionSeedWithRandomSeed" value="True" />
                    </Property>
                  </Property>
                  <Property name="Consequences" />
                  <Property name="Stages">
                    <Property value="GcGenericMissionStage.xml">
                      <Property name="Versions" />
                      <Property name="Stage" value="GcMissionSequenceWait.xml">
                        <Property name="Time" value="30" />
                        <Property name="DebugText" value="2nd wait" />
                        <Property name="SuppressMessages" value="False" />
                        <Property name="MultiplyTimeBySeasonValue" value="False" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions" />
                <Property name="Stage" value="GcMissionSequenceWait.xml">
                  <Property name="Time" value="30" />
                  <Property name="DebugText" value="3rd wait" />
                  <Property name="SuppressMessages" value="False" />
		  <Property name="MultiplyTimeBySeasonValue" value="False" />
                </Property>
              </Property>
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions" />
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="" />
                  <Property name="Reward" value="DAFIENDS" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="summon fiends" />
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
      <Property name="TakeCommunityMissionIDFromSeasonData" value="False" />
      <Property name="TelemetryUpload" value="False" />
      <Property name="UseSeasonTitleOverride" value="False" />
    </Property>
    <Property value="GcGenericMissionSequence.xml">
      <Property name="MissionID" value="WEIRDTHREAT" />
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
      <Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides.xml">
        <Property name="ApplicableSeasonNumbers" />
        <Property name="MissionTitle" value="" />
        <Property name="MissionSubtitle" value="" />
        <Property name="MissionDescription" value="" />
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
      <Property name="WikiMissionBlockedBySeasons" />
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
      <Property name="RestartOnCompletion" value="True" />
      <Property name="CancelSetsComplete" value="False" />
      <Property name="Dialog" value="GcAlienPuzzleTable.xml">
        <Property name="Table" />
      </Property>
      <Property name="ScanEvents" />
      <Property name="Rewards">
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="THEPOPO" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="IncrementStat" value="" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardWantedLevel.xml">
                  <Property name="Message" value="" />
                  <Property name="Level" value="3" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Costs" />
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
            <Property name="TerrainTarget" value="" />
            <Property name="DebugText" value="must be weird planet" />
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
            <Property name="AutoPinRepairs" value="False" />
            <Property name="BlockSpaceBattles" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AllFalse" />
            </Property>
            <Property name="HideFromLogIfConditionsMet" value="False" />
            <Property name="DoConsequencesIfNeverActivated" value="True" />
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="GalMapPathOverride" value="None" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
              <Property name="ApplicableSeasonNumbers" />
              <Property name="OverrideObjective" value="" />
              <Property name="OverrideObjectiveTip" value="" />
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
            <Property name="Conditions">
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Weird" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
            </Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions" />
                <Property name="Stage" value="GcMissionSequenceWait.xml">
                  <Property name="Time" value="120" />
                  <Property name="DebugText" value="overstayed welcome" />
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
                  <Property name="TerrainTarget" value="" />
                  <Property name="DebugText" value="building proximity check" />
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
                  <Property name="AutoPinRepairs" value="False" />
                  <Property name="BlockSpaceBattles" value="False" />
                  <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                    <Property name="ConditionTest" value="AnyFalse" />
                  </Property>
                  <Property name="HideFromLogIfConditionsMet" value="False" />
                  <Property name="DoConsequencesIfNeverActivated" value="True" />
                  <Property name="RepeatLogic" value="Loop" />
                  <Property name="IconStyle" value="Default" />
                  <Property name="GalMapPathOverride" value="None" />
                  <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                    <Property name="InputButton" value="None" />
                  </Property>
                  <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                    <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                    <Property name="FormattableObjective" value="" />
                    <Property name="FormattableObjectiveTip" value="" />
                  </Property>
                  <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
                    <Property name="ApplicableSeasonNumbers" />
                    <Property name="OverrideObjective" value="" />
                    <Property name="OverrideObjectiveTip" value="" />
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
                        <Property name="TerrainTarget" value="" />
                        <Property name="DebugText" value="summon police if needed" />
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
                        <Property name="AutoPinRepairs" value="False" />
                        <Property name="BlockSpaceBattles" value="False" />
                        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                          <Property name="ConditionTest" value="AllTrue" />
                        </Property>
                        <Property name="HideFromLogIfConditionsMet" value="False" />
                        <Property name="DoConsequencesIfNeverActivated" value="True" />
                        <Property name="RepeatLogic" value="None" />
                        <Property name="IconStyle" value="Default" />
                        <Property name="GalMapPathOverride" value="None" />
                        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                          <Property name="InputButton" value="None" />
                        </Property>
                        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                          <Property name="FormattableObjective" value="" />
                          <Property name="FormattableObjectiveTip" value="" />
                        </Property>
                        <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
                          <Property name="ApplicableSeasonNumbers" />
                          <Property name="OverrideObjective" value="" />
                          <Property name="OverrideObjectiveTip" value="" />
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
                        <Property name="Conditions">
                          <Property value="GcMissionConditionIsPlayerWanted.xml">
                            <Property name="Level" value="0" />
                            <Property name="Test" value="TkEqualityEnum.xml">
                              <Property name="EqualityEnum" value="Greater" />
                            </Property>
                          </Property>
                        </Property>
                        <Property name="Consequences" />
                        <Property name="Stages">
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
                              <Property name="OSDTime" value="6" />
                              <Property name="OSDMessage" value="UI_CORE_ACT1_STEP13_MSG6" />
                              <Property name="OSDMessageSubtitle" value="" />
                              <Property name="OSDMessageColour" value="Colour.xml">
                                <Property name="R" value="1" />
                                <Property name="G" value="0.141" />
                                <Property name="B" value="0.141" />
                                <Property name="A" value="0.8" />
                              </Property>
                              <Property name="OSDMessageStyle" value="Standard" />
                              <Property name="OSDUseMissionIcon" value="False" />
                              <Property name="DisableIcon" value="False" />
                              <Property name="DisableTitlePrefix" value="False" />
                              <Property name="UseConditionsForTextFormatting" />
                              <Property name="DebugText" value="show detected message" />
                            </Property>
                          </Property>
                          <Property value="GcGenericMissionStage.xml">
                            <Property name="Versions" />
                            <Property name="Stage" value="GcMissionSequenceReward.xml">
                              <Property name="Message" value="" />
                              <Property name="Reward" value="THEPOPO" />
                              <Property name="DoMissionBoardOverride" value="False" />
                              <Property name="Silent" value="False" />
                              <Property name="RewardInventoryOverride" value="None" />
                              <Property name="DebugText" value="summon police" />
                            </Property>
                          </Property>
                        </Property>
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
                        <Property name="TerrainTarget" value="" />
                        <Property name="DebugText" value="wait after police gone" />
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
                        <Property name="AutoPinRepairs" value="False" />
                        <Property name="BlockSpaceBattles" value="False" />
                        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                          <Property name="ConditionTest" value="AllFalse" />
                        </Property>
                        <Property name="HideFromLogIfConditionsMet" value="False" />
                        <Property name="DoConsequencesIfNeverActivated" value="True" />
                        <Property name="RepeatLogic" value="None" />
                        <Property name="IconStyle" value="Default" />
                        <Property name="GalMapPathOverride" value="None" />
                        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                          <Property name="InputButton" value="None" />
                        </Property>
                        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                          <Property name="FormattableObjective" value="" />
                          <Property name="FormattableObjectiveTip" value="" />
                        </Property>
                        <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
                          <Property name="ApplicableSeasonNumbers" />
                          <Property name="OverrideObjective" value="" />
                          <Property name="OverrideObjectiveTip" value="" />
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
                        <Property name="Conditions">
                          <Property value="GcMissionConditionIsPlayerWanted.xml">
                            <Property name="Level" value="0" />
                            <Property name="Test" value="TkEqualityEnum.xml">
                              <Property name="EqualityEnum" value="Equal" />
                            </Property>
                          </Property>
                        </Property>
                        <Property name="Consequences" />
                        <Property name="Stages">
                          <Property value="GcGenericMissionStage.xml">
                            <Property name="Versions" />
                            <Property name="Stage" value="GcMissionSequenceWait.xml">
                              <Property name="Time" value="7.5" />
                              <Property name="DebugText" value="wait" />
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
      <Property name="TakeCommunityMissionIDFromSeasonData" value="False" />
      <Property name="TelemetryUpload" value="False" />
      <Property name="UseSeasonTitleOverride" value="False" />
    </Property>
    <Property value="GcGenericMissionSequence.xml">
      <Property name="MissionID" value="EXOTICTHREAT" />
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
      <Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides.xml">
        <Property name="ApplicableSeasonNumbers" />
        <Property name="MissionTitle" value="" />
        <Property name="MissionSubtitle" value="" />
        <Property name="MissionDescription" value="" />
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
      <Property name="WikiMissionBlockedBySeasons" />
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
      <Property name="RestartOnCompletion" value="True" />
      <Property name="CancelSetsComplete" value="False" />
      <Property name="Dialog" value="GcAlienPuzzleTable.xml">
        <Property name="Table" />
      </Property>
      <Property name="ScanEvents">
        <Property value="GcScanEventData.xml">
          <Property name="Name" value="SE_ANY_BUILDING" />
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
          <Property name="MustMatchStoryUtilityPuzzle" value="" />
          <Property name="ForceBroken" value="False" />
          <Property name="ForceFixed" value="False" />
          <Property name="ReplacementMaintData" value="" />
          <Property name="ForceOverridesAll" value="False" />
          <Property name="ForceOverrideEncounter" value="" />
          <Property name="IsCommunityPortalOverride" value="False" />
          <Property name="ClearForcedInteractionOnCompletion" value="False" />
          <Property name="BuildingPreventionRadius" value="0" />
          <Property name="UseMissionTradingDataOverride" value="False" />
          <Property name="AlwaysShow" value="False" />
          <Property name="NeverShow" value="True" />
          <Property name="ShowOnlyIfSequenceTarget" value="False" />
          <Property name="PlanetLabelText" value="" />
          <Property name="SurveyDistance" value="0" />
          <Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD" />
          <Property name="EventStartType" value="Special" />
          <Property name="EventEndType" value="None" />
          <Property name="EventPriority" value="Regular" />
          <Property name="CanEndFromOutsideMission" value="False" />
          <Property name="DisableMultiplayerSync" value="False" />
          <Property name="BlockStartedOnUseEvents" value="False" />
          <Property name="ReplaceEventIfAlreadyActive" value="True" />
          <Property name="BuildingLocation" value="Nearest" />
          <Property name="BuildingType" value="Any" />
          <Property name="BuildingClass" value="GcBuildingClassification.xml">
            <Property name="BuildingClass" value="None" />
          </Property>
          <Property name="AllowFriendsBases" value="False" />
          <Property name="ForceWideRandom" value="False" />
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
            <Property name="SuitableForWeirdCreatureDiscovery" value="False" />
            <Property name="SuitableForRobotCreatureDiscovery" value="False" />
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
            <Property name="SuitableForWeirdCreatureDiscovery" value="False" />
            <Property name="SuitableForRobotCreatureDiscovery" value="False" />
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
            <Property name="AkEvent" value="UI_NEW_DISCOVERY" />
          </Property>
          <Property name="IconTime" value="4" />
          <Property name="TooltipTime" value="10" />
          <Property name="TooltipRepeats" value="False" />
          <Property name="ShowEndTooltip" value="True" />
          <Property name="TooltipMessage" value="" />
          <Property name="MissionMessageOnInteract" value="" />
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
          <Property name="Id" value="CORRUPTION" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="IncrementStat" value="" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardActivateCorruptedDrone.xml">
                  <Property name="EncounterComponentScanEvent" value="SE_ANY_BUILDING" />
                  <Property name="SummonRadius" value="15" />
                  <Property name="GuardsToSpawn" value="5" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Costs" />
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
            <Property name="TerrainTarget" value="" />
            <Property name="DebugText" value="must be exotic planet" />
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
            <Property name="AutoPinRepairs" value="False" />
            <Property name="BlockSpaceBattles" value="False" />
            <Property name="ConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AllFalse" />
            </Property>
            <Property name="HideFromLogIfConditionsMet" value="False" />
            <Property name="DoConsequencesIfNeverActivated" value="True" />
            <Property name="RepeatLogic" value="None" />
            <Property name="IconStyle" value="Default" />
            <Property name="GalMapPathOverride" value="None" />
            <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
              <Property name="InputButton" value="None" />
            </Property>
            <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
              <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
              <Property name="FormattableObjective" value="" />
              <Property name="FormattableObjectiveTip" value="" />
            </Property>
            <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
              <Property name="ApplicableSeasonNumbers" />
              <Property name="OverrideObjective" value="" />
              <Property name="OverrideObjectiveTip" value="" />
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
            <Property name="Conditions">
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Red" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Green" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
              <Property value="GcMissionConditionBiomeType.xml">
                <Property name="Type" value="GcBiomeType.xml">
                  <Property name="Biome" value="Blue" />
                </Property>
                <Property name="AnyInfested" value="False" />
              </Property>
            </Property>
            <Property name="Consequences" />
            <Property name="Stages">
              <Property value="GcGenericMissionStage.xml">
                <Property name="Versions" />
                <Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
                  <Property name="Table" value="GcScanEventTableType.xml">
                    <Property name="ScanTable" value="Tutorial" />
                  </Property>
                  <Property name="Participant" value="GcPlayerMissionParticipantType.xml">
                    <Property name="ParticipantType" value="None" />
                  </Property>
                  <Property name="Event" value="SE_ANY_BUILDING" />
                  <Property name="Time" value="0" />
                  <Property name="DoAerialScan" value="False" />
                  <Property name="AllowOtherPlayersBase" value="False" />
                  <Property name="IgnoreIfAlreadyActive" value="False" />
                  <Property name="DebugText" value="get building" />
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
                  <Property name="TerrainTarget" value="" />
                  <Property name="DebugText" value="building proximity check" />
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
                  <Property name="AutoPinRepairs" value="False" />
                  <Property name="BlockSpaceBattles" value="False" />
                  <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                    <Property name="ConditionTest" value="AllFalse" />
                  </Property>
                  <Property name="HideFromLogIfConditionsMet" value="False" />
                  <Property name="DoConsequencesIfNeverActivated" value="True" />
                  <Property name="RepeatLogic" value="None" />
                  <Property name="IconStyle" value="Default" />
                  <Property name="GalMapPathOverride" value="None" />
                  <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                    <Property name="InputButton" value="None" />
                  </Property>
                  <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                    <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                    <Property name="FormattableObjective" value="" />
                    <Property name="FormattableObjectiveTip" value="" />
                  </Property>
                  <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
                    <Property name="ApplicableSeasonNumbers" />
                    <Property name="OverrideObjective" value="" />
                    <Property name="OverrideObjectiveTip" value="" />
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
                  <Property name="Conditions">
                    <Property value="GcMissionConditionNearScanEvent.xml">
                      <Property name="Event" value="SE_ANY_BUILDING" />
                      <Property name="Distance" value="500" />
                      <Property name="AllowInShip" value="True" />
                      <Property name="RequiresFullFireteam" value="False" />
                      <Property name="MustMatchThisMissionIDSeed" value="True" />
                      <Property name="ReturnTrueIfMarkerGone" value="True" />
                    </Property>
                  </Property>
                  <Property name="Consequences" />
                  <Property name="Stages">
                    <Property value="GcGenericMissionStage.xml">
                      <Property name="Versions" />
                      <Property name="Stage" value="GcMissionSequenceGetToScanEvent.xml">
                        <Property name="Message" value="" />
                        <Property name="GalaxyMapMessage" value="" />
                        <Property name="GalaxyMapMessageNotSpace" value="" />
                        <Property name="NexusMessage" value="" />
                        <Property name="Event" value="SE_ANY_BUILDING" />
                        <Property name="Distance" value="50" />
                        <Property name="EndEventWhenReached" value="False" />
                        <Property name="Timeout" value="0" />
                        <Property name="DistanceTimeout" value="False" />
                        <Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
                        <Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
                          <Property name="ScanEventGPSHint" value="None" />
                        </Property>
                        <Property name="CanFormatObjectives" value="True" />
                        <Property name="AlwaysAllowInShip" value="False" />
                        <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                        <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                        <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                        <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
                        <Property name="DebugText" value="get to building" />
                      </Property>
                    </Property>
                    <Property value="GcGenericMissionStage.xml">
                      <Property name="Versions" />
                      <Property name="Stage" value="GcMissionSequenceReward.xml">
                        <Property name="Message" value="NPC_CORE_ACT2_4_LANG" />
                        <Property name="Reward" value="CORRUPTION" />
                        <Property name="DoMissionBoardOverride" value="False" />
                        <Property name="Silent" value="False" />
                        <Property name="RewardInventoryOverride" value="None" />
                        <Property name="DebugText" value="summon corrupt sentinels" />
                      </Property>
                    </Property>
                    <Property value="GcGenericMissionStage.xml">
                      <Property name="Versions" />
                      <Property name="Stage" value="GcMissionSequenceWaitForWarps.xml">
                        <Property name="Message" value="" />
                        <Property name="Amount" value="1" />
                        <Property name="DebugText" value="just blocking progress" />
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
            <Property name="Event" value="SE_ANY_BUILDING" />
            <Property name="DebugText" value="clean up" />
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
      <Property name="TakeCommunityMissionIDFromSeasonData" value="False" />
      <Property name="TelemetryUpload" value="False" />
      <Property name="UseSeasonTitleOverride" value="False" />
    </Property>
]]
                        },
                    }
                },
            }
        }
    }
}