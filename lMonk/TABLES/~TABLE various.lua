------------------------------------------------------
local desc = [[
  Increase exocraft inventory size
  Vykeen monolith accepts Effigy instead of dagger
  cheaper pet slots
]]----------------------------------------------------

local function AddConsumableItem(id, reward, hovt)
	return [[
	<Property value="GcConsumableItem.xml">
		<Property name="ID" value="]]..id..[["/>
		<Property name="RewardID" value="]]..reward..[["/>
		<Property name="ButtonLocID" value="UI_CONSUME"/>
		<Property name="ButtonSubLocID" value="]]..(hovt or '')..[["/>
		<Property name="CloseInventoryWhenUsed" value="False"/>
		<Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
			<Property name="AkEvent" value="INVALID_EVENT"/>
		</Property>
		<Property name="RewardFailedLocID" value="INTRCT_NOROOM_L"/>
		<Property name="DestroyItemWhenConsumed" value="True"/>
	</Property>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	---	|INVENTORY higher vehicle inventory|
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
	---	|CONSUMABLEs replace rewards|
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
			--	chewy wires
				SPECIAL_KEY_WORDS	= {'ID', 'FOOD_V_ROBOT'},
				VALUE_CHANGE_TABLE 	= {
					{'RewardID',				'HEALTH_MAJOR'},
					{'CloseInventoryWhenUsed',	true}
				}
			},
			{
			--	wheat testing
				SPECIAL_KEY_WORDS	= {'ID', 'FOOD_P_ALL1'},
				VALUE_CHANGE_TABLE 	= {
					{'RewardID',				'TEST_REWARD_09'},
					{'CloseInventoryWhenUsed',	true}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'Table',
				ADD 				= AddConsumableItem('HEXCORE', 'RS_QUICKSILV_T')
			}
		}
	},
	{
	---	|COSTTABLE cheaper slots_Effigy for monolith|
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/COSTTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Id', 'WAR_FIND_PORTAL', 'Id', 'WAR_CURIO2'},
				VALUE_CHANGE_TABLE 	= {
					{'Id',			'WAR_CURIO1'}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Id', 'C_INV_WEAP_C'},
				PRECEDING_KEY_WORDS = 'Costs',
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		0.2}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Id', 'C_INV_WEAP_CR'},
				PRECEDING_KEY_WORDS = 'Costs',
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		0.2}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Id', 'C_INV_SAL_CASH'},
				PRECEDING_KEY_WORDS = 'Costs',
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		0.2}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Id', 'C_INV_SAL_CASHR'},
				PRECEDING_KEY_WORDS = 'Costs',
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		0.2}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
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
