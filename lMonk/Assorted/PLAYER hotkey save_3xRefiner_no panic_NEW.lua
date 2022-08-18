--------------------------------------------------
-- EXCLUDED FROM BATCH
--------------------------------------------------
local desc = [[
  Add hotkey saving (quick action emote menu)
  Disable panic falling animation
  Upgrade suit refiner to 3 slots
]]------------------------------------------------

local SaveAnime = [[
	<Property value="TkAnimationData.xml">
		<Property name="Anim" value="SAVEGAME"/>
		<Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN"/>
		<Property name="AnimType" value="OneShot"/>
		<Property name="FrameStart" value="0"/>
		<Property name="FrameEnd" value="0"/>
		<Property name="StartNode" value=""/>
		<Property name="ExtraStartNodes"/>
		<Property name="Priority" value="0"/>
		<Property name="OffsetMin" value="0"/>
		<Property name="OffsetMax" value="0"/>
		<Property name="Delay" value="0"/>
		<Property name="Speed" value="1"/>
		<Property name="ActionStartFrame" value="0"/>
		<Property name="ActionFrame" value="-1"/>
		<Property name="CreatureSize" value="AllSizes"/>
		<Property name="Additive" value="False"/>
		<Property name="Mirrored" value="False"/>
		<Property name="Active" value="True"/>
		<Property name="AdditiveBaseAnim" value=""/>
		<Property name="AdditiveBaseFrame" value="0"/>
		<Property name="GameData" value="TkAnimationGameData.xml">
			<Property name="RootMotionEnabled" value="False"/>
			<Property name="BlockPlayerMovement" value="False"/>
			<Property name="BlockPlayerWeapon" value="Unblocked"/>
		</Property>
	</Property>
]]

local SaveInteraction = [[
	<Property value="TkReferenceComponentData.xml">
		<Property name="Reference" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/SAVE.SCENE.MBIN"/>
		<Property name="LSystem" value=""/>
	</Property>
	<Property value="GcTriggerActionComponentData.xml">
		<Property name="HideModel" value="False"/>
		<Property name="StartInactive" value="False"/>
		<Property name="States">
			<Property value="GcActionTriggerState.xml">
				<Property name="StateID" value="BOOT"/>
				<Property name="Triggers">
					<Property value="GcActionTrigger.xml">
						<Property name="Event" value="GcAnimFrameEvent.xml">
							<Property name="Anim" value="SAVEGAME"/>
							<Property name="FrameStart" value="0"/>
							<Property name="StartFromEnd" value="False"/>
						</Property>
						<Property name="Action">
							<Property value="GcGoToStateAction.xml">
								<Property name="State" value="SAVE"/>
								<Property name="Broadcast" value="True"/>
								<Property name="BroadcastLevel" value="Scene"/>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
		<Property name="Persistent" value="False"/>
		<Property name="PersistentState" value=""/>
		<Property name="ResetShotTimeOnStateChange" value="False"/>
		<Property name="LinkStateToBaseGrid" value="False"/>
	</Property>	
]]

local SaveEmote = [[
	<Property value="GcPlayerEmote.xml">
		<Property name="Title" value="Save"/>
		<Property name="ChatText" value=""/>
		<Property name="ChatUsesPrefix" value="False"/>
		<Property name="AnimationName" value="SAVEGAME"/>
		<Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/PLAYER/SAVE.DDS"/>
		</Property>
		<Property name="LinkedSpecialID" value=""/>
		<Property name="NeverShowInMenu" value="False"/>
		<Property name="LoopAnimUntilMove" value=""/>
		<Property name="CloseMenuOnSelect" value="False"/>
		<Property name="MoveToCancel" value="False"/>
		<Property name="GekAnimationName" value=""/>
		<Property name="GekLoopAnimUntilMove" value=""/>
		<Property name="AvailableUnderwater" value="False"/>
		<Property name="RidingAnimationName" value="SAVEGAME"/>
		<Property name="IsPetCommand" value="False"/>
		<Property name="PetCommandTitle" value=""/>
		<Property name="PetCommandIcon" value="TkTextureResource.xml">
			<Property name="Filename" value=""/>
		</Property>
	</Property>
	<Property value="GcPlayerEmote.xml">
		<Property name="Title" value="Save"/>
		<Property name="ChatText" value=""/>
		<Property name="ChatUsesPrefix" value="False"/>
		<Property name="AnimationName" value="SAVEGAME"/>
		<Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/PLAYER/SAVE.DDS"/>
		</Property>
		<Property name="LinkedSpecialID" value=""/>
		<Property name="NeverShowInMenu" value="False"/>
		<Property name="LoopAnimUntilMove" value=""/>
		<Property name="CloseMenuOnSelect" value="False"/>
		<Property name="MoveToCancel" value="False"/>
		<Property name="GekAnimationName" value=""/>
		<Property name="GekLoopAnimUntilMove" value=""/>
		<Property name="AvailableUnderwater" value="True"/>
		<Property name="RidingAnimationName" value="SAVEGAME"/>
		<Property name="IsPetCommand" value="False"/>
		<Property name="PetCommandTitle" value=""/>
		<Property name="PetCommandIcon" value="TkTextureResource.xml">
			<Property name="Filename" value=""/>
		</Property>
	</Property>
]]

local NullAnime = [[<?xml version="1.0" encoding="utf-8"?>
	<Data template="TkAnimMetadata">
		<Property name="FrameCount" value="10"/>
		<Property name="NodeCount" value="0"/>
		<Property name="NodeData"/>
		<Property name="AnimFrameData">
			<Property value="TkAnimNodeFrameData.xml">
				<Property name="Rotations"/>
				<Property name="Translations"/>
				<Property name="Scales"/>
			</Property>
		</Property>
		<Property name="StillFrameData" value="TkAnimNodeFrameData.xml">
			<Property name="Rotations"/>
			<Property name="Translations"/>
			<Property name="Scales"/>
		</Property>
	</Data>
]]

local SaveSchene = [[<?xml version="1.0" encoding="utf-8"?>
	<Data template="TkSceneNodeData">
		<Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SAVE"/>
		<Property name="NameHash" value="0"/>
		<Property name="Type" value="LOCATOR"/>
		<Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0"/>
			<Property name="TransY" value="0"/>
			<Property name="TransZ" value="0"/>
			<Property name="RotX" value="0"/>
			<Property name="RotY" value="0"/>
			<Property name="RotZ" value="0"/>
			<Property name="ScaleX" value="1"/>
			<Property name="ScaleY" value="1"/>
			<Property name="ScaleZ" value="1"/>
		</Property>
		<Property name="Attributes">
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="ATTACHMENT"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SAVE.ENTITY.MBIN"/>
			</Property>
		</Property>
		<Property name="Children">
	  </Property>
	</Data>
]]

SaveEntity = [[<?xml version="1.0" encoding="utf-8"?>
	<Data template="TkAttachmentData">
		<Property name="Components">
			<Property value="GcSimpleInteractionComponentData.xml">
				<Property name="SimpleInteractionType" value="Save"/>
				<Property name="InteractDistance" value="0"/>
				<Property name="Use2dInteractDistance" value="False"/>
				<Property name="Id" value=""/>
				<Property name="Rarity" value="GcRarity.xml">
					<Property name="Rarity" value="Common"/>
				</Property>
				<Property name="Size" value="GcSizeIndicator.xml">
					<Property name="SizeIndicator" value="Medium"/>
				</Property>
				<Property name="TriggerAction" value="INACTIVE"/>
				<Property name="TriggerActionOnPrepare" value=""/>
				<Property name="TriggerActionToggle" value=""/>
				<Property name="BroadcastTriggerAction" value="False"/>
				<Property name="Delay" value="0"/>
				<Property name="HideContents" value="True"/>
				<Property name="InteractIsCrime" value="False"/>
				<Property name="InteractFiendCrimeType" value="GcFiendCrime.xml">
					<Property name="FiendCrime" value="None"/>
				</Property>
				<Property name="InteractFiendCrimeChance" value="1"/>
				<Property name="InteractCrimeLevel" value="0"/>
				<Property name="NotifyEncounter" value="False"/>
				<Property name="ActivationCost" value="GcInteractionActivationCost.xml">
					<Property name="SubstanceId" value=""/>
					<Property name="AltIds"/>
					<Property name="Cost" value="0"/>
					<Property name="Repeat" value="False"/>
					<Property name="RequiredTech" value=""/>
				</Property>
				<Property name="StatToTrack" value="GcStatsEnum.xml">
					<Property name="GcStatEnum" value="None"/>
				</Property>
				<Property name="StartsBuried" value="False"/>
				<Property name="MustBeVisibleToInteract" value="False"/>
				<Property name="NeedsStorm" value="False"/>
				<Property name="Name" value=""/>
				<Property name="VRInteractMessage" value=""/>
				<Property name="TerminalMessage" value=""/>
				<Property name="ScanType" value=""/>
				<Property name="ScanData" value=""/>
				<Property name="ScanIcon" value="">
					<Property name="DiscoveryType" value="Unknown"/>
				</Property>
				<Property name="ActivateLocatorsFromRarity" value="False"/>
				<Property name="RarityLocators">
					<Property name="Common" value="NMSString0x10.xml">
						<Property name="Value" value=""/>
					</Property>
					<Property name="Uncommon" value="NMSString0x10.xml">
						<Property name="Value" value=""/>
					</Property>
					<Property name="Rare" value="NMSString0x10.xml">
						<Property name="Value" value=""/>
					</Property>
				</Property>
				<Property name="BaseBuildingTriggerActions"/>
				<Property name="RewardOverrideTable"/>
				<Property name="PersistencyBufferOverride"/>
				<Property name="UsePersonalPersistentBuffer" value="False"/>
				<Property name="ReseedOnRewardSuccess" value="False"/>
				<Property name="CanCollectInMech" value="False"/>
			</Property>
			<Property value="GcTriggerActionComponentData.xml">
				<Property name="HideModel" value="False"/>
				<Property name="StartInactive" value="False"/>
				<Property name="States">
					<Property value="GcActionTriggerState.xml">
						<Property name="StateID" value="BOOT"/>
						<Property name="Triggers">
							<Property value="GcActionTrigger.xml">
								<Property name="Event" value="GcStateTimeEvent.xml">
									<Property name="Seconds" value="0"/>
									<Property name="RandomSeconds" value="0"/>
								</Property>
								<Property name="Action">
									<Property value="GcGoToStateAction.xml">
										<Property name="State" value="WAIT_FOR_SAVE"/>
										<Property name="Broadcast" value="False"/>
										<Property name="BroadcastLevel" value="Local"/>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property value="GcActionTriggerState.xml">
						<Property name="StateID" value="SAVE"/>
						<Property name="Triggers">
							<Property value="GcActionTrigger.xml">
								<Property name="Event" value="GcStateTimeEvent.xml">
									<Property name="Seconds" value="0"/>
									<Property name="RandomSeconds" value="0"/>
								</Property>
								<Property name="Action">
									<Property value="GcPlayAudioAction.xml">
										<Property name="Sound" value="SignalScanner"/>
										<Property name="UseOcclusion" value="False"/>
										<Property name="OcclusionRadius" value="2"/>
									</Property>
									<Property value="GcFireSimpleInteractionAction.xml"/>
									<Property value="GcGoToStateAction.xml">
										<Property name="State" value="WAIT_FOR_SAVE"/>
										<Property name="Broadcast" value="False"/>
										<Property name="BroadcastLevel" value="Local"/>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property value="GcActionTriggerState.xml">
						<Property name="StateID" value="WAIT_FOR_SAVE"/>
						<Property name="Triggers">
							<Property value="GcActionTrigger.xml">
								<Property name="Event" value="GcAnimFrameEvent.xml">
									<Property name="Anim" value="SAVEGAME"/>
									<Property name="FrameStart" value="0"/>
									<Property name="StartFromEnd" value="False"/>
								</Property>
								<Property name="Action">
									<Property value="GcGoToStateAction.xml">
										<Property name="State" value="SAVE"/>
										<Property name="Broadcast" value="False"/>
										<Property name="BroadcastLevel" value="Local"/>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Persistent" value="False"/>
				<Property name="PersistentState" value=""/>
				<Property name="ResetShotTimeOnStateChange" value="False"/>
				<Property name="LinkStateToBaseGrid" value="False"/>
			</Property>
		</Property>
		<Property name="LodDistances">
			<Property value="0"/>
			<Property value="50"/>
			<Property value="80"/>
			<Property value="150"/>
			<Property value="500"/>
		</Property>
	</Data>
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL hotkey save_3xRefiner_no panic.pak',
	MOD_AUTHOR			= 'lMonk (original by Mjjstral)',
	NMS_VERSION			= 3.99,
	MOD_BATCHNAME		= '_MODELS ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Anim', '0H_GREET_MOB_04'},
				SECTION_ACTIVE		= 2,
				ADD_OPTION			= 'ADDAfterSection',
				ADD 				= SaveAnime
			},
			{
				PRECEDING_KEY_WORDS	= 'GcAntagonistComponentData.xml',
				ADD_OPTION			= 'ADDAfterSection',
				ADD 				= SaveInteraction
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', '0H_AIRBORNE', 'AnimId', '0H_FALL_PANIC'},
				VALUE_CHANGE_TABLE 	= {
					{'AnimId',		'0H_FALL_CTRL'},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', '1H_AIRBORNE', 'AnimId', '0H_FALL_PANIC'},
				VALUE_CHANGE_TABLE 	= {
					{'AnimId',		'1H_FALL_CTRL'},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Title', 'UI_SUIT_REFINER_NAME_L'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'VisibleMaintenanceSlots',	5},
					{'NumInputs',				3}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Title', 'UI_SUIT_REFINER_NAME_L', 'Id', 'MAINT_FUEL1'},
				VALUE_CHANGE_TABLE 	= {
					{'AmountEmptyTimePeriod', 900}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/UI/EMOTEMENU.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Emotes',
				ADD 				= SaveEmote
			}
		}
	}
}}},
	ADD_FILES	= {
		{
			FILE_DESTINATION = 'MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.EXML',
			FILE_CONTENT	 = NullAnime
		},
		{
			FILE_DESTINATION = 'MODELS/COMMON/PLAYER/PLAYERCHARACTER/SAVE.SCENE.EXML',
			FILE_CONTENT	 = SaveSchene
		},
		{
			FILE_DESTINATION = 'MODELS/COMMON/PLAYER/PLAYERCHARACTER/SAVE.ENTITY.EXML',
			FILE_CONTENT	 = SaveEntity
		},
	}
}
