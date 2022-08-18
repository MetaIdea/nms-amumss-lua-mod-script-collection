--------------------------------------------------
local desc = [[
  Add hotkey saving (quick action emote menu)
  Disable panic falling animation
  Upgrade suit refiner to 3 slots
]]------------------------------------------------

local player_anim = [[
	<Property value="TkAnimationData.xml">
		<Property name="Anim" value="SAVEGAME"/>
		<Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN"/>
		<Property name="AnimType" value="OneShot"/>
		<Property name="Speed" value="1"/>
		<Property name="ActionFrame" value="-1"/>
		<Property name="CreatureSize" value="AllSizes"/>
		<Property name="Active" value="True"/>
		<Property name="GameData" value="TkAnimationGameData.xml">
			<Property name="BlockPlayerWeapon" value="Unblocked"/>
		</Property>
	</Property>
]]

local simple_interact_comp = [[
	<Property value="GcSimpleInteractionComponentData.xml">
		<Property name="SimpleInteractionType" value="Save"/>
		<Property name="Rarity" value="GcRarity.xml">
			<Property name="Rarity" value="Common"/>
		</Property>
		<Property name="Size" value="GcSizeIndicator.xml">
			<Property name="SizeIndicator" value="Medium"/>
		</Property>
		<Property name="TriggerAction" value="INACTIVE"/>
		<Property name="HideContents" value="True"/>
	</Property>
	<Property value="GcTriggerActionComponentData.xml">
		<Property name="States">
			<Property value="GcActionTriggerState.xml">
				<Property name="StateID" value="BOOT"/>
				<Property name="Triggers">
					<Property value="GcActionTrigger.xml">
						<Property name="Event" value="GcStateTimeEvent.xml">
							<Property name="Seconds" value="0"/>
						</Property>
						<Property name="Action">
							<Property value="GcGoToStateAction.xml">
								<Property name="State" value="WAIT_FOR_SAVE"/>
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
						</Property>
						<Property name="Action">
							<Property value="GcPlayAudioAction.xml">
								<Property name="Sound" value="SignalScanner"/>
								<Property name="OcclusionRadius" value="2"/>
							</Property>
							<Property value="GcFireSimpleInteractionAction.xml"/>
							<Property value="GcGoToStateAction.xml">
								<Property name="State" value="WAIT_FOR_SAVE"/>
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
						</Property>
						<Property name="Action">
							<Property value="GcGoToStateAction.xml">
								<Property name="State" value="SAVE"/>
								<Property name="BroadcastLevel" value="Local"/>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
	</Property>
]]

local player_emote = [[
	<Property value="GcPlayerEmote.xml">
		<Property name="Title" value="Save"/>
		<Property name="AnimationName" value="SAVEGAME"/>
		<Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/PLAYER/SAVE.DDS"/>
		</Property>
		<Property name="AvailableUnderwater" value="False"/>
		<Property name="RidingAnimationName" value="SAVEGAME"/>
	</Property>
	<Property value="GcPlayerEmote.xml">
		<Property name="Title" value="Save"/>
		<Property name="AnimationName" value="SAVEGAME"/>
		<Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/PLAYER/SAVE.DDS"/>
		</Property>
		<Property name="AvailableUnderwater" value="True"/>
		<Property name="RidingAnimationName" value="SAVEGAME"/>
	</Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL hotkey save_3xRefiner_no panic.pak',
	MOD_AUTHOR			= 'lMonk (original by Mjjstral)',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
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
				PRECEDING_KEY_WORDS	= 'GcRefinerUnitComponentData.xml',
				VALUE_CHANGE_TABLE 	= {
					{'VisibleMaintenanceSlots',	5},
					{'NumInputs',				3}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'MAINT_FUEL1'},
				VALUE_CHANGE_TABLE 	= {
					{'AmountEmptyTimePeriod', 900}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Anim', '0H_GREET_MOB_04'},
				SECTION_ACTIVE		= 2,
				ADD_OPTION			= 'ADDAfterSection',
				ADD 				= player_anim
			},
			{
				PRECEDING_KEY_WORDS	= 'GcCombatEffectsComponentData.xml',
				ADD_OPTION			= 'ADDAfterSection',
				ADD 				= simple_interact_comp
			},
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/UI/EMOTEMENU.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Emotes',
				ADD 				= player_emote
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/EFFECTS/ENGINES/SPEEDCOOL.ANIM.MBIN',
				'MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'FrameCount',	10}
				}
			}
		}
	}
}}}}
