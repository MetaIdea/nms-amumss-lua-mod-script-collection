---------------------------------------------------------------------------------
local mod_desc = [[
  Hide elements of the lower-right notification panel and fade the text contents
]]-------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__UI fade notifications.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.52',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'UI/HUD/HUDNOTIFICATIONPANEL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					{'ID', 'TITLEBACKGROUND'},
					{'ID', 'BACKGROUND'}
				},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'IsHidden',	true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'ICONS'},
				VALUE_CHANGE_TABLE 	= {
					{'IsHidden',	true}
				}
			},
			{
				SPECIAL_KEY_WORDS 	= {
					{'ID', 'TITLE'},
					{'ID', 'BODY'}
				},
				REPLACE_TYPE 		= 'All',
				VALUE_MATCH			= 1,
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'A',			0.64}
				}
			},
			{
				SPECIAL_KEY_WORDS 	= {
					{'ID', 'HEADERLINE'},
					{'ID', 'BASELINE'}
				},
				REPLACE_TYPE 		= 'All',
				VALUE_MATCH			= 1,
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'A',			0.2}
				}
			}
		}
	}
}}}}
