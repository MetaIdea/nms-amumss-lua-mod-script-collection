----------------------------------------------
dofile('LIB/lua_2_exml.lua')
----------------------------------------------
local mod_desc = [[
  Add hotkey saving (quick action emote menu)
  Disable panic falling animation
  Upgrade suit refiner to 3 slots
]]--------------------------------------------

local save_trigger_components = {
	{
		META	= {'value', 'GcSimpleInteractionComponentData.xml'},
		SimpleInteractionType	= 'Save',
		TriggerAction			= 'INACTIVE',
		HideContents			= true,
	------------------------------------------
		-- InteractIsCrime			= true,
		-- InteractCrimeLevel		= 4,
		-- InteractFiendCrimeChance= 100,
		-- FiendCrime	= {
			-- META	= {'InteractFiendCrimeType', 'GcFiendCrime.xml'},
			-- FiendCrime	= 'EggDestroyed' --	EggDestroyed / EggCollected
		-- }
	------------------------------------------
	},
	{
		META	= {'value', 'GcTriggerActionComponentData.xml'},
		{
			META	= {'name', 'States'},
			{
				META	= {'value', 'GcActionTriggerState.xml'},
				StateID	= 'BOOT',
				{
					META	= {'name', 'Triggers'},
					{
						META	= {'value', 'GcActionTrigger.xml'},
						{
							META	= {'Event', 'GcAnimFrameEvent.xml'},
							Anim	= 'SAVEGAME'
						},
						{
							META	= {'name', 'Action'},
							{
								META	= {'value', 'GcGoToStateAction.xml'},
								State	= 'SAVE'
							}
						}
					}
				}
			},
			{
				META	= {'value', 'GcActionTriggerState.xml'},
				StateID	= 'SAVE',
				{
					META	= {'name', 'Triggers'},
					{
						META	= {'value', 'GcActionTrigger.xml'},
						{
							META	= {'Event', 'GcStateTimeEvent.xml'},
							Seconds	= 0
						},
						{
							META	= {'name', 'Action'},
							-- where the save is actually triggered
							value	= 'GcFireSimpleInteractionAction.xml',
							{
								META			= {'value', 'GcPlayAudioAction.xml'},
								Sound			= 'SignalScanner',
								OcclusionRadius	= 2
							},
							{
								META	= {'value', 'GcGoToStateAction.xml'},
								State	= 'BOOT'
							}
						}
					}
				}
			}
		}
	}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL hotkey save_3xRefiner_no panic.pak',
	MOD_AUTHOR			= 'lMonk (original by Mjjstral)',
	NMS_VERSION			= '4.52',
	AMUMSS_SUPPRESS_MSG	= 'MIXED_TABLE',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
			---	disable panic fall anime
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
				SPECIAL_KEY_WORDS	= {'Id', 'MAINT_FUEL1'},
				VALUE_CHANGE_TABLE 	= {
					{'AmountEmptyTimePeriod', 900}
				}
			},
			{
				PRECEDING_KEY_WORDS	= 'GcSpringAttachmentComponentData.xml',
				ADD_OPTION			= 'ADDAfterSection',
				ADD 				= ToExml(save_trigger_components)
			},
			{
				PRECEDING_KEY_WORDS = {'Anims', 'TkAnimationData.xml'},
				SECTION_SAVE_TO		= 'tk_animation_data'
			},
			{
				SECTION_EDIT 		= 'tk_animation_data',
				VALUE_CHANGE_TABLE 	= {
					{'Anim',		'SAVEGAME'},
					{'Filename',	'MODELS/TESTS/EFFECTTEST.ANIM.MBIN'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Anim', '2H_STAFF_WALK'},
				ADD_OPTION			= 'ADDAfterSection',
				SECTION_ADD_NAMED 	= 'tk_animation_data'
			}

		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/UI/EMOTEMENU.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'GcPlayerEmote.xml',
				SECTION_SAVE_TO		= 'gc_player_emote'
			},
			{
				SECTION_EDIT 		= 'gc_player_emote',
				VALUE_CHANGE_TABLE 	= {
					{'Title',					'Save'},
					{'ChatText',				''},
					{'ChatUsesPrefix',			false},
					{'EmoteID',					'SAVEGAME'},
					{'AnimationName',			'SAVEGAME'},
					{'RidingAnimationName',		'SAVEGAME'},
					{'Filename',				'TEXTURES/UI/HUD/ICONS/PLAYER/SAVE.DDS'},
					{'CloseMenuOnSelect',		true},
					{'AvailableUnderwater',		false}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'Emotes',
				SECTION_ADD_NAMED 	= 'gc_player_emote'
			},
			{
				SECTION_EDIT 		= 'gc_player_emote',
				VALUE_CHANGE_TABLE 	= {
					{'AvailableUnderwater',		true}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'Emotes',
				SECTION_ADD_NAMED 	= 'gc_player_emote'
			}
		}
	}
}}}}
