------------------------------------------------------------
local mod_desc = [[
  Add another slot to staff building page for substances
   (content data for the slot added to METADATA/GAMESTATE/PLAYERDATA/MODULARCUSTOMISATIONDATATABLE.MBIN)
  Ship builder palette placement tweak
  Add space in the menu's Units display for larger numbers
  Remove cinematic black bars
  smaller item slot amount font
  smaller dialog and dialog options font
  repalce game font family
]]----------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__UI various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_BATCHNAME		= '_UI ~@~collection.pak',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|staff builder extra slot|
		MBIN_FILE_SOURCE	= 'UI/MULTITOOL_BUILDER_PAGE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SLOT03GRP'},
				SECTION_UP_SPECIAL	= 1,
				SEC_SAVE_TO			= 'gc_ng_uilayer_data'
			},
			{
				SEC_EDIT 			= 'gc_ng_uilayer_data',
				SPECIAL_KEY_WORDS	= {'ID', 'SLOT03GRP'},
				VALUE_CHANGE_TABLE 	= {
					{'ID',			'SLOT04GRP'},
					{'PositionX',	49.602}
				}
			},
			{
				SEC_EDIT 			= 'gc_ng_uilayer_data',
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
				SEC_ADD_NAMED		= 'gc_ng_uilayer_data'
			}
		}
	},
	{--	|ship builder UI| palette tweak
		MBIN_FILE_SOURCE  	= 'UI/SHIP_BUILDER_PAGE.MBIN',
		EXML_CHANGE_TABLE 	= {
			{
				SPECIAL_KEY_WORDS	= {'ID','COLOUR'},
				VALUE_CHANGE_TABLE	= {
					{'PositionY',	44},
					{'Height',		580}
				}
			}
		}
	},
	{--	|ship discovery screen| fix
		MBIN_FILE_SOURCE  	= 'UI/HUD/SHIP/SIDESCREENSOLARSYSTEM.MBIN',
		EXML_CHANGE_TABLE 	=
		{
			{
				SPECIAL_KEY_WORDS	= {'ID','PLANET'},
				VALUE_CHANGE_TABLE	= {
					{'PositionX',	40}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID','DISCOVER'},
				VALUE_CHANGE_TABLE	= {
					{'PositionY',	131}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID','DISTANCE'},
				VALUE_CHANGE_TABLE	= {
					{'PositionY',	80}
				}
			}
		}
	},
	{--	|smaller item slot font|
		MBIN_FILE_SOURCE	= 'UI/COMPONENTS/INVENTORY/SQU_SLOT_ITEM.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS 	= {
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
					{'OutlineSize',			2} 		-- 4
				}
			}
		}
	},
	{--	|smaller dialog font|
		MBIN_FILE_SOURCE	= 'UI/INTERACTIONDIALOGPAGE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				VALUE_MATCH			= 35,
				VALUE_CHANGE_TABLE 	= {
					{'FontHeight',	28} -- 30
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
	{--	|smaller dialog options font|
		MBIN_FILE_SOURCE	= 'UI/COMPONENTS/RESPONDBUTTONSCROLL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				VALUE_CHANGE_TABLE 	= {
					{'FontHeight',	26} -- 36 >> 30
				}
			}
		}
	},
	{--	|more space for units|
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
	{--	|no black bars|
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
			EXTERNAL_FILE_SOURCE= 'D:/MODZ_stuff/NoMansSky/Sources/Fonts/Ubuntu-Regular.ttf',
			FILE_DESTINATION	= 'UI/GAMEFONT.TTF'
		},
		-- {
			-- EXTERNAL_FILE_SOURCE= 'D:/MODZ_stuff/NoMansSky/Sources/+Fonts/OpenSans_SemiCondensed-Regular.ttf',
			-- FILE_DESTINATION	= 'UI/GAMEFONT2.TTF'
		-- }
	}
}
