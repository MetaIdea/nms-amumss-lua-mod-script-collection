----------------------------------------------------------
local mod_desc = [[
  Restore the missing full mangrove tree to swamp biome
]]--------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Swamp Mnagroves Restored.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
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
				SPECIAL_KEY_WORDS	= {'Id', '_MLARGE_01LOD0'},
				VALUE_CHANGE_TABLE 	= {
					{'Id',			'_MFULL_01LOD0'},
					{'Name',		'_MFull_01LOD0'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', '_MLARGE_02LOD0'},
				VALUE_CHANGE_TABLE 	= {
					{'Id',			'_MFULL_02LOD0'},
					{'Name',		'_MFull_02LOD0'}
				}
			}
		}
	}
}}}}