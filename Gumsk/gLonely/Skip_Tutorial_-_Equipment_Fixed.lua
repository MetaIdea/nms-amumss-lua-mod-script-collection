SKIPTUT = 
[[
    <Property value="GcGenericMissionSequence.xml">
      <Property name="MissionID" value="SKIP_TUT" />
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
      <Property name="MissionIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
      <Property name="MissionIconSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
      <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
      <Property name="MissionPriority" value="-5" />
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
      <Property name="AutoStart" value="NotCreative" />
      <Property name="RestartOnCompletion" value="False" />
      <Property name="CancelSetsComplete" value="False" />
      <Property name="Dialog" value="GcAlienPuzzleTable.xml">
        <Property name="Table" />
      </Property>
      <Property name="ScanEvents" />
      <Property name="Rewards">
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="R_SKIP_NEXUS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardNexus.xml">
                  <Property name="Allow" value="True" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="R_SKIP_TECH" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMultiSpecificTechRecipes.xml">
                  <Property name="TechIds">
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TERRAINEDITOR" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="HYPERDRIVE" />
                    </Property>
                  </Property>
                  <Property name="DisplayTechId" value="" />
                  <Property name="SetName" value="" />
                  <Property name="Silent" value="True" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="R_SKIP_PRODS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMultiSpecificProductRecipes.xml">
                  <Property name="ProductIds">
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CARBON_SEAL" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BUILD_REFINER1" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ANTIMATTER" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="AM_HOUSING" />
                    </Property>
					<Property value="NMSString0x10.xml">
                      <Property name="Value" value="MICROCHIP" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BASE_FLAG" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BP_ANALYSER" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="T_DOOR1" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="T_WALL" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="T_FLOOR" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="T_ROOF6" />
                    </Property>
					<Property value="NMSString0x10.xml">
                      <Property name="Value" value="PLANTPOT3" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="FLAG1" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BUILDLIGHT2" />
                    </Property>
                  </Property>
                  <Property name="DisplayProductId" value="" />
                  <Property name="SetName" value="" />
                  <Property name="Silent" value="True" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="R_SKIP_MISS" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="List">
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardCompleteMultiMission.xml">
                  <Property name="Missions">
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TUT_NEXT1" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TUT_NEXT1A" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TUT_NEXT1B" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TUT_NEXT1C" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TUT_NEXT1D" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TUT_NEXT2" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TUT_NEXT3" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TUT_NEXT4" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TUT_NEXT5" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TUT_REPAIR_SHIP" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TUT_ADV_MATS" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TUT_FIRST_WALK" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TUT_BASEBUILD" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="FIRST_BP_DUMMY" />
                    </Property>
                  </Property>
                </Property>
                <Property name="LabelID" value="" />
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardMission.xml">
                  <Property name="Mission" value="TUT_TRANSITION" />
                  <Property name="SetAsSelected" value="True" />
                  <Property name="FailRewardIfMissionActive" value="False" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcGenericRewardTableEntry.xml">
          <Property name="Id" value="R_SKIP_WIKI" />
          <Property name="List" value="GcRewardTableItemList.xml">
            <Property name="RewardChoice" value="GiveAll" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="List" />
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
      <Property name="FinalStageVersions">
	    <Property value="GcGenericMissionVersionProgress.xml">
          <Property name="Version" value="15" />
          <Property name="Progress" value="4" />
        </Property>
	  </Property>
      <Property name="Stages">
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions">
            <Property value="GcGenericMissionVersionProgress.xml">
              <Property name="Version" value="15" />
              <Property name="Progress" value="0" />
            </Property>
          </Property>
		  <Property name="Stage" value="GcMissionSequenceReward.xml">
            <Property name="Message" value="" />
            <Property name="Reward" value="R_SKIP_NEXUS" />
            <Property name="CanOverride" value="False" />
            <Property name="DebugText" value="enable the nexus" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions">
            <Property value="GcGenericMissionVersionProgress.xml">
              <Property name="Version" value="15" />
              <Property name="Progress" value="1" />
            </Property>
          </Property>
          <Property name="Stage" value="GcMissionSequenceReward.xml">
            <Property name="Message" value="" />
            <Property name="Reward" value="R_SKIP_TECH" />
            <Property name="CanOverride" value="False" />
            <Property name="DebugText" value="award techs" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions">
            <Property value="GcGenericMissionVersionProgress.xml">
              <Property name="Version" value="15" />
              <Property name="Progress" value="2" />
            </Property>
          </Property>
          <Property name="Stage" value="GcMissionSequenceReward.xml">
            <Property name="Message" value="" />
            <Property name="Reward" value="R_SKIP_PRODS" />
            <Property name="CanOverride" value="False" />
            <Property name="DebugText" value="award prods" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions">
            <Property value="GcGenericMissionVersionProgress.xml">
              <Property name="Version" value="15" />
              <Property name="Progress" value="3" />
            </Property>
          </Property>
          <Property name="Stage" value="GcMissionSequenceReward.xml">
            <Property name="Message" value="" />
            <Property name="Reward" value="R_SKIP_MISS" />
            <Property name="CanOverride" value="False" />
            <Property name="DebugText" value="shut down missions" />
          </Property>
        </Property>
        <Property value="GcGenericMissionStage.xml">
          <Property name="Versions">
            <Property value="GcGenericMissionVersionProgress.xml">
              <Property name="Version" value="15" />
              <Property name="Progress" value="4" />
            </Property>
          </Property>
          <Property name="Stage" value="GcMissionSequenceReward.xml">
            <Property name="Message" value="" />
            <Property name="Reward" value="R_SKIP_WIKI" />
            <Property name="CanOverride" value="False" />
            <Property name="DebugText" value="setup the guide" />
          </Property>
        </Property>
      </Property>
      <Property name="ForcesPageHint" value="False" />
      <Property name="ForcesBuildMenuHint" value="False" />
      <Property name="IsProceduralAllowed" value="False" />
      <Property name="IsRecurring" value="False" />
      <Property name="IsLegacy" value="False" />
      <Property name="BlocksPinning" value="False" />
      <Property name="TelemetryUpload" value="False" />
	  <Property name="UseSeasonTitleOverride" value="False" />
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "Skip Tutorial - Equipment Broken.pak",
["MOD_DESCRIPTION"]	= "Skip tutorial missions but your equipment still needs to be repaired or installed",
["MOD_AUTHOR"]		= "HauntedKobra",
["NMS_VERSION"]		= "3.71",
["MODIFICATIONS"]	= {
{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\TUTORIALMISSIONTABLE.MBIN",
			["EXML_CHANGE_TABLE"] 	= {
				{
					["PRECEDING_KEY_WORDS"] = {"Missions",},
					["ADD"] 				= SKIPTUT,
				}
			},   
		},  
	}
}
}}