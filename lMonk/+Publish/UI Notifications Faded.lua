-----------------------------------------------------------------------------------
local mod_desc = [[
  removes the notification panel's background and icon and add transparency
  to the text - fading the message into the background (makes it a bit harder to read)
]]---------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '_MOD.lMonk.FADED Notifications.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.52',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE 		= {
	{
		MBIN_FILE_SOURCE	= 'UI/HUD/HUDNOTIFICATIONPANEL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				FOREACH_SKW_GROUP 	= {
					{'ID', 'TITLEBACKGROUND'},
					{'ID', 'BACKGROUND'},
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
				FOREACH_SKW_GROUP 	= {
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
				FOREACH_SKW_GROUP 	= {
					{'ID', 'HEADERLINE'},
					{'ID', 'BASELINE'}
				},
				REPLACE_TYPE 		= 'All',
				VALUE_MATCH			= 1,
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'A',			0.3}
				}
			}
		}
	}
}}}}
