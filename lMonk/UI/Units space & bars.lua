------------------------------------------------------------
local desc = [[
  Add space in the menu's Units display for larger numbers
  Remove cinematic black bars
]]----------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__UI more units & less bars.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'UI/COMPONENTS/USERBAR.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'GRP_UNITS'},
				VALUE_CHANGE_TABLE 	= {
					{'Width',		210}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'UNITS'},
				VALUE_CHANGE_TABLE 	= {
					{'Width',		176}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'GRP_TECH'},
				VALUE_CHANGE_TABLE 	= {
					{'PositionX',	210},
					{'Width',		152}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'GRP_SPEC'},
				VALUE_CHANGE_TABLE 	= {
					{'PositionX',	0},
					{'Width',		152}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			'UI/HUD/HUDBARS.MBIN',
			'UI/COMPONENTS/INTERACTION/CINEMATICBARS.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				VALUE_CHANGE_TABLE 	= {
					{'IsHidden',	true}
				}
			}
		}
	}
}}}}
