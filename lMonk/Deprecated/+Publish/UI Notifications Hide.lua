---------------------------------------------
mod_desc = [[
  Hide lower-right HUD notification popups
]]-------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Hide notifications.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.10',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE 	= {
	{
		MBIN_FILE_SOURCE	= 'UI/HUD/HUDNOTIFICATIONPANEL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				FOREACH_SKW_GROUP 	= {
					{'ID', 'TITLE'},
					{'ID', 'BODY'},
					{'ID', 'HEADERLINE'},
					{'ID', 'BASELINE'},
					{'ID', 'ICONS'},
					{'ID', 'SMALLICON'},
					{'ID', 'EXCLAMATION'}
				},
				VALUE_CHANGE_TABLE 	= {
					{'IsHidden',	true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'ICON', 'Vertical', 'Bottom'},
				SECTION_UP			= 2,
				VALUE_CHANGE_TABLE 	= {
					{'IsHidden',	true}
				}
			}
		}
	}
}}}}
