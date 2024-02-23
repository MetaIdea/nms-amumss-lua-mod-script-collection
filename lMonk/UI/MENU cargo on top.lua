------------------------------------------------------------------------------
local mod_desc = [[
  position cargo inventory above the tech and remove the inventory box labels
  and switch the inventory window expansion icons placement
  (Original by lyravega)
]]----------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__UI cargo on top.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'UI/INVENTORYPAGE.MBIN',
			'UI/BUYSCREEN.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS 	= {
					{'ID', 'INV_TECH_LABEL'}, -- TECH HEADER
					{'ID', 'TECHICON'},
					{'ID', 'INV_MAIN_LABEL'}, -- CARGO HEADER
					{'ID', 'CARGOICON'}
				},
				SECTION_UP			= 1,
				REMOVE			 	= 'Section'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			'UI/COMPONENTS/INVENTORY/SQU_INV_BOXTECH.MBIN',
			'UI/INVENTORYPAGE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'ID', 'SQU_INV_TECH'},
				VALUE_CHANGE_TABLE 	= {
					{'PositionY',	1230} -- 735
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			'UI/COMPONENTS/INVENTORY/SQU_INV_BOXREGULAR.MBIN',
			'UI/INVENTORYPAGE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'ID', 'SQU_INV_REGULAR'},
				VALUE_CHANGE_TABLE 	= {
					{'PositionY',	735} -- 1070
				}
			}
		}
	},
	{
	--	switch inventory window expansion icons placement
		MBIN_FILE_SOURCE	= 'UI/COMPONENTS/PAGESELECTBARSIDE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'TECH_EXPAND'},
				VALUE_CHANGE_TABLE 	= {
					{'PositionY',	440} -- 380
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'ITEM_EXPAND'},
				VALUE_CHANGE_TABLE 	= {
					{'PositionY',	380} -- 440
				}
			}
		}
	}
}}}}
