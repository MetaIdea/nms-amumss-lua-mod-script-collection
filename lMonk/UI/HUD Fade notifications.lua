---------------------------------------------------------------------------------
local desc = [[
  Hide elements of the lower-right notification panel and fade the text contents
]]-------------------------------------------------------------------------------
Text_Alpha = 0.66

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__UI fade notifications.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_UI ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
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
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'ID', 'TITLE'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'A',	Text_Alpha}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'ID', 'BODY'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'A',	Text_Alpha}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'ID', 'HEADERLINE'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'A',	Text_Alpha - 0.1}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'ID', 'BASELINE'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'A',	Text_Alpha - 0.1}
				}
			}
		}
	}
}}}}
