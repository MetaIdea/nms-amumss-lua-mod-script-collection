-----------------------------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/scene_tools.lua')
-----------------------------------------------------------------------------------------
local mod_desc = [[
  Buildable Base Parts Additions:
  - add suit inventory slots page to the toy sphere (from CRYOCHAMBERINTERACTION)
  - add teleporter menu to galaxy toy
   * purchases only instead of using tokens (something to do with the trigger)
  - Add the multitool upgrade menu to the base weapons master terminal
  - Add multitool salvage to the base weapons master terminal
   * copied from: MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/SHOPS/ ..
     WEAPONSHOP/ENTITIES/WEAPONSUPGRADETERMINAL.ENTITY.MBIN
  - Add the ship upgrade menu to the nexus orb stand
  - Add hazard protection and a small light to beacon, cooker and signal booster (cheat)
  - Increase freighter extractor storage capacity
  - Spin the wirecube, beam, and engine glitch items
  - open staff building page from the utopia weapon research unit
]]---------------------------------------------------------------------------------------

local build_parts = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL base tech additions.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	AMUMSS_SUPPRESS_MSG	= 'MIXED_TABLE',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	open |suit page| with toy
		MBIN_FILE_SOURCE	= build_parts..'DECORATION/TOY_SPHERE/ENTITIES/TOY_SPHERE.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'GcSimpleInteractionComponentData.xml',
				VALUE_CHANGE_TABLE 	= {
					{'Name',		'INTRCT_SUITTERMINAL'}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'Components',
				ADD					= ToExml({
					META = {'value','GcInteractionComponentData.xml'},
					InteractionAction	= 'PressButton',
					InteractionType		= {
						META = {'InteractionType','GcInteractionType.xml'},
						InteractionType	= 'SuitTerminal'
					},
					AttractDistanceSq	= 9,
					InteractAngle		= 360,
					InteractDistance	= 5
				})
			}
		}
	},
	{--	|add teleporter| menu to galaxy toy
		MBIN_FILE_SOURCE	= build_parts..'DECORATION/TOY_CORE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'ATTACHMENT' },
				VALUE_CHANGE_TABLE 	= {
					{'Value', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/COMMONPARTS/TELEPORTER_NEXUS/ENTITIES/TELEPORTERNEXUSINTERACTION.ENTITY.MBIN'}
				}
			},
		}
	},
	{--	|base multitool salvage|
		MBIN_FILE_SOURCE	= build_parts..'NPCROOMS/NPC_WEAPONS.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Workstation'},
				PRECEDING_KEY_WORDS = 'Children',
				ADD					= ToExml( ScNode(
					'WeapSalvage', 'LOCATOR', {
						ScTransform({tx=-1, ty=1.1, tz=1.6}),
						ScAttributes({
							{'ATTACHMENT', build_parts..'NPCROOMS/NPC_WEAPONS/ENTITIES/WEAP_SALVAGE.ENTITY.MBIN'}
						}),
						ScChildren({
							ScNode(
								'WeapSalvageCol', 'COLLISION', {
									ScTransform(),
									ScAttributes({
										{'TYPE',	'Sphere'},
										{'RADIUS',	0.2}
									})
								}
							)
						})
					}
				))
			},
		}
	},
	{--	|freighter multitool salvage|
		MBIN_FILE_SOURCE	= build_parts..'FREIGHTERBASE/ROOMS/NPCWEAROOM/PARTS/FLOOR0.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Workstation'},
				ADD_OPTION			= 'AddAfterSection',
				ADD					= ToExml( ScNode(
					'WeapSalvage', 'LOCATOR', {
						ScTransform({ty=0.5, tz=-1.5}),
						ScAttributes({
							{'ATTACHMENT', build_parts..'NPCROOMS/NPC_WEAPONS/ENTITIES/WEAP_SALVAGE.ENTITY.MBIN'}
						}),
						ScChildren({
							ScNode(
								'WeapSalvageCol', 'COLLISION', {
									ScTransform(),
									ScAttributes({
										{'TYPE',	'Sphere'},
										{'RADIUS',	0.2}
									})
								}
							)
						})
					}
				))
			},
		}
	},
	{--	|multitool upgrade menu|
		MBIN_FILE_SOURCE	= build_parts..'NPCROOMS/NPC_WEAPONS/ENTITIES/WEAPON5SPIN.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Components',
				ADD					= ToExml({
					{
						META = {'value', 'GcInteractionComponentData.xml'},
						InteractionType		= {
							META = {'InteractionType', 'GcInteractionType.xml'},
							InteractionType	= 'WeaponUpgrade'
						},
						InteractionAction	= 'PressButton',
						AttractDistanceSq	= 9,
						InteractAngle		= 360,
						InteractDistance	= 3
					},
					-- component stub
					{value = 'TkPhysicsComponentData.xml'}
				})
			}
		}
	},
	{--	|ship upgrade menu|
		MBIN_FILE_SOURCE	= build_parts..'DECORATION/NEXUSORBPILLAR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'DATA'},
				INTEGER_TO_FLOAT	= 'Force',
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		0.7}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'ATTACHMENT'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',	build_parts..'TECH/OBJECTSPAWNER/ENTITIES/SHIPSALVAGETERMINAL.ENTITY.MBIN'}
				}
			}
		}
	},
	{--	|staff build page| with the utopia weapon recipe unit
		MBIN_FILE_SOURCE	= build_parts..'TECH/BLUEPRINTANALYSER_WEAP/ENTITIES/DATA.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'StoryUtilityOverrideData',
				VALUE_CHANGE_TABLE 	= {
					{'Name',	'UI_MULTITOOL_STAFF_BUILDER'},
					{'Reward',	'R_STAFF_PAGE'}
				}
			},
			{
				PRECEDING_KEY_WORDS	= 'PuzzleMissionOverrideTable',
				REMOVE				= 'Section'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				build_parts..'SPACEBASE/PROPS/STANDINGLIGHT_SMALL/ENTITIES/HEATER.ENTITY.MBIN',
				build_parts..'TECH/BEACON/ENTITIES/HEATER.ENTITY.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= build_parts..'TECH/BEACON/ENTITIES/HEATER.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'VolumeTriggerType', 'HazardProtection'}
				}
			}
		}
	},
	{--	add |antenna0 scanner| entity
		MBIN_FILE_SOURCE	= build_parts..'DECORATION/BAZAAR/ANTENNA0.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'ATTACHMENT'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',	build_parts..'TECH/SIGNALSCANNER/ENTITIES/SIGNALSCANNER.ENTITY.MBIN'}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			build_parts..'TECH/BEACON.SCENE.MBIN',
			build_parts..'TECH/COOKER.SCENE.MBIN',
			build_parts..'DECORATION/BAZAAR/ANTENNA0.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Children',
				SECTION_ACTIVE		= -1,
				ADD 				= ToExml({
					ScNode(
						'ShieldSphere', 'LOCATOR', {
							ScTransform(),
							ScAttributes({ {'ATTACHMENT', build_parts..'TECH/BEACON/ENTITIES/HEATER.ENTITY.MBIN'} }),
							ScChildren({
								ScNode(
									'HeaterCollision', 'COLLISION', {
										ScTransform(),
										ScAttributes({
											{'TYPE',	'Sphere'},
											{'RADIUS',	8}
										})
									}
								)
							})
						}
					),
					ScLight({name='redlight', ty=1.8, i=20000, c='ffc73347', fr=3.8})
				})
			}
		}
	},
	{--	|freighter extractor| capacity
		MBIN_FILE_SOURCE	= build_parts..'FREIGHTERBASE/ROOMS/EXTRROOM/PARTS/FLOOR0/ENTITIES/EXTRACTORTERMINAL.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				VALUE_MATCH			= 1,
				VALUE_MATCH_TYPE	= 'Number',
				VALUE_MATCH_OPTIONS = '>',
				VALUE_CHANGE_TABLE 	= {
					{'MaxCapacity',	10000}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'STELLAR2'},
				VALUE_CHANGE_TABLE 	= {
					{'Id', 'ROCKETSUB'}
				}
			}
		}
	},
	{--	|rotating foliage|
		MBIN_FILE_SOURCE	= {
			build_parts..'FOLIAGE/WEIRDCUBE.SCENE.MBIN',
			build_parts..'FOLIAGE/BEAMSTONE.SCENE.MBIN',
			build_parts..'FOLIAGE/ENGINEORB.SCENE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Attributes',
				ADD 				= ToExml({
					META	= {'value', 'TkSceneNodeAttributeData.xml'},
					Name	= 'ATTACHMENT',
					Value	= 'MODELS/COMMON/SHARED/ENTITIES/SPIN01.ENTITY.MBIN'
				})
			}
		}
	}
}}},
	ADD_FILES	= {
		{
			FILE_DESTINATION = build_parts..'NPCROOMS/NPC_WEAPONS/ENTITIES/WEAP_SALVAGE.ENTITY.EXML',
			FILE_CONTENT	 = FileWrapping({
				META = {'template','TkAttachmentData'},
				Components = {
					META = {'name','Components'},
					Simple		= {
						META = {'value','GcSimpleInteractionComponentData.xml'},
						Name = 'UI_SALVAGE_MT_TITLE'
					},
					Interaction	= {
						META = {'value','GcInteractionComponentData.xml'},
						InteractionAction	= 'PressButton',
						InteractionType		= {
							META = {'InteractionType','GcInteractionType.xml'},
							InteractionType	= 'StoryUtility'
						},
						AttractDistanceSq	= 9,
						InteractAngle		= 360,
						InteractDistance	= 5,
						PuzzleMissionOverrideTable = {
							META = {'name','PuzzleMissionOverrideTable'},
							Puzzle	= {
								META = {'value','GcAlienPuzzleMissionOverride.xml'},
								Mission		= 'EXPLORE_LOG', -- must be a real mission id
								Puzzle		= 'WEAPON_SALVAGE'
							}
						}
					},
					-- component stub
					value = 'TkPhysicsComponentData.xml'
				}
			})
		},
		{
			FILE_DESTINATION = 'MODELS/COMMON/SHARED/ENTITIES/SPIN01.ENTITY.EXML',
			FILE_CONTENT	 = FileWrapping({
				META = {'template', 'TkAttachmentData'},
				Components = {
					META = {'name', 'Components'},
					Rotation = {
						META  = {'value', 'TkRotationComponentData.xml'},
						Speed = 0.01,
						Axis  = {
							META = {'Axis', 'Vector3f.xml'},
							y = 1
						},
						AlwaysUpdate = true,
						SyncGroup    = -1
					}
				},
				LodDistances = {
					META = {'name','LodDistances'},
					{value	= 0},
					{value	= 50},
					{value	= 80},
					{value	= 150},
					{value	= 500}
				}
			})
		}
	}
}