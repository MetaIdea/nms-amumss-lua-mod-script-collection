------------------------------------------------------
local desc = [[
  Increase exocraft inventory size
  Vykeen monolith accepts Effigy instead of dagger
  cheaper pet slots
  Add freighter cargo bulkhead to freighter tech tree
]]----------------------------------------------------

local function NewItemTreeNode(ids, n)
	n = n or 1
	local exml = [[
		<Property value="GcUnlockableItemTreeNode.xml">
			<Property name="Unlockable" value="]]..ids[n]..[[" />
			%s
		</Property>]]
	if n == #ids then
		return string.format(exml, '<Property name="Children"/>')
	else
		return string.format(exml, '<Property name="Children">'..NewItemTreeNode(ids, n+1)..'</Property>')
	end
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		-- |INVENTORY higher vehicle inventory|
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'VehicleSmall',
				VALUE_CHANGE_TABLE 	= {
					{'MinSlots',	26},
					{'MaxSlots',	26}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'VehicleMedium',
				VALUE_CHANGE_TABLE 	= {
					{'MinSlots',	42},
					{'MaxSlots',	42}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'VehicleLarge',
				VALUE_CHANGE_TABLE 	= {
					{'MinSlots',	48},
					{'MaxSlots',	48}
				}
			}
		}
	},
	{
		-- |CONSUMABLE healthy silicon egg|
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'FOOD_P_STELLAR'},
				VALUE_CHANGE_TABLE 	= {
					{'RewardID',				'HEALTH_MAJOR'},
					{'CloseInventoryWhenUsed',	true}
				}
			}
		}
	},
	{
		-- |UNLOCKABLE add tech to purchase|
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Unlockable', 'UT_PULSEFUEL'},
				PRECEDING_KEY_WORDS = 'Children',
				SECTION_ACTIVE		= 1,
				ADD					= NewItemTreeNode({'SOLAR_SAIL', 'PHOTONIX_CORE', 'SHIPJUMP_SPEC'})
			},
			{
				SPECIAL_KEY_WORDS	= {'Title', 'UI_FREIGHTER_TREE'},
				PRECEDING_KEY_WORDS = 'Children',
				SECTION_ACTIVE		= 1,
				ADD					= NewItemTreeNode({'FREI_INV_TOKEN'})
			},
		}
	},
	{
		-- |COSTTABLE cheaper slots_Effigy for monolith|
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/COSTTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Id', 'WAR_FIND_PORTAL', 'Id', 'WAR_CURIO2'},
				VALUE_CHANGE_TABLE 	= {
					{'Id',			'WAR_CURIO1'}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Id', 'C_INV_WEAP_C'},
				PRECEDING_KEY_WORDS = 'Costs',
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		0.1}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Id', 'C_INV_WEAP_CR'},
				PRECEDING_KEY_WORDS = 'Costs',
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		0.1}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Id', 'C_INV_SAL_CASH'},
				PRECEDING_KEY_WORDS = 'Costs',
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		0.1}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Id', 'C_INV_SAL_CASHR'},
				PRECEDING_KEY_WORDS = 'Costs',
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		0.1}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Id', 'C_PET_SLOT'},
				PRECEDING_KEY_WORDS = 'Costs',
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		0.1}
				}
			}
		}
	}
}}}}
