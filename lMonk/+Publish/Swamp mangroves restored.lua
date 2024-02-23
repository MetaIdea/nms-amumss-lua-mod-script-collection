----------------------------------------------------------
local mod_desc = [[
  Re-insert the missing full mangrove tree in swamp biome
]]--------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Swamp Mnagroves Restored.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGE.DESCRIPTOR.MBIN',
				'MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGEFULL.DESCRIPTOR.MBIN',
				'REMOVE'
			}
		}
	},
	{
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
			},
		}
	}
}}}}
