------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
------------------------------------------------------
local mod_desc = [[
  Vykeen monolith accepts Effigy instead of dagger
  cheaper slots
]]----------------------------------------------------

local function AddPrx(prx, T)
	for i=1, #T do T[i] = {prx, T[i]} end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__REALITY various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_BATCHNAME		= '_REALITY ~@~collection.pak',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|SUBSTANCES|
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCSUBSTANCETABLE.MBIN',
		EXML_CHANGE_TABLE	= (
			function()
				local T = {}
				for id, sym in pairs({
					EX_YELLOW	= 'UI_CU_EX_SYM',
					EX_RED		= 'UI_CD_EX_SYM',
					EX_GREEN	= 'UI_EM_EX_SYM',
					EX_BLUE		= 'UI_IN_EX_SYM',
					SPACEGUNK1	= 'UI_SGUNK1_SYM',
					SPACEGUNK2	= 'UI_SGUNK2_SYM',
					SPACEGUNK3	= 'UI_SGUNK3_SYM',
					SPACEGUNK4	= 'UI_SGUNK4_SYM',
					SPACEGUNK5	= 'UI_SGUNK5_SYM',
					TIMEDUST	= 'UI_TIMEDUST_SYM',
					TIMEMILK	= 'UI_TIMEMILK_SYM',
					ROBOT2		= 'UI_ROBOT2_SYM',
				}) do
					T[#T+1] = {
						SPECIAL_KEY_WORDS	= {'ID', id},
						VALUE_CHANGE_TABLE 	= {
							{'Symbol',		sym}
						}
					}
				end
				for id, rgb in pairs({
					AF_METAL	= 'FF8A7F72',
					ROCKETSUB	= 'FF355A7D',
					LAVA1		= 'FF283C4F',
				}) do
					T[#T+1] = {
						SPECIAL_KEY_WORDS	= {'ID', id},
						PRECEDING_KEY_WORDS = 'Colour',
						INTEGER_TO_FLOAT	= 'Force',
						VALUE_CHANGE_TABLE 	= Hex2VCT(rgb)
					}
				end
				return T
			end
		)()
	},
	{--	|COSTTABLE|
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/COSTTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Id', 'WAR_FIND_PORTAL', 'Id', 'WAR_CURIO2'},
				VALUE_CHANGE_TABLE 	= {
					{'Id',			'WAR_CURIO1'}
				}
			},
			{
				SPECIAL_KEY_WORDS 	= AddPrx('Id', {
					'C_PILOT_UPGRADE',
					'C_PILOT_SLOT',
					'C_PET_SLOT',
					'C_WEAP_UPGRADE',
					'C_INV_WEAP_CR',
					'C_INV_WEAP_C',
					'C_INV_SAL_CASH',
					'C_INV_SAL_CASHR'
				}),
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS = 'Costs',
				VALUE_CHANGE_TABLE 	= {
					{'Ignore',		0.2}
				}
			}
		}
	},
	{--	|QS shop| remove fireworks
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/PURCHASEABLESPECIALS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					{'ID', 'SPEC_FIREWORK.-'},
					{'ID', 'ODD_EGG'},
					{'ID', 'MYSTERY_BEACON'},
				},
				REMOVE				= 'Section'
			}
		}
	},
	{--	|Seasons shop| remove unwanted
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/UNLOCKABLESEASONREWARDS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					{'ID', '.-FIREPACK.-'},
					{'ID', 'MYSTERY_TRACKER'},
					{'ID', 'S10_PART1B'},
				},
				REMOVE				= 'Section'
			}
		}
	}
}}}}
