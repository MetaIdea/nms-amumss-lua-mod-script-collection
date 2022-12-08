------------------------------------------------------------
local desc = [[
  Add space in the menu's Units display for larger numbers
  Remove cinematic black bars
  smaller item slot amount font
  smaller dialog and dialog options font
  repalce game font family
]]----------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__UI fonts units & no bars.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 4.07,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	---	|smaller item slot font|
		MBIN_FILE_SOURCE	= 'UI/COMPONENTS/INVENTORY/SQU_SLOT_ITEM.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				FOREACH_SKW_GROUP 	= {
					{'ID',	'TEXT'},
					{'ID',	'TEXT_LONG'},
					{'ID',	'TEXTLOW'},
					{'ID',	'TEXTLOW_LONG'}
				},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'PositionY',			84},	-- 82
					{'Height',				24},	-- 32
					{'DropShadowOffset',	2}, 	-- 3
					{'OutlineSize',			2}, 	-- 4
				}
			}
		}
	},
	{
	---	|smaller dialog font|
		MBIN_FILE_SOURCE	= 'UI/INTERACTIONDIALOGPAGE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				VALUE_MATCH			= 35,
				VALUE_CHANGE_TABLE 	= {
					{'FontHeight',	30}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				VALUE_MATCH			= 28,
				VALUE_CHANGE_TABLE 	= {
					{'FontHeight',	24}
				}
			}
		}
	},
	{
	---	|smaller dialog options font|
		MBIN_FILE_SOURCE	= 'UI/COMPONENTS/RESPONDBUTTONSCROLL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				VALUE_CHANGE_TABLE 	= {
					{'FontHeight',	30} -- 36
				}
			}
		}
	},
	{
	---	|more space for units|
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
	---	|no black bars|
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
}}},
	ADD_FILES	= {
		{
			EXTERNAL_FILE_SOURCE= 'E:/MODZ_stuff/NoMansSky/Sources/+Fonts/Ubuntu-Regular.ttf',
			FILE_DESTINATION	= 'UI/GAMEFONT.TTF'
		},
		-- {
			-- EXTERNAL_FILE_SOURCE= 'E:/MODZ_stuff/NoMansSky/Sources/+Fonts/OpenSans_SemiCondensed-Regular.ttf',
			-- FILE_DESTINATION	= 'UI/GAMEFONT2.TTF'
		-- }
	}
}
