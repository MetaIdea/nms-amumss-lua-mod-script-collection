-------------------------------------------------------------
local mod_desc = [[
  - green cave crystal rewards cave2
  - large living crystal reward fix
  - organic rock bio gunk reward
  - Change carbon crystals to black, by Lo2k
  - fainter resource plants light
  - Re-insert the missing full mangrove tree in swamp biome
]]-----------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL placed planet props.pak',
	MOD_AUTHOR			= 'Lo2k',
	LUA_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|rares scan range| increase
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
	{--	cave |green crystal cobalt| reward
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
	{--	|large crystal shard| reward fix
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTALDRONE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'ATTACHMENT'},
				VALUE_CHANGE_TABLE	= {
					{'Value', 'MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SENTINELCRYSTAL/ENTITIES/DATA.ENTITY.MBIN'}
				}
			}
		}
	},
	{--	Barren biome |organic rock bio reward| instead of mordite
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/GEMCRYSTALS/ENTITIES/GEMCRYSTAL.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Template', 'GcSimpleInteractionComponentData.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'Id',			'R_BREAK_BIO'}
				}
			}
		}
	},
	{--	black carbon
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'pointLight1', 'Name', 'COL_R'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		0.4}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'pointLight1', 'Name', 'COL_G'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		0.15}
				}
			}
		}
	},
	{--	black carbon
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE/CRYSTAL_LARGE.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gCustomParams01Vec4'},
				VALUE_CHANGE_TABLE 	= {
					{'t',			0}
				}
			},
			{
				PRECEDING_KEY_WORDS	= {'Samplers', 'TkMaterialSampler.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'Map',			'TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/LARGECRYSTAL2.RED.DDS'}
				}
			}
		}
	},
	{--	black carbon
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM.SCENE.MBIN',
			'MODELS/EFFECTS/DEBRIS/RESOURCEDEBRIS.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'pointLight1', 'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		7000}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'pointLight1', 'Name', 'COL_R'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		0.8}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'pointLight1', 'Name', 'COL_G'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		0.5}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'pointLight1', 'Name', 'COL_B'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		0}
				}
			}
		}
	},
	{--	black carbon
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM/ICEFORMATION_MAT.MATERIAL.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_FRAGMENT/ICEFORMATION_MAT.MATERIAL.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_SMALL/ICEFORMATION_MAT.MATERIAL.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= {'Samplers', 'TkMaterialSampler.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'Map',			'TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUMCRYSTAL2.RED.DDS'}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/DEBRIS/RESOURCEDEBRIS/GEMTHINGS_MINERALMAT.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gCustomParams01Vec4'},
				VALUE_CHANGE_TABLE 	= {
					{'t',			0}
				}
			},
			{
				PRECEDING_KEY_WORDS	= {'Samplers', 'TkMaterialSampler.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'Map',			'TEXTURES/PLANETS/BIOMES/CRYSTAL/LARGEPROP/MINERAL2.BASE.DDS'}
				}
			}
		}
	},
	{--	reduced |plant light| intensity
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/COMMODITYPLANT.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FUELPLANT.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/TECHPLANT1.SCENE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		'@ * 0.2'}
				}
			}
		}
	},
	{--	add descriptor full mangroves
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGE.DESCRIPTOR.MBIN',
				'MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGEFULL.DESCRIPTOR.MBIN',
				'REMOVE'
			}
		}
	},
	{--	add descriptor full mangroves
		MBIN_FILE_SOURCE	=  'MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGEFULL.DESCRIPTOR.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'TypeId',		'_MFULL_'}
				}
			},
			{
				PRECEDING_KEY_WORDS	= 'TkResourceDescriptorData.xml',
				SECTION_ACTIVE		= -1,
				VALUE_CHANGE_TABLE 	= {
					{'Id',			'_MFULL_01LOD0'},
					{'Name',		'_MFull_01LOD0'}
				}
			},
			{
				PRECEDING_KEY_WORDS	= 'TkResourceDescriptorData.xml',
				SECTION_ACTIVE		= -2,
				VALUE_CHANGE_TABLE 	= {
					{'Id',			'_MFULL_02LOD0'},
					{'Name',		'_MFull_02LOD0'}
				}
			}
		}
	},
}}}}
