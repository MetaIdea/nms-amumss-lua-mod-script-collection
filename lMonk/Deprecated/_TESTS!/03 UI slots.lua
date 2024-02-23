------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 3 cargo on top.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'UI/INVENTORYPAGE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				FOREACH_SKW_GROUP 	= {
					{'ID', 'INV_TECH_LABEL'}, -- TECHHEADER
					{'ID', 'TECHICON'},
					{'ID', 'INV_MAIN_LABEL'}, -- CARGOHEADER
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
	}
}}}}
