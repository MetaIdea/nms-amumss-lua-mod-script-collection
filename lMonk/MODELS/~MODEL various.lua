-----------------------------------------------------------
local desc = [[
  - Increase scan discovery range for rare resources
  - green cave crystal rewards cave2
  - Remove space dust and plasma
  - Remove lines, include: HUD icons, trade routes, landing pad
  - Reduce space speed lines for thrust and pulse
  - shorter freighter landing tractor range
  - organic rock bio gunk reward
  - Remove smoke and trails effect from mech and player
  - Activate planetray portal without cost
  - Remove resource crates at portals
]]---------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	---	|fainter resource| lights
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/COMMODITYPLANT.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FUELPLANT.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/TECHPLANT1.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value', 		8000}
				}
			}
		}
	},
	{
	---	|rares scan range| increase
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/ROLLINGPLANT/ENTITIES/ROLLINGPROP.ENTITY.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/METALFORMATION/ENTITIES/METALFORMATION.ENTITY.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/FLOATINGGASBAGS/ENTITIES/FLOATINGGASBAG.ENTITY.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'ScanRange',		1600},		-- 400
					{'ScannableType',	'Scanner'},	-- Binoculars
				}
			}
		}
	},
	{
	---	cave |green crystal cobalt| reward
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE_CAVE/ENTITIES/CRYSTAL_LARGE_CAVE.ENTITY.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_CAVE/ENTITIES/CRYSTAL_MEDIUM_CAVE.ENTITY.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_SMALL_CAVE/ENTITIES/CYSTAL_SMALL_CAVE.ENTITY.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_FRAGMENT_CAVE/ENTITIES/SHARDS_CAVE.ENTITY.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'GivesReward',	'PLANT_TECH'},
					{'ScanName',	'UI_GREEN_CRYSTAL_NAME'}, -- UI_CAVE2_NAME_L
					{'ScanIconType','CaveSubstance'}
				}
			}
		}
	},
	{
	---	|Clean space| of dust and plasma clouds
		MBIN_FILE_SOURCE	= {
			'MODELS/EFFECTS/HEAVYAIR/SPACE/SPACE2.HEAVYAIR.MBIN',
			'MODELS/EFFECTS/HEAVYAIR/SPACE/SPACEPLASMA.HEAVYAIR.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'NumberOfParticles',	0},
					{'Radius',				0}
				}
			}
		}
	},
	{
	---	|custom empty line material|
		MBIN_FILE_SOURCE	= {
			{
				'MATERIALS/LINE3D.MATERIAL.MBIN',
				'MATERIALS/LINE3D.EMPTY.MATERIAL.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MATERIALS/LINE3D.EMPTY.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Samplers',
				REMOVE				= 'Section'
			}
		}
	},
	{
	---	|no lines|
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/LINES/LINERENDERER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'MATERIAL'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'MATERIALS/LINE3D.EMPTY.MATERIAL.MBIN'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'MAXNUMLINES'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		1}
				}
			}
		}
	},
	{
	---	|pulse - Less speed lines|
		MBIN_FILE_SOURCE	= {
			'MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES.SPEEDLINE.MBIN',
			'MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN',
			'MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES3.SPEEDLINE.MBIN',
			'MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES4.SPEEDLINE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'Preserve',
				MATH_OPERATION 		= '*',
				VALUE_CHANGE_TABLE 	= {
					{'NumberOfParticles',	0.05},
					{'Length',				2},
					{'RemoveCylinderRadius',2},
					{'FadeTime',			0.5}
				}
			}
		}
	},
	{
	---	|boost - Less speed lines|
		MBIN_FILE_SOURCE	= {
			'MODELS/EFFECTS/SPEEDLINES/SPACE.SPEEDLINE.MBIN',
			'MODELS/EFFECTS/SPEEDLINES/SPACE2.SPEEDLINE.MBIN',
			'MODELS/EFFECTS/SPEEDLINES/SPACEBIG.SPEEDLINE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'Preserve',
				MATH_OPERATION 		= '*',
				VALUE_CHANGE_TABLE 	= {
					{'NumberOfParticles',	0.02},
					{'Length',				2},
					{'RemoveCylinderRadius',2},
				}
			},
			{
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					{'MinVisibleSpeed',		5}
				}
			}
		}
	},
	-- { --
	-- ---	|shorter freighter dock beam| capture range
		-- MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/HANGARA/ENTITIES/HANGARA.ENTITY.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- VALUE_CHANGE_TABLE 	= {
					-- {'PlayerAutoLandRange', 250}
				-- }
			-- }
		-- }
	-- },
	{
	---	Barrren biome |organic rock bio reward| instead of mordite
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/GEMCRYSTALS/ENTITIES/GEMCRYSTAL.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'GcSimpleInteractionComponentData.xml',
				VALUE_CHANGE_TABLE 	= {
					{'Id',			'R_BREAK_BIO'}
				}
			}
		}
	},
	{
	---	|Remove smoke and trails| effect from mech and player
		MBIN_FILE_SOURCE	= {
			'MODELS/EFFECTS/PLAYER/JETPACKEFFECTS/BLUEJETPACKFX.SCENE.MBIN',
			'MODELS/EFFECTS/PLAYER/JETPACKEFFECTS/GREENJETPACKFX.SCENE.MBIN',
			'MODELS/EFFECTS/PLAYER/JETPACKEFFECTS/REDJETPACKFX.SCENE.MBIN',
			'MODELS/EFFECTS/PLAYER/JETPACKEFFECTS/STANDARDJETPACKFX.SCENE.MBIN',
			'MODELS/EFFECTS/PLAYER/JETPACKEFFECTS/MECHJETPACKFX.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'Children',
				REMOVE				= 'Section'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/EFFECTS/TRAILS/PLAYER/JETPACKTRAIL.TRAIL.MBIN',
			'MODELS/EFFECTS/TRAILS/PLAYER/JETPACKWORMTRAIL.TRAIL.MBIN',
			'MODELS/EFFECTS/TRAILS/MECH/MECHCONTRAIL.TRAIL.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Width',				0},
					{'Points',				0},
					{'MaxPointsPerFrame',	0},
					{'DistanceThreshold',	0},
					{'PointLife',			0}
				}
			}
		}
	},
	{
	---	Activate planetray |portal without cost|
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'GcMaintenanceComponentData.xml',
				REMOVE				= 'Section'
			}
		}
	},
	{
	---	|No resource crates at portal|
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Clump1'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Clump2'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Clump3'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Clump4'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Clump5'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Clump6'},
				REMOVE				= 'Section'
			}
		}
	}
}}}}
