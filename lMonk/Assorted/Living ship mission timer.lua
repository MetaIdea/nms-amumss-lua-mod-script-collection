---------------------------------------------------------------------------------
local desc = [[
  shorten living ship mission waiting intervals (parts "maturing" over 24 hours)
]]-------------------------------------------------------------------------------
Timer_mult = 0.1

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'living ship mission timer.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/MISSIONS/SPACEPOIMISSIONTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Message', 'UI_BIO_SHIP_MISSION1_MSG3'},
				VALUE_CHANGE_TABLE 	= {
					{'Time',		Timer_mult},
					{'Randomness',	Timer_mult * 3}
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Message', 'UI_BIO_SHIP_MISSION2_MSG3'},
				VALUE_CHANGE_TABLE 	= {
					{'Time',		Timer_mult},
					{'Randomness',	Timer_mult * 3}
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Message', 'UI_BIO_SHIP_MISSION3_MSG3'},
				VALUE_CHANGE_TABLE 	= {
					{'Time',		Timer_mult},
					{'Randomness',	Timer_mult * 3}
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Message', 'UI_BIO_SHIP_MISSION4_MSG3'},
				VALUE_CHANGE_TABLE 	= {
					{'Time',		Timer_mult},
					{'Randomness',	Timer_mult * 3}
				}
			}
		}
	}
}}}}
