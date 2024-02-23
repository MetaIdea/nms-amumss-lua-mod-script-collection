--------------------------------------------
local mod_desc = [[
  diverse shelters, by Lo2k
]]------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL diverse shelters.pak',
	MOD_AUTHOR			= 'Lo2k',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/SHACK/SHACK_SCIENTIFIC.LSYSTEM.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'nShack'},
				PRECEDING_KEY_WORDS	= 'TkLSystemRestrictionData.xml',
				SECTION_ACTIVE		= -1,
				VALUE_CHANGE_TABLE	= {
					{'Amount',		0},	-- 1
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'nShack'},
				PRECEDING_KEY_WORDS	= 'TkLSystemRestrictionData.xml',
				SECTION_ACTIVE		= -2,
				VALUE_CHANGE_TABLE	= {
					{'Amount',		3},	-- 2
				},
			},
			{
				SPECIAL_KEY_WORDS	= {'Name','nSilo'},
				VALUE_CHANGE_TABLE	= {
					{'Amount',		2},	-- 1
				},
			},
			{
				SPECIAL_KEY_WORDS	= {'Name','nTower'},
				VALUE_CHANGE_TABLE	= {
					{'Amount',		2},	-- 1
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/SHACK/SHACK_TRADER.LSYSTEM.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'nShack'},
				PRECEDING_KEY_WORDS	= 'TkLSystemRestrictionData.xml',
				SECTION_ACTIVE		= -1,
				VALUE_CHANGE_TABLE	= {
					{'Amount',		0},	-- 1
				},
			},
			{
				SPECIAL_KEY_WORDS	= {'Name','nShack'},
				PRECEDING_KEY_WORDS	= 'TkLSystemRestrictionData.xml',
				SECTION_ACTIVE		= -2,
				VALUE_CHANGE_TABLE	= {
					{'Amount',		3},	-- 2
				},
			},
			{
				SPECIAL_KEY_WORDS	= {'Name','nAttachmentA'},
				VALUE_CHANGE_TABLE	= {
					{'Amount',		2},	-- 1
				},
			},
		},
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/SHACK/SHACK_WARRIOR.LSYSTEM.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'nShack'},
				PRECEDING_KEY_WORDS	= 'TkLSystemRestrictionData.xml',
				SECTION_ACTIVE		= -1,
				VALUE_CHANGE_TABLE	= {
					{'Amount',		0},	-- 1
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'nShack'},
				PRECEDING_KEY_WORDS	= 'TkLSystemRestrictionData.xml',
				SECTION_ACTIVE		= -2,
				VALUE_CHANGE_TABLE	= {
					{'Amount',		3},	-- 2
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'nSilo'},
				VALUE_CHANGE_TABLE	= {
					{'Amount',		2},	-- 1
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'nAntenna'},
				VALUE_CHANGE_TABLE	= {
					{'Amount',		2},	-- 1
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'nTower'},
				VALUE_CHANGE_TABLE	= {
					{'Amount',		2},	-- 1
				}
			}
		}
	}
}}}}
