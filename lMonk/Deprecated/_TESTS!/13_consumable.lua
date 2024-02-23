------------------------------------------------------
local desc = [[
  add new consumable with section saving and editing
]]----------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 13 new consumable.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'ALIEN_TECHBOX'},
				SECTION_SAVE_TO		= 'gc_consumable_item'
			},
			{
				SECTION_EDIT 		= 'gc_consumable_item',
				VALUE_CHANGE_TABLE 	= {
					{'ID',						'HEXCORE'},
					{'RewardID',				'RS_QUICKSILV_T'},
					{'ButtonLocID',				'UI_CONSUME'},
					{'ButtonSubLocID',			''},
					{'CloseInventoryWhenUsed',	true},
					{'DestroyItemWhenConsumed',	true}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'Table',
				SECTION_ADD_NAMED 	= 'gc_consumable_item'
			}
		}
	}
}}}}
