----------------------------------------------------------------------------
local mod_desc = [[
  removes the notification panel's background and icon and add transparency
  blending the message into the background (makes it a bit harder to read)
]]--------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '_MOD.lMonk.FADED Notifications.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '5.62',
	MOD_DESCRIPTION			= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'UI/HUD/HUDNOTIFICATIONPANEL.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'ID', '.-BACKGROUND'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Is Hidden',	true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'ICONS'},
				VALUE_CHANGE_TABLE 	= {
					{'Is Hidden',	true}
				}
			},
			{
				SPECIAL_KEY_WORDS 	= {'ID', '.-LINE'},
				VALUE_MATCH			= 1,
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'A',			0.2}
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
		}
	}
}}}}