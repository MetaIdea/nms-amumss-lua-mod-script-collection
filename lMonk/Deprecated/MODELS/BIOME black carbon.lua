--------------------------------------------
local desc = [[
  Change carbon crystals to black, by Lo2k
]]------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL black carbon.pak',
	MOD_AUTHOR			= 'Lo2k',
	LUA_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
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
	{
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
	{
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
	{
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
	}
}}}}
