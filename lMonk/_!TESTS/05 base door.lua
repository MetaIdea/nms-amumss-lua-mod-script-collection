---------------------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
---------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 05 base door.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	AMUMSS_SUPPRESS_MSG	= 'MIXED_TABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DOOR/ENTITIES/MAINDOOR.ENTITY.MBIN',
		EXML_CHANGE_TABLE = {
			{
				SPECIAL_KEY_WORDS	= {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/ANIMS/DOOR/DOOR_OPEN.ANIM.MBIN'},
				VALUE_CHANGE_TABLE	= {
					{'Speed',		3}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/ANIMS/DOOR/DOOR_CLOSE.ANIM.MBIN'},
				INTEGER_TO_FLOAT	= 'Force',
				VALUE_CHANGE_TABLE	= {
					{'Speed',		0.5}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Template', 'GcTriggerActionComponentData.xml'},
				SECTION_UP			= 1,
				REMOVE				= 'Section'
			},
			{
				PRECEDING_KEY_WORDS = 'Components',
				ADD					= ToExml({
					meta = {'value','LinkableNMSTemplate.xml'},
					Template	= {
						meta = {'Template','GcTriggerActionComponentData.xml'},
						States = {
							meta = {'name','States'},
							{
								meta = {'value','GcActionTriggerState.xml'},
								StateID = 'PROXON',
								Triggers = {
									meta = {'name','Triggers'},
									{
										meta = {'value','GcActionTrigger.xml'},
										Event = {
											meta = {'Event','GcPlayerNearbyEvent.xml'},
											RequirePlayerAction = 'OnFoot',
											Distance = 6,
											Angle = 360,
											AngleMinDistance = 1,
											DistanceCheckType = 'Radius',
											TeleporterCountsAsPlayer = true
										},
										Action = {
											meta = {'name','Action'},
											{
												meta = {'value','GcPlayAudioAction.xml'},
												Sound = 'Base_Door_Open',
												OcclusionRadius = 2
											},
											{
												meta = {'value','GcPlayAnimAction.xml'},
												Anim = 'OPEN'
											},
											{
												meta = {'value','GcNodeActivationAction.xml'},
												NodeActiveState = 'Deactivate',
												Name = 'DoorClose',
												UseMasterModel = true
											},
											{
												meta = {'value','GcNodeActivationAction.xml'},
												NodeActiveState = 'Activate',
												Name = 'DoorOpen',
												UseMasterModel = true
											},
											{
												meta = {'value','GcNodeActivationAction.xml'},
												NodeActiveState = 'Deactivate',
												Name = 'PhysicsData',
												IncludePhysics = true,
												UseMasterModel = true
											},
											{
												meta = {'value','GcGoToStateAction.xml'},
												State = 'PROXOFF',
												BroadcastLevel = 'Scene'
											}
										}
									}
								}
							},
							{
								meta = {'value','GcActionTriggerState.xml'},
								StateID = 'PROXOFF',
								Triggers = {
									meta = {'name','Triggers'},
									{
										meta = {'value','GcActionTrigger.xml'},
										Event = {
											meta = {'Event','GcPlayerNearbyEvent.xml'},
											RequirePlayerAction = 'OnFoot',
											Distance = 6,
											Angle = 360,
											AngleMinDistance = 1,
											DistanceCheckType = 'Radius',
											Inverse = true,
											TeleporterCountsAsPlayer = true
										},
										Action = {
											meta = {'name','Action'},
											{
												meta = {'value','GcPlayAudioAction.xml'},
												Sound = 'Base_Door_Close',
												OcclusionRadius = 2
											},
											{
												meta = {'value','GcPlayAnimAction.xml'},
												Anim = 'CLOSE'
											},
											{
												meta = {'value','GcNodeActivationAction.xml'},
												NodeActiveState = 'Activate',
												Name = 'DoorClose',
												UseMasterModel = true
											},
											{
												meta = {'value','GcNodeActivationAction.xml'},
												NodeActiveState = 'Deactivate',
												Name = 'DoorOpen',
												UseMasterModel = true
											},
											{
												meta = {'value','GcNodeActivationAction.xml'},
												NodeActiveState = 'Activate',
												Name = 'PhysicsData',
												IncludePhysics = true,
												UseMasterModel = true
											},
											{
												meta = {'value','GcGoToStateAction.xml'},
												State = 'PROXON',
												BroadcastLevel = 'Scene'
											}
										}
									}
								}
							}
						}
					},
					Linked		= ''
				})
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DOOR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS = {
					{'Name', 'RefSnapScene4'},
					{'Name', 'RefSnapScene5'},
					{'Name', 'RefSnapScene6'},
					{'Name', 'RefSnapScene7'},
				},
				REMOVE		= 'section'
			}
		}
	},
}}}}
