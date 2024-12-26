---------------------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
dofile('LIB/scene_tools.lua')
---------------------------------------------------------------------
local mod_desc = [[
  - Base proximity doors (non-powered)
  - Add and increase light intensity to various building parts
]]-------------------------------------------------------------------

local build_parts = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL base parts nlights.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MIXED_TABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|hanging lamp0| decoraction
		MBIN_FILE_SOURCE	= build_parts..'DECORATION/BAZAAR/HANGLAMP0.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'HangingLampLOD0'},
				PRECEDING_KEY_WORDS = 'Children',
				CREATE_HOS			= true,
				ADD					= AddLightNodes({name='lamp000', i=22000, ty=2.6, c='FFFAE6BF', v=0.01})
			}
		}
	},
	{--	|hanging lamp123| decoraction
		MBIN_FILE_SOURCE	= {
			build_parts..'DECORATION/BAZAAR/HANGLAMP1.SCENE.MBIN',
			build_parts..'DECORATION/BAZAAR/HANGLAMP2.SCENE.MBIN',
			build_parts..'DECORATION/BAZAAR/HANGLAMP3.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		24000}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'COL_R'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		0.98}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'COL_G'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		0.9}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'COL_B'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		0.75}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			build_parts..'DECORATION/WALLLIGHT_BLUE.SCENE.MBIN',
			build_parts..'DECORATION/WALLLIGHT_GREEN.SCENE.MBIN',
			build_parts..'DECORATION/WALLLIGHT_PINK.SCENE.MBIN',
			build_parts..'DECORATION/WALLLIGHT_RED.SCENE.MBIN',
			build_parts..'DECORATION/WALLLIGHT_WHITE.SCENE.MBIN',
			build_parts..'DECORATION/WALLLIGHT_YELLOW.SCENE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		0},
					{'TransY',		0},
					{'TransZ',		0},
					{'RotX',		90}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT', 'Name', 'FOV'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		190}
				}
			},
			{
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT', 'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		2}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			build_parts..'DECORATION/TABLE2/LIGHTS1_MAT.MATERIAL.MBIN',
			build_parts..'FOLIAGE/BEAMSTONE/LIGHTBEAM_MAT3.MATERIAL.MBIN',
			build_parts..'FOLIAGE/STARJOINT/MSTRUCTURE_MAT.MATERIAL.MBIN',
			build_parts..'FOLIAGE/WEIRDCUBE/CELLSCOLOURISABLE1.MATERIAL.MBIN',
			build_parts..'FOLIAGE/WEIRDCUBE/CELLSCOLOURISABLE2.MATERIAL.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMLUSH/STARBULB_MAT.MATERIAL.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMRADIOACTIVE/FRUITGLOW_MAT.MATERIAL.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMSCORCHED/FRUITYELLOW_MAT.MATERIAL.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'MaterialFlag', '_F34_GLOW'},
				REMOVE				= 'Section'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMRADIOACTIVE/FRUITGLOW_MAT.MATERIAL.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'MaterialFlag', '_F07_UNLIT'},
				REMOVE				= 'Section'
			}
		}
	},
	{
		MBIN_FILE_SOURCE = build_parts..'DOOR/ENTITIES/MAINDOOR.ENTITY.MBIN',
		EXML_CHANGE_TABLE = {
			{
				SPECIAL_KEY_WORDS	= {'Filename', build_parts..'ANIMS/DOOR/DOOR_OPEN.ANIM.MBIN'},
				VALUE_CHANGE_TABLE	= {
					{'Speed',		3}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Filename', build_parts..'ANIMS/DOOR/DOOR_CLOSE.ANIM.MBIN'},
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
					Template = {
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
											AngleOffset = 0,
											AngleMinDistance = 1,
											MustAffordCostID = '',
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
												SceneToAdd = '',
												UseMasterModel = true,
											},
											{
												meta = {'value','GcNodeActivationAction.xml'},
												NodeActiveState = 'Activate',
												Name = 'DoorOpen',
												SceneToAdd = '',
												UseMasterModel = true,
											},
											{
												meta = {'value','GcNodeActivationAction.xml'},
												NodeActiveState = 'Deactivate',
												Name = 'PhysicsData',
												SceneToAdd = '',
												IncludePhysics = true,
												UseMasterModel = true,
											},
											{
												meta = {'value','GcGoToStateAction.xml'},
												State = 'PROXOFF',
												BroadcastLevel = {
													meta = {'BroadcastLevel','GcBroadcastLevel.xml'},
													BroadcastLevel = 'Scene'
												}
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
											AngleOffset = 0,
											AngleMinDistance = 1,
											MustAffordCostID = '',
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
												SceneToAdd = '',
												UseMasterModel = true,
											},
											{
												meta = {'value','GcNodeActivationAction.xml'},
												NodeActiveState = 'Deactivate',
												Name = 'DoorOpen',
												SceneToAdd = '',
												UseMasterModel = true,
											},
											{
												meta = {'value','GcNodeActivationAction.xml'},
												NodeActiveState = 'Activate',
												Name = 'PhysicsData',
												SceneToAdd = '',
												IncludePhysics = true,
												UseMasterModel = true,
											},
											{
												meta = {'value','GcGoToStateAction.xml'},
												State = 'PROXON',
												BroadcastLevel = {
													meta = {'BroadcastLevel','GcBroadcastLevel.xml'},
													BroadcastLevel = 'Scene'
												}
											}
										}
									}
								}
							}
						},
						PersistentState = ''
					},
					Linked = ''
				})
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= build_parts..'DOOR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefSnapScene[4-7]'},
				REMOVE				= 'section'
			}
		}
	},
}}}}
