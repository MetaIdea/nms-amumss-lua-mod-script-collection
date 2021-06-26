--[[┎────────────────────────────────────────────────────────────
	┃ repalce material texture paths
────┸────────────────────────────────────────────────────────--]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 13 replace materials.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/ACCESSORIES/ACCA/SUBWINGSC_TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/ENGINE/ENGINE_C/ENGINEC/TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_A/WINGS_A/TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_B/WINGSB/TERTIARY.MATERIAL.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Metamaterial', 'Models/Common/Spacecraft/Fighters/Materials/Secondary_Mat.metamaterial.mXml'},
				}
			},
			{
				PRECEDING_KEY_WORDS = {'Samplers', 'TkMaterialSampler.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SECONDARY.DDS'},
				}
			},
			{
				PRECEDING_KEY_WORDS = {'Samplers', 'TkMaterialSampler.xml', 'TkMaterialSampler.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SECONDARY.MASKS.DDS'},
				}
			},
			{
				PRECEDING_KEY_WORDS = {'Samplers', 'TkMaterialSampler.xml', 'TkMaterialSampler.xml', 'TkMaterialSampler.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SECONDARY.NORMAL.DDS'},
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_E/WINGSE/TERTIARY.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Metamaterial', 'Models/Common/Spacecraft/Fighters/Materials/Secondary_Mat.metamaterial.mXml'},
				}
			},
			{
				PRECEDING_KEY_WORDS = {'Samplers', 'TkMaterialSampler.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SECONDARY.DDS'},
				}
			},
			{
				PRECEDING_KEY_WORDS = {'Samplers', 'TkMaterialSampler.xml', 'TkMaterialSampler.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SECONDARY.MASKS.DDS'},
				}
			}
		}
	},
}}}}
