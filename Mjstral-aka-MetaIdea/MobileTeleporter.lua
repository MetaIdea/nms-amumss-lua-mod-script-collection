NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "zzzzzzzMobileTeleporter.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["MOD_DESCRIPTION"]			= "Teleport from anywhere",
["NMS_VERSION"]				= "2.0+",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{  
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Anims"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="TRIGGERANIM" />
          <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN" />
          <Property name="AnimType" value="OneShot" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="StartNode" value="" />
          <Property name="ExtraStartNodes" />
          <Property name="Priority" value="0" />
          <Property name="LoopOffsetMin" value="0" />
          <Property name="LoopOffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionFrameStart" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="ControlCreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
]]
							
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LodDistances"}, 
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= 
[[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>		  
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="WAIT_FOR_ACTION" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>			
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ACTION" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="SignalScanner" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>				
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="TELEPORTER" />
                </Property>
                <Property value="GcDisplayText.xml">
                  <Property name="HUDTextDisplayType" value="Tooltip" />
                  <Property name="Title" value="Teleporter active" />
                  <Property name="Subtitle1" value="" />
                  <Property name="Subtitle2" value="" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="WAIT_FOR_ACTION" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>				
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="WAIT_FOR_ACTION" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="TRIGGERANIM" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>			  
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ACTION" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
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
    <Property value="GcInteractionComponentData.xml">
      <Property name="InteractionAction" value="PressButton" />
      <Property name="InteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="Teleporter_Station" />
      </Property>
      <Property name="Renderer" value="TkModelRendererData.xml">
        <Property name="Camera" value="TkModelRendererCameraData.xml">
          <Property name="Distance" value="6.799998" />
          <Property name="Offset" value="Vector4f.xml">
            <Property name="x" value="1.879999" />
            <Property name="y" value="0.1" />
            <Property name="z" value="0" />
            <Property name="t" value="0" />
          </Property>
          <Property name="Pitch" value="3.599999" />
          <Property name="Rotate" value="27.6" />
          <Property name="LightPitch" value="45" />
          <Property name="LightRotate" value="45" />
          <Property name="Wander" value="TkCameraWanderData.xml">
            <Property name="CamWander" value="False" />
            <Property name="CamWanderPhase" value="0.003" />
            <Property name="CamWanderAmplitude" value="0.5" />
          </Property>
        </Property>
        <Property name="Fov" value="30" />
        <Property name="AspectRatio" value="1.7777" />
        <Property name="ThumbnailMode" value="None" />
        <Property name="FocusType" value="ResourceBounds" />
        <Property name="FocusLocator" value="" />
        <Property name="FocusOffset" value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property name="FocusInterpTime" value="0" />
        <Property name="BlendInTime" value="0.8" />
        <Property name="BlendInOffset" value="0" />
        <Property name="Anim" value="" />
        <Property name="HeightOffset" value="0.005" />
        <Property name="UsePlayerCameraInHmd" value="True" />
        <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="False" />
      </Property>
      <Property name="RendererAlt" value="TkModelRendererData.xml">
        <Property name="Camera" value="TkModelRendererCameraData.xml">
          <Property name="Distance" value="3.6" />
          <Property name="Offset" value="Vector4f.xml">
            <Property name="x" value="0" />
            <Property name="y" value="0.75" />
            <Property name="z" value="0" />
            <Property name="t" value="0" />
          </Property>
          <Property name="Pitch" value="-3.84" />
          <Property name="Rotate" value="0" />
          <Property name="LightPitch" value="45" />
          <Property name="LightRotate" value="45" />
          <Property name="Wander" value="TkCameraWanderData.xml">
            <Property name="CamWander" value="False" />
            <Property name="CamWanderPhase" value="0.003" />
            <Property name="CamWanderAmplitude" value="0.5" />
          </Property>
        </Property>
        <Property name="Fov" value="30" />
        <Property name="AspectRatio" value="1.7777" />
        <Property name="ThumbnailMode" value="None" />
        <Property name="FocusType" value="ResourceBounds" />
        <Property name="FocusLocator" value="" />
        <Property name="FocusOffset" value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property name="FocusInterpTime" value="0" />
        <Property name="BlendInTime" value="0.8" />
        <Property name="BlendInOffset" value="0" />
        <Property name="Anim" value="" />
        <Property name="HeightOffset" value="0.005" />
        <Property name="UsePlayerCameraInHmd" value="False" />
        <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="False" />
      </Property>
      <Property name="Race" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="AttractDistanceSq" value="9" />
      <Property name="RepeatInteraction" value="True" />
      <Property name="UseInteractCamera" value="True" />
      <Property name="BlendToCameraTime" value="1.5" />
      <Property name="BlendFromCameraTime" value="-1" />
      <Property name="ActivationCost" value="GcInteractionActivationCost.xml">
        <Property name="SubstanceId" value="" />
        <Property name="AltIds" />
        <Property name="Cost" value="0" />
        <Property name="Repeat" value="False" />
        <Property name="RequiredTech" value="" />
      </Property>
      <Property name="TriggerAction" value="TELEPORTER_STN" />
      <Property name="BroadcastTriggerAction" value="False" />
      <Property name="InteractAngle" value="360" />
      <Property name="InteractDistance" value="5" />
      <Property name="InteractInvertFace" value="False" />
      <Property name="SecondaryInteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="None" />
      </Property>
      <Property name="SecondaryActivationCost" value="GcInteractionActivationCost.xml">
        <Property name="SubstanceId" value="" />
        <Property name="AltIds" />
        <Property name="Cost" value="0" />
        <Property name="Repeat" value="False" />
        <Property name="RequiredTech" value="" />
      </Property>
      <Property name="EventRenderers" />
      <Property name="EventRenderersAlt" />
      <Property name="SecondaryCameraTransitionTime" value="1" />
      <Property name="DepthOfField" value="GcInteractionDof.xml">
        <Property name="IsEnabled" value="True" />
        <Property name="UseGlobals" value="True" />
        <Property name="NearPlaneMin" value="2" />
        <Property name="NearPlaneAdjust" value="1" />
        <Property name="FarPlane" value="3" />
        <Property name="FarFadeDistance" value="2" />
      </Property>
      <Property name="PuzzleMissionOverrideTable" />
      <Property name="StoryUtilityOverrideData" value="GcStoryUtilityOverride.xml">
        <Property name="Name" value="" />
        <Property name="Reward" value="" />
      </Property>
      <Property name="ReseedAfterRewardSuccess" value="False" />
      <Property name="UsePersonalPersistentBuffer" value="False" />
      <Property name="InWorldUIScaler" value="0" />
    </Property>
]]							
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\UI\EMOTEMENU.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Emotes"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Teleporter" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="TRIGGERANIM" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/DISCOVERY/PLANET.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="LoopAnimUntilMov" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Teleporter" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="TRIGGERANIM" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/DISCOVERY/PLANET.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="LoopAnimUntilMov" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
    </Property>	
]]							
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GenericTable"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="TELEPORTER" />
      <Property name="Common" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="TELEPORTER" />
              <Property name="ScanEventTable" value="Planet" />
              <Property name="DoAerialScan" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="TELEPORTER2" />
      <Property name="Common" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardIncrementInteractionIndex.xml">
              <Property name="InteractionToIncrement" value="GcInteractionType.xml">
                <Property name="InteractionType" value="Teleporter_Station" />
              </Property>
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Traders" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="TELEPORTER3" />
      <Property name="Common" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardSecondaryInteractionOptions.xml">
              <Property name="Options">
                <Property value="GcAlienPuzzleOption.xml">
                  <Property name="Name" value="ALL_REQUEST_NAV" />
                  <Property name="Text" value="ALL_REPLY_NAV" />
                  <Property name="IsAlien" value="False" />
                  <Property name="Cost" value="C_STARMAP" />
                  <Property name="Rewards">
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="SEC_STARMAP" />
                    </Property>
                  </Property>
                  <Property name="Mood" value="GcAlienMood.xml">
                    <Property name="Mood" value="Positive" />
                  </Property>
                  <Property name="Prop" value="GcNPCPropTypes.xml">
                    <Property name="NPCProp" value="DontCare" />
                  </Property>
                  <Property name="KeepOpen" value="False" />
                  <Property name="DisplayCost" value="True" />
                  <Property name="TruncateCost" value="False" />
                  <Property name="MarkInteractionComplete" value="True" />
                  <Property name="NextInteraction" value="" />
                  <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                    <Property name="AkEvent" value="INVALID_EVENT" />
                  </Property>
                  <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
                    <Property name="ConditionTest" value="AnyFalse" />
                  </Property>
                  <Property name="EnablingConditions" />
                  <Property name="EnablingConditionId" value="" />
                  <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
                    <Property name="WordCategory" value="MISC" />
                  </Property>
                </Property>
                <Property value="GcAlienPuzzleOption.xml">
                  <Property name="Name" value="U3_EXP_REQUEST_WORD" />
                  <Property name="Text" value="ALL_REPLY_WORD" />
                  <Property name="IsAlien" value="False" />
                  <Property name="Cost" value="TECH_COMM_SM" />
                  <Property name="Rewards">
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="EXP_WORD" />
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
                  <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                    <Property name="AkEvent" value="INVALID_EVENT" />
                  </Property>
                  <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
                    <Property name="ConditionTest" value="AnyFalse" />
                  </Property>
                  <Property name="EnablingConditions" />
                  <Property name="EnablingConditionId" value="" />
                  <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
                    <Property name="WordCategory" value="MISC" />
                  </Property>
                </Property>
                <Property value="GcAlienPuzzleOption.xml">
                  <Property name="Name" value="ALL_REQUEST_STD_LOW" />
                  <Property name="Text" value="ALL_REPLY_STANDING" />
                  <Property name="IsAlien" value="False" />
                  <Property name="Cost" value="KORVAXGIFT1" />
                  <Property name="Rewards">
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="SEC_STDLOW_EXP" />
                    </Property>
                  </Property>
                  <Property name="Mood" value="GcAlienMood.xml">
                    <Property name="Mood" value="Positive" />
                  </Property>
                  <Property name="Prop" value="GcNPCPropTypes.xml">
                    <Property name="NPCProp" value="DontCare" />
                  </Property>
                  <Property name="KeepOpen" value="False" />
                  <Property name="DisplayCost" value="True" />
                  <Property name="TruncateCost" value="False" />
                  <Property name="MarkInteractionComplete" value="True" />
                  <Property name="NextInteraction" value="" />
                  <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                    <Property name="AkEvent" value="INVALID_EVENT" />
                  </Property>
                  <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
                    <Property name="ConditionTest" value="AnyFalse" />
                  </Property>
                  <Property name="EnablingConditions" />
                  <Property name="EnablingConditionId" value="" />
                  <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
                    <Property name="WordCategory" value="MISC" />
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
                  <Property name="Prop" value="GcNPCPropTypes.xml">
                    <Property name="NPCProp" value="DontCare" />
                  </Property>
                  <Property name="KeepOpen" value="False" />
                  <Property name="DisplayCost" value="True" />
                  <Property name="TruncateCost" value="False" />
                  <Property name="MarkInteractionComplete" value="True" />
                  <Property name="NextInteraction" value="" />
                  <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                    <Property name="AkEvent" value="INVALID_EVENT" />
                  </Property>
                  <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
                    <Property name="ConditionTest" value="AnyFalse" />
                  </Property>
                  <Property name="EnablingConditions" />
                  <Property name="EnablingConditionId" value="" />
                  <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
                    <Property name="WordCategory" value="MISC" />
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCANNING\SCANEVENTTABLEPLANET.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Events"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
        <Property value="GcScanEventData.xml">
          <Property name="Name" value="TELEPORTER" />
          <Property name="ForceInteraction" value="" />
          <Property name="ForceInteractionType" value="GcInteractionType.xml">
            <Property name="InteractionType" value="Teleporter_Station" />
          </Property>
          <Property name="ForceBroken" value="False" />
          <Property name="ForceFixed" value="False" />
          <Property name="ForceOverridesAll" value="True" />
          <Property name="IsCommunityPortalOverride" value="False" />
          <Property name="ClearForcedInteractionOnCompletion" value="False" />
          <Property name="AlwaysShow" value="False" />
          <Property name="NeverShow" value="False" />
          <Property name="PlanetLabelText" value="" />
          <Property name="EventStartType" value="None" />
          <Property name="EventEndType" value="None" />
          <Property name="EventPriority" value="Regular" />
          <Property name="CanEndFromOutsideMission" value="False" />
          <Property name="DisableMultiplayerSync" value="False" />
          <Property name="ReplaceEventIfAlreadyActive" value="False" />
          <Property name="BuildingLocation" value="Random" />
          <Property name="BuildingType" value="Any" />
          <Property name="BuildingClass" value="GcBuildingClassification.xml">
            <Property name="BuildingClass" value="None" />
          </Property>
          <Property name="AllowFriendBases" value="True" />
          <Property name="SolarSystemLocation" value="Local" />
          <Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
            <Property name="UseStarType" value="False" />
            <Property name="UseWealth" value="False" />
            <Property name="Usetrading" value="False" />
            <Property name="Userace" value="GcAlienRace.xml">
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
            <Property name="NeedsWaterPlanet" value="False" />
            <Property name="NeedsExtremeSentinelPlanet" value="False" />
            <Property name="NeedsBiome" value="False" />
            <Property name="AnyRGBBiome" value="False" />
            <Property name="NeedsBiomeType" value="GcBiomeType.xml">
              <Property name="Biome" value="Lush" />
            </Property>
            <Property name="NeedsEmptySystem" value="False" />
            <Property name="NeedsAbandonedSystem" value="False" />
            <Property name="NeedsResourceHint" value="" />
            <Property name="NeedsHighCreatureLevel" value="False" />
            <Property name="AllowUnsafeMatches" value="False" />
            <Property name="NeverAllowEmpty" value="False" />
            <Property name="SamePlanetAsEvent" value="" />
          </Property>
          <Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
            <Property name="UseStarType" value="False" />
            <Property name="UseWealth" value="False" />
            <Property name="Usetrading" value="False" />
            <Property name="Userace" value="GcAlienRace.xml">
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
            <Property name="NeedsWaterPlanet" value="False" />
            <Property name="NeedsExtremeSentinelPlanet" value="False" />
            <Property name="NeedsBiome" value="False" />
            <Property name="AnyRGBBiome" value="False" />
            <Property name="NeedsBiomeType" value="GcBiomeType.xml">
              <Property name="Biome" value="Lush" />
            </Property>
            <Property name="NeedsEmptySystem" value="False" />
            <Property name="NeedsAbandonedSystem" value="False" />
            <Property name="NeedsResourceHint" value="" />
            <Property name="NeedsHighCreatureLevel" value="False" />
            <Property name="AllowUnsafeMatches" value="False" />
            <Property name="NeverAllowEmpty" value="False" />
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
          <Property name="OSDMessage" value="" />
          <Property name="InterstellarOSDMessage" value="" />
          <Property name="MarkerLabel" value="UI_WIKI_GAS3_MARKER" />
          <Property name="MarkerIcon" value="TkTextureResource.xml">
            <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/UPDATE3/GAS.1.DDS" />
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
          <Property name="TooltipMessage" value="TIP_FACTORY" />
        </Property>
]]							
						}
					}
				}				
			}
		}		
	},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\ANIMS\EMOTES\NULL.ANIM.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkAnimMetadata">
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="NodeData" /> 
  <Property name="AnimFrameData">
    <Property value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />  
	<Property name="Translations" /> 
	<Property name="Scales" />
    </Property>  
  </Property>	
  <Property name="StillFrameData" value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />  
	<Property name="Translations" /> 
	<Property name="Scales" />	  
 </Property>
</Data>	
]]			
		}
	}
}


TimeWarp =
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="TELEPORTER" />
      <Property name="Common" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardTimeWarp.xml">
              <Property name="Dummy" value="True" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]]