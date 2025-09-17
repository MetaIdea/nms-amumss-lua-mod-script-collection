NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "DiscoverAllPlanetsEverywhere.pak",
["MOD_AUTHOR"]      = "Lenni",
["MOD_DESCRIPTION"] = "Enable hotkey planet discovery (quick action emote menu)",
["NMS_VERSION"]     = "6.04",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{  
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Anim","JETPACK_CLOSE",},						
							["LINE_OFFSET"]       = "+0",
							["REPLACE_TYPE"]      = "ADDAFTERSECTION",
							["ADD"] = 
[[
        <Property name="Anims" value="TkAnimationData">
          <Property name="Anim" value="DISCOVER" />
		  <Property name="Filename" value="MODELS/TESTS/EFFECTTEST.ANIM.MBIN" />
          <Property name="AnimType" value="OneShotBlendable" />
          <Property name="AnimGroupOverride" value="False" />
          <Property name="Priority" value="0" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="FrameEndGame" value="0" />
          <Property name="StartNode" value="" />
          <Property name="ExtraStartNodes" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="Mask" value="" />
          <Property name="OffsetMin" value="0" />
          <Property name="OffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionStartFrame" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="Actions" />
          <Property name="CreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
		  <Property name="Has30HzFrames" value="False" />
		  <Property name="GameData" value="TkAnimationGameData">
            <Property name="RootMotion" value="None" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
]]				
						},
						{
							["PRECEDING_KEY_WORDS"] = "Components", 
							["ADD"] = 
[[
		<Property name="Components" value="GcSimpleInteractionComponentData">
			<Property name="GcSimpleInteractionComponentData">
				<Property name="SimpleInteractionType" value="SuperDoopaScanner" />
				<Property name="InteractDistance" value="0.000000" />
				<Property name="Use2dInteractDistance" value="false" />
				<Property name="Id" value="" />
				<Property name="Rarity" value="GcRarity">
					<Property name="Rarity" value="Common" />
				</Property>
				<Property name="Size" value="GcSizeIndicator">
					<Property name="SizeIndicator" value="Medium" />
				</Property>
				<Property name="TriggerAction" value="INACTIVE" />
				<Property name="TriggerActionOnPrepare" value="" />
				<Property name="TriggerActionToggle" value="" />
				<Property name="DeactivateSimilarInteractionsNearbyRadius" value="0.000000" />
				<Property name="BroadcastTriggerAction" value="false" />
				<Property name="Delay" value="0.000000" />
				<Property name="HideContents" value="true" />
				<Property name="InteractIsCrime" value="false" />
				<Property name="InteractFiendCrimeType" value="GcFiendCrime">
					<Property name="FiendCrime" value="None" />
				</Property>
				<Property name="InteractFiendCrimeChance" value="1.000000" />
				<Property name="InteractCrimeLevel" value="0" />
				<Property name="IncreaseCorruptSentinelWanted" value="0" />
				<Property name="NotifyEncounter" value="false" />
				<Property name="ActivationCost" value="GcInteractionActivationCost">
					<Property name="SubstanceId" value="" />
					<Property name="AltIds" />
					<Property name="Cost" value="0" />
					<Property name="Repeat" value="false" />
					<Property name="RequiredTech" value="" />
					<Property name="UseCostID" value="" />
					<Property name="StartMissionOnCantAfford" value="" />
					<Property name="OnlyChargeDuringSeasons" />
				</Property>
				<Property name="StatToTrack" value="GcStatsEnum">
					<Property name="StatEnum" value="None" />
				</Property>
				<Property name="StartsBuried" value="false" />
				<Property name="MustBeVisibleToInteract" value="false" />
				<Property name="NeedsStorm" value="false" />
				<Property name="Name" value="UI_SCAN_ROOM_LABEL" />
				<Property name="ForceSubtitle" value="" />
				<Property name="VRInteractMessage" value="" />
				<Property name="TerminalHeading" value="" />
				<Property name="TerminalMessage" value="" />
				<Property name="ScanType" value="BINOC_INTERACTABLE" />
				<Property name="ScanData" value="" />
				<Property name="ScanIcon" value="GcDiscoveryType">
					<Property name="DiscoveryType" value="Unknown" />
				</Property>
				<Property name="ActivateLocatorsFromRarity" value="false" />
				<Property name="RarityLocators">
					<Property name="Common" value="" />
					<Property name="Uncommon" value="" />
					<Property name="Rare" value="" />
				</Property>
				<Property name="BaseBuildingTriggerActions" />
				<Property name="RewardOverrideTable" />
				<Property name="PersistencyBufferOverride" />
				<Property name="UsePersonalPersistentBuffer" value="false" />
				<Property name="ReseedOnRewardSuccess" value="false" />
				<Property name="CanCollectInMech" value="false" />
				<Property name="DisableAnimationUntilInteract" value="false" />
			</Property>
		</Property>

	  <Property name="Components" value="GcTriggerActionComponentData">
		<Property name="GcTriggerActionComponentData">
		  <Property name="HideModel" value="false" />
		  <Property name="StartInactive" value="false" />
		  <Property name="States">
			<Property name="States" value="GcActionTriggerState">
			  <Property name="StateID" value="BOOT" />
			  <Property name="Triggers">
				<Property name="Triggers" value="GcActionTrigger">
				  <Property name="Event" value="GcStateTimeEvent">
					<Property name="GcStateTimeEvent">
					  <Property name="Seconds" value="0" />
					  <Property name="RandomSeconds" value="0" />
					  <Property name="UseMissionClock" value="false" />				
					</Property>
				  </Property>
				  <Property name="Action">
					<Property name="Action" value="GcGoToStateAction">
					  <Property name="GcGoToStateAction">
						<Property name="State" value="WAIT_FOR_DISCOV" />
						<Property name="Broadcast" value="False" />
						<Property name="BroadcastLevel" value="GcBroadcastLevel">
						  <Property name="BroadcastLevel" value="Local" />
						</Property>
					  </Property>
					</Property>
				  </Property>
				</Property>
			  </Property>
			</Property>
			<Property name="States" value="GcActionTriggerState">
			  <Property name="StateID" value="DISCOVER" />
			  <Property name="Triggers">
				<Property name="Triggers" value="GcActionTrigger">
				  <Property name="Event" value="GcStateTimeEvent">
					<Property name="GcStateTimeEvent">
					  <Property name="Seconds" value="0" />
					  <Property name="RandomSeconds" value="0" />
					  <Property name="UseMissionClock" value="False" />				
					</Property>
				  </Property>
				  <Property name="Action">
					<Property name="Action" value="GcFireSimpleInteractionAction">
					  <Property name="GcFireSimpleInteractionAction" />
					</Property>
					<Property name="Action" value="GcGoToStateAction">
					  <Property name="GcGoToStateAction">
						<Property name="State" value="WAIT_FOR_DISCOV" />
						<Property name="Broadcast" value="False" />
						<Property name="BroadcastLevel" value="GcBroadcastLevel">
						  <Property name="BroadcastLevel" value="Local" />
						</Property>
					  </Property>				
					</Property>				
				  </Property>
				</Property>
			  </Property>
			</Property>
			<Property name="States" value="GcActionTriggerState">
			  <Property name="StateID" value="WAIT_FOR_DISCOV" />
			  <Property name="Triggers">
				<Property name="Triggers" value="GcActionTrigger">
				  <Property name="Event" value="GcAnimFrameEvent">
					<Property name="GcAnimFrameEvent">
					  <Property name="Anim" value="DISCOVER" />
					  <Property name="FrameStart" value="0" />
					  <Property name="StartFromEnd" value="False" />
					</Property>			  
				  </Property>			  
				  <Property name="Action">
					<Property name="Action" value="GcGoToStateAction">
					  <Property name="GcGoToStateAction">
						<Property name="State" value="DISCOVER" />
						<Property name="Broadcast" value="False" />
						<Property name="BroadcastLevel" value="GcBroadcastLevel">
						  <Property name="BroadcastLevel" value="Local" />
						</Property>
					  </Property>			
					</Property>			
				  </Property>
				</Property>	
			  </Property>
			</Property>
		  </Property>
		  <Property name="Persistent" value="false" />
		  <Property name="PersistentState" value="" />
		  <Property name="ResetShotTimeOnStateChange" value="false" />
		  <Property name="LinkStateToBaseGrid" value="false" />
		</Property>
      </Property>
]]

--[[
]]--
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\UI\EMOTEMENU.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Emotes"}, 
							["LINE_OFFSET"]         = "+0",
							["ADD"] = 
[[
		<Property name="Emotes" value="GcPlayerEmote">
			<Property name="Title" value="Discover" />
			<Property name="ChatText" value="" />
			<Property name="ChatUsesPrefix" value="false" />
			<Property name="EmoteID" value="DISCOVER" />
			<Property name="AnimationName" value="DISCOVER" />
			<Property name="PropData" value="GcPlayerEmotePropData">
				<Property name="Model" value="" />
				<Property name="Scale" value="0.000000" />
				<Property name="Hand" value="GcHand">
					<Property name="Hand" value="Right" />
				</Property>
				<Property name="IsHologram" value="false" />
				<Property name="ScanEffectNodeName" value="" />
				<Property name="ScanEffect" value="GcScanEffectData">
					<Property name="Id" value="" />
					<Property name="ScanEffectType" value="Building" />
					<Property name="Colour">
						<Property name="R" value="0.823000" />
						<Property name="G" value="0.475000" />
						<Property name="B" value="0.432000" />
						<Property name="A" value="1.000000" />
					</Property>
					<Property name="BasecolourIntensity" value="0.200000" />
					<Property name="ScanlinesSeparation" value="0.100000" />
					<Property name="FresnelIntensity" value="3.000000" />
					<Property name="GlowIntensity" value="0.000000" />
					<Property name="WaveOffset" value="0.000000" />
					<Property name="WaveActive" value="true" />
					<Property name="FixedUpAxis" value="false" />
					<Property name="Transparent" value="false" />
					<Property name="ModelFade" value="false" />
					<Property name="FadeInTime" value="0.200000" />
					<Property name="FadeOutTime" value="0.200000" />
				</Property>
				<Property name="DelayTime" value="0.000000" />
			</Property>
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/CATEGORIES/UPGRADECAT.SCAN.DDS" />
				<Property name="ResHandle" value="GcResource">
					<Property name="ResourceID" value="0" />
				</Property>
			</Property>
			<Property name="LinkedSpecialID" value="" />
			<Property name="NeverShowInMenu" value="false" />
			<Property name="LoopAnimUntilMove" value="" />
			<Property name="CloseMenuOnSelect" value="true" />
			<Property name="MoveToCancel" value="false" />
			<Property name="GekAnimationName" value="" />
			<Property name="GekLoopAnimUntilMove" value="" />
			<Property name="AvailableUnderwater" value="false" />
			<Property name="RidingAnimationName" value="DISCOVER" />
			<Property name="IsPetCommand" value="false" />
			<Property name="PetCommandTitle" value="" />
			<Property name="PetCommandIcon" value="TkTextureResource">
				<Property name="Filename" value="" />
				<Property name="ResHandle" value="GcResource">
					<Property name="ResourceID" value="0" />
				</Property>
			</Property>
			<Property name="IconResource" value="GcResource">
				<Property name="ResourceID" value="0" />
			</Property>
			<Property name="IconPetCommandResource" value="GcResource">
				<Property name="ResourceID" value="0" />
			</Property>
		</Property>
]]							
						}
					}
				}
			}
		}		
	},
    ["ADD_FILES"] = {
        {
            ["FILE_DESTINATION"] = "MODELS/TESTS/EFFECTTEST.ANIM.MXML",
            ["FILE_CONTENT"] = [[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAnimMetadata">
  <Property name="NodeData">
    <Property name="NodeData" value="TkAnimNodeData">
      <Property name="Node" value="AnimatedTrans" />
      <Property name="RotIndex" value="0" />
      <Property name="TransIndex" value="0" />
      <Property name="ScaleIndex" value="0" />
    </Property>
  </Property>
  <Property name="AnimFrameData">
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
  </Property>
  <Property name="StillFrameData" value="TkAnimNodeFrameData">
    <Property name="Rotations">
      <Property name="Rotations" value="Quaternion">
        <Property name="X" value="0" />
        <Property name="Y" value="0" />
        <Property name="Z" value="0" />
        <Property name="W" value="1" />
        <Property name="dropComponent" value="3" />
      </Property>
    </Property>
    <Property name="Translations">
      <Property name="Translations">
        <Property name="X" value="-0.73121876" />
        <Property name="Y" value="0.08333181" />
        <Property name="Z" value="-0.02858855" />
      </Property>
    </Property>
    <Property name="Scales">
      <Property name="Scales">
        <Property name="X" value="1.000000" />
        <Property name="Y" value="1.000000" />
        <Property name="Z" value="1.000000" />
      </Property>
    </Property>
  </Property>
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="Has30HzFrames" value="false" />
</Data>
]]
        }
    }
}