------------------------------------------------------
local desc = [[
  Increase exocraft inventory size
  Vykeen monolith accepts Effigy instead of dagger
  cheaper pet slots
]]----------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	---	|SUBSTANCES|
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCSUBSTANCETABLE.MBIN',
		EXML_CHANGE_TABLE	= (
			function()
				local T = {}
				for _,sym in ipairs({
					{'EX_YELLOW',	'UI_CU_EX_SYM'},
					{'EX_RED',		'UI_CD_EX_SYM'},
					{'EX_GREEN',	'UI_EM_EX_SYM'},
					{'EX_BLUE',		'UI_IN_EX_SYM'},
					{'SPACEGUNK1',	'UI_SGUNK1_SYM'},
					{'SPACEGUNK2',	'UI_SGUNK2_SYM'},
					{'SPACEGUNK3',	'UI_SGUNK3_SYM'},
					{'SPACEGUNK4',	'UI_SGUNK4_SYM'},
					{'SPACEGUNK5',	'UI_SGUNK5_SYM'},
					{'TIMEDUST',	'UI_TIMEDUST_SYM'},
					{'TIMEMILK',	'UI_TIMEMILK_SYM'}
				}) do
					table.insert(T, {
						SPECIAL_KEY_WORDS	= {'ID', sym[1]},
						VALUE_CHANGE_TABLE 	= { {'Symbol', sym[2]} }
					})
				end
				return T
			end
		)()
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
				FOREACH_SKW_GROUP 	= {
					{'Id', 'C_INV_WEAP_C'},
					{'Id', 'C_INV_WEAP_CR'},
					{'Id', 'C_INV_SAL_CASH'},
					{'Id', 'C_INV_SAL_CASHR'},
					{'Id', 'C_PET_SLOT'},
				},
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS = 'Costs',
				VALUE_CHANGE_TABLE 	= {
					{'Ignore',		0.2}
				}
			}
		}
	}
	-- {
	-- ---	|INVENTORY bigger|
		-- MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- FOREACH_SKW_GROUP 	= {
					-- {'ChestSmall', 'GcInventoryLayoutGenerationDataEntry.xml'},
					-- {'ChestMedium', 'GcInventoryLayoutGenerationDataEntry.xml'},
					-- {'ChestLarge', 'GcInventoryLayoutGenerationDataEntry.xml'},
				-- },
				-- VALUE_CHANGE_TABLE 	= {
					-- {'MinSlots',			60},
					-- {'MaxSlots',			60},
					-- {'MaxWidthSmall',		10},-- 8
					-- -- {'MaxHeightSmall',		6},	-- 6
					-- {'MaxWidthStandard',	10},-- 8
					-- -- {'MaxHeightStandard',	6},	-- 6
					-- {'MaxWidthLarge',		10},-- 8
					-- -- {'MaxHeightLarge',		6},	-- 6
				-- }
			-- }
		-- }
	-- },
}}}}
