----------------------------------------------
dofile('LIB/_lua_2_exml.lua')
----------------------------------------------
local mod_desc = [[
  Add hotkey saving (quick action emote menu)
  Disable panic falling animation
  Upgrade suit refiner to 3 slots
]]--------------------------------------------

local save_trigger_components = {
	{
		meta = {'value','LinkableNMSTemplate.xml'},
		Template = {
			meta	= {'Template', 'GcSimpleInteractionComponentData.xml'},
			SimpleInteractionType	= 'Save',
			TriggerAction			= 'INACTIVE',
			HideContents			= true
		},
		Linked	= ''
	},
	{
		meta = {'value','LinkableNMSTemplate.xml'},
		Template = {
			meta	= {'Template', 'GcTriggerActionComponentData.xml'},
			{
				meta	= {'name', 'States'},
				{
					meta	= {'value', 'GcActionTriggerState.xml'},
					StateID	= 'BOOT',
					{
						meta	= {'name', 'Triggers'},
						{
							meta	= {'value', 'GcActionTrigger.xml'},
							{
								meta	= {'Event', 'GcAnimFrameEvent.xml'},
								Anim	= 'SAVEGAME'
							},
							{
								meta	= {'name', 'Action'},
								{
									meta	= {'value', 'GcGoToStateAction.xml'},
									State	= 'SAVE'
								}
							}
						}
					}
				},
				{
					meta	= {'value', 'GcActionTriggerState.xml'},
					StateID	= 'SAVE',
					{
						meta	= {'name', 'Triggers'},
						{
							meta	= {'value', 'GcActionTrigger.xml'},
							{
								meta	= {'Event', 'GcStateTimeEvent.xml'},
								Seconds	= 0
							},
							{
								meta	= {'name', 'Action'},
								-- where the save is actually triggered
								value	= 'GcFireSimpleInteractionAction.xml',
								{
									meta			= {'value', 'GcPlayAudioAction.xml'},
									Sound			= 'SignalScanner',
									OcclusionRadius	= 2
								},
								{
									meta	= {'value', 'GcGoToStateAction.xml'},
									State	= 'BOOT'
								}
							}
						}
					}
				}
			}
		},
		Linked	= ''
	}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL hotkey save_3xRefiner_no panic.pak',
	MOD_AUTHOR			= 'lMonk (original by Mjjstral)',
	NMS_VERSION			= '5.29',
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
				PRECEDING_KEY_WORDS	= 'Components',
				ADD_OPTION			= 'AddEndSection',
				ADD 				= ToExml(save_trigger_components)
			},
			{
				SPECIAL_KEY_WORDS	= {'Template', 'TkAnimationComponentData.xml'},
				PRECEDING_KEY_WORDS = {'Anims', 'TkAnimationData.xml'},
				SEC_SAVE_TO			= 'tk_animation_data'
			},
			{
				SEC_EDIT 			= 'tk_animation_data',
				VALUE_CHANGE_TABLE 	= {
					{'Anim',		'SAVEGAME'},
					{'Filename',	'MODELS/COMMON/SHARED/NULL.ANIM.MBIN'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Template', 'TkAnimationComponentData.xml'},
				PRECEDING_KEY_WORDS = 'Anims',
				ADD_OPTION			= 'AddEndSection',
				SEC_ADD_NAMED		= 'tk_animation_data'
			}

		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/UI/EMOTEMENU.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'GcPlayerEmote.xml',
				SEC_SAVE_TO			= 'gc_player_emote'
			},
			{
				SEC_EDIT 			= 'gc_player_emote',
				VALUE_CHANGE_TABLE 	= {
					{'Title',					'Save'},
					{'ChatText',				''},
					{'ChatUsesPrefix',			false},
					{'EmoteID',					'SAVEGAME'},
					{'AnimationName',			'SAVEGAME'},
					{'RidingAnimationName',		'SAVEGAME'},
					{'Filename',				'TEXTURES/UI/HUD/ICONS/PLAYER/SAVE.DDS'},
					{'CloseMenuOnSelect',		true},
					{'AvailableUnderwater',		true}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'Emotes',
				SEC_ADD_NAMED		= 'gc_player_emote'
			},
			{
				SEC_EDIT 			= 'gc_player_emote',
				VALUE_CHANGE_TABLE 	= {
					{'AvailableUnderwater',		false}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'Emotes',
				SEC_ADD_NAMED		= 'gc_player_emote'
			}
		}
	}
}}}}
