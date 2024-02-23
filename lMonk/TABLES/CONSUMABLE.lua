------------------------------------------------------
local mod_desc = [[
  edit and add new consumables
]]----------------------------------------------------

local consumable_items = {
	{
		id		= 'HEXCORE',
		reward	= 'RS_QUICKSILV_T'
	},
	{
		id		= 'SUPERFOOD',
		reward	= 'HEALTH_MAJOR',
		closed	= true
	},
	{
		id		= 'CHART_BUILDER',
		reward	= 'R_CHART_BUILDER',
		closed	= true
	},
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE CONSUMABLE.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {
		{
			MBIN_CHANGE_TABLE	= {
				{
					MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN',
					EXML_CHANGE_TABLE	= {}
				}
			}
		}
	}
}

local ECT = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[1].EXML_CHANGE_TABLE

ECT[#ECT+1] = {
--	sievert beans (cooked gamma root)
	SPECIAL_KEY_WORDS	= {'ID', 'FOOD_P_RADFARM'},
	VALUE_CHANGE_TABLE 	= {
		{'RewardID',				'TEST_REWARD_09'},
		{'CloseInventoryWhenUsed',	true}
	}
}
-- ECT[#ECT+1] = {
-- --	glass grains (cooked frost crystal)
	-- SPECIAL_KEY_WORDS	= {'ID', 'FOOD_P_COLDFARM'},
	-- VALUE_CHANGE_TABLE 	= {
		-- {'RewardID',				'R_OPEN_TREE'},
		-- {'CloseInventoryWhenUsed',	true}
	-- }
-- }

ECT[#ECT+1] = {
	SPECIAL_KEY_WORDS	= {'ID', 'ALIEN_TECHBOX'},
	SECTION_SAVE_TO		= 'gc_consumable_item'
}

for _,item in ipairs(consumable_items) do
	ECT[#ECT+1] = {
		SECTION_EDIT 		= 'gc_consumable_item',
		VALUE_CHANGE_TABLE 	= {
			{'ID',						item.id},
			{'RewardID',				item.reward},
			{'ButtonLocID',				item.button	or 'UI_CONSUME'},
			{'ButtonSubLocID',			''},
			{'CloseInventoryWhenUsed',	item.closed	or false},
			{'DestroyItemWhenConsumed',	item.used	or true}
		}
	}
	ECT[#ECT+1] = {
		PRECEDING_KEY_WORDS = 'Table',
		SECTION_ADD_NAMED 	= 'gc_consumable_item'
	}
end
