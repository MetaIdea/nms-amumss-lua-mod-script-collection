----------------------------------------------------------
local desc = [[
  Disable storm weather filters
  remove screen filter from scanning and surveying binocs
]]--------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META screen filters.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_META ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/EFFECTS/SCREENFILTERS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = {'Filters', 'DefaultStorm'},
				VALUE_CHANGE_TABLE 	= {
					{'Filename',	'TEXTURES/LUT/FILTERS/DEFAULT.DDS'}
				}
			},
			{
				PRECEDING_KEY_WORDS = {'Filters', 'FrozenStorm'},
				VALUE_CHANGE_TABLE 	= {
					{'Filename',	'TEXTURES/LUT/FILTERS/FROZENDEFAULT.DDS'}
				}
			},
			{
				PRECEDING_KEY_WORDS = {'Filters', 'ToxicStorm'},
				VALUE_CHANGE_TABLE 	= {
					{'Filename',	'TEXTURES/LUT/FILTERS/TOXICDEFAULT.DDS'}
				}
			},
			{
				PRECEDING_KEY_WORDS = {'Filters', 'RadioactiveStorm'},
				VALUE_CHANGE_TABLE 	= {
					{'Filename',	'TEXTURES/LUT/FILTERS/RADIODEFAULT.DDS'}
				}
			},
			{
				PRECEDING_KEY_WORDS = {'Filters', 'ScorchedStorm'},
				VALUE_CHANGE_TABLE 	= {
					{'Filename',	'TEXTURES/LUT/FILTERS/SCORCHDEFAULT.DDS'}
				}
			},
			{
				PRECEDING_KEY_WORDS = {'Filters', 'BarrenStorm'},
				VALUE_CHANGE_TABLE 	= {
					{'Filename',	'TEXTURES/LUT/FILTERS/BARRENDEFAULT.DDS'}
				}
			}
		}
	}
}}}}
