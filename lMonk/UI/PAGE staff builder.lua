--------------------------------------------------------------------------------------------------------
local mod_desc = [[
  Add another slot to staff building page for substances
  (content data for the slot added to METADATA/GAMESTATE/PLAYERDATA/MODULARCUSTOMISATIONDATATABLE.MBIN)
]]------------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__UI staff builder substance coloring.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'UI/MULTITOOL_BUILDER_PAGE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SLOT03GRP'},
				SECTION_UP_SPECIAL	= 1,
				SECTION_SAVE_TO		= 'gc_ng_uilayer_data'
			},
			{
				SECTION_EDIT 		= 'gc_ng_uilayer_data',
				SPECIAL_KEY_WORDS	= {'ID', 'SLOT03GRP'},
				VALUE_CHANGE_TABLE 	= {
					{'ID',			'SLOT04GRP'},
					{'PositionX',	49.602}
				}
			},
			{
				SECTION_EDIT 		= 'gc_ng_uilayer_data',
				SECTION_UP_SPECIAL	= 1,
				SPECIAL_KEY_WORDS	= {'ID', 'LABEL'},
				VALUE_CHANGE_TABLE 	= {
					{'Text',		''}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SLOT03GRP'},
				SECTION_UP_SPECIAL	= 1,
				ADD_OPTION			= 'AddAfterSection',
				SECTION_ADD_NAMED 	= 'gc_ng_uilayer_data'
			}
		}
	}
}}}}
