--[[┎──────────────────────────────────────────────────────────
	┃ Increase exocraft inventory size
	┃ Vykeen monolith accepts Effigy instead of dagger
	┃ Add freighter cargo bulkhead to freighter tech tree
────┸──────────────────────────────────────────────────────--]]
local function NewItemTreeNode(id)
	return [[
		<Property value="GcUnlockableItemTreeNode.xml">
			<Property name="Unlockable" value="]]..id..[[" />
			<Property name="Children" />
		</Property>
	]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_TABLES ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'VehicleSmall',
				VALUE_CHANGE_TABLE 	= {
					{'MinSlots',	24},
					{'MaxSlots',	24}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'VehicleMedium',
				VALUE_CHANGE_TABLE 	= {
					{'MinSlots',	36},
					{'MaxSlots',	36}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'VehicleLarge',
				VALUE_CHANGE_TABLE 	= {
					{'MinSlots',	48},
					{'MaxSlots',	48}
				}
			},
			-- {
				-- REPLACE_TYPE 		= 'ALL',
				-- MATH_OPERATION 		= '+',
				-- VALUE_MATCH			= 48,
				-- VALUE_MATCH_OPTIONS = '<',
				-- PRECEDING_KEY_WORDS = 'MaxTechInventoryCapacity',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'IGNORE',		27}
				-- }
			-- }
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'FOOD_R_PASTRY'},
				VALUE_CHANGE_TABLE 	= {
					{'RewardID',				'BAKE_SHIELD'},
					{'CloseInventoryWhenUsed',	true}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/COSTTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Id', 'WAR_FIND_PORTAL', 'Id', 'WAR_CURIO2'},
				VALUE_CHANGE_TABLE 	= {
					{'Id',			'WAR_CURIO1'}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Title', 'UI_FREIGHTER_TREE'},
				PRECEDING_KEY_WORDS = 'Children',
				ADD					= NewItemTreeNode('FREI_INV_TOKEN')
			}
		}
	}
}}}}
