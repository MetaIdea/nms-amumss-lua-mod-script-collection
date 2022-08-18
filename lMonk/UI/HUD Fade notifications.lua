---------------------------------------------------------------------------------
local desc = [[
  Hide elements of the lower-right notification panel and fade the text contents
]]-------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__UI fade notifications.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= 3.99,
	MOD_DESCRIPTION			= desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'UI/HUD/HUDNOTIFICATIONPANEL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'TITLEBACKGROUND'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'IsHidden',	true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'BACKGROUND'},
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
				REPLACE_TYPE 		= 'All',
				VALUE_MATCH			= 1,
				SPECIAL_KEY_WORDS	= {'ID', 'TITLE'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'A',			0.65}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				VALUE_MATCH			= 1,
				SPECIAL_KEY_WORDS	= {'ID', 'BODY'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'A',			0.65}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				VALUE_MATCH			= 1,
				SPECIAL_KEY_WORDS	= {'ID', 'HEADERLINE'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'A',			0.2}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				VALUE_MATCH			= 1,
				SPECIAL_KEY_WORDS	= {'ID', 'BASELINE'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'A',			0.2}
				}
			}
		}
	}
}}}}
