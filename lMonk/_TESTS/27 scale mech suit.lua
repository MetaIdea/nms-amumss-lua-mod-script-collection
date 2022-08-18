--[[-----------------------------------------
 Resize the mech(!)
-------------------------------------------]]

M_SCALE		= 2
GUN_SCALE	= M_SCALE / 1.5
JET_X_SHIFT	= 4.4
JET_Y_SHIFT	= -1.2
GUN_X_SHIFT	= JET_X_SHIFT / 2

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 27 scale mech suit.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/VEHICLES/MECH_SUIT/MECH_SUIT.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			-- {
			-- 	MATH_OPERATION 		= '*',
			-- 	INTEGER_TO_FLOAT	= 'Force',
			-- 	SPECIAL_KEY_WORDS	= {'Name', 'MODELS/COMMON/VEHICLES/MECH_SUIT/MECH_SUIT'},
			-- 	VALUE_CHANGE_TABLE 	= {
			-- 		{'ScaleX',			M_SCALE},
			-- 		{'ScaleY',			M_SCALE},
			-- 		{'ScaleZ',			M_SCALE},
			-- 	},
			-- },
			-- {
			-- 	MATH_OPERATION 		= '*',
			-- 	INTEGER_TO_FLOAT	= 'Force',
			-- 	SPECIAL_KEY_WORDS	= {'Name', 'TrajectorySHJnt'},
			-- 	VALUE_CHANGE_TABLE 	= {
			-- 		{'ScaleX',			M_SCALE},
			-- 		{'ScaleY',			M_SCALE},
			-- 		{'ScaleZ',			M_SCALE},
			-- 	},
			-- },
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'Gun'}, -- includes REFMiningLaser + GunAttach ??
				VALUE_CHANGE_TABLE 	= {
					{'TransX',			GUN_X_SHIFT}
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'Gun'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',			GUN_SCALE},
					{'ScaleY',			GUN_SCALE},
					{'ScaleZ',			GUN_SCALE},
				},
			},
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'Stage1'}, -- includes Engine_fume3 + Engine_fume3 ??
				VALUE_CHANGE_TABLE 	= {
					{'TransX',			GUN_X_SHIFT}
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'Stage1'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',			M_SCALE},
					{'ScaleY',			M_SCALE},
					{'ScaleZ',			M_SCALE},
				},
			},
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'RBottomJetpack'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',			JET_X_SHIFT},
					{'TransY',			JET_Y_SHIFT}
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'RBottomJetpack'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',			M_SCALE},
					{'ScaleY',			M_SCALE},
					{'ScaleZ',			M_SCALE},
				},
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'RBottomJetpack', 'Name', 'REFJetpack06'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',			M_SCALE},
					{'ScaleY',			M_SCALE},
					{'ScaleZ',			M_SCALE},
				},
			},
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'LBottomJetpack'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',			JET_X_SHIFT},
					{'TransY',			JET_Y_SHIFT}
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'LBottomJetpack'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',			M_SCALE},
					{'ScaleY',			M_SCALE},
					{'ScaleZ',			M_SCALE},
				},
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'LBottomJetpack', 'Name', 'REFJetpack05'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',			M_SCALE},
					{'ScaleY',			M_SCALE},
					{'ScaleZ',			M_SCALE},
				},
			},
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'LMiddleJetpack'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',			JET_X_SHIFT},
					{'TransY',			JET_Y_SHIFT}
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'LMiddleJetpack'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',			M_SCALE},
					{'ScaleY',			M_SCALE},
					{'ScaleZ',			M_SCALE},
				},
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'LMiddleJetpack', 'Name', 'REFJetpack04'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',			M_SCALE},
					{'ScaleY',			M_SCALE},
					{'ScaleZ',			M_SCALE},
				},
			},
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'RMiddleJetpack'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',			JET_X_SHIFT},
					{'TransY',			JET_Y_SHIFT}
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'RMiddleJetpack'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',			M_SCALE},
					{'ScaleY',			M_SCALE},
					{'ScaleZ',			M_SCALE},
				},
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'RMiddleJetpack', 'Name', 'REFJetpack03'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',			M_SCALE},
					{'ScaleY',			M_SCALE},
					{'ScaleZ',			M_SCALE},
				},
			},
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'RTopJetpack'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',			JET_X_SHIFT},
					{'TransY',			JET_Y_SHIFT}
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'RTopJetpack'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',			M_SCALE},
					{'ScaleY',			M_SCALE},
					{'ScaleZ',			M_SCALE},
				},
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'RTopJetpack', 'Name', 'REFJetpack02'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',			M_SCALE},
					{'ScaleY',			M_SCALE},
					{'ScaleZ',			M_SCALE},
				},
			},
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'LTopJetpack'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',			JET_X_SHIFT},
					{'TransY',			JET_Y_SHIFT}
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'LTopJetpack'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',			M_SCALE},
					{'ScaleY',			M_SCALE},
					{'ScaleZ',			M_SCALE},
				},
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'LTopJetpack', 'Name', 'REFJetpack01'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',			M_SCALE},
					{'ScaleY',			M_SCALE},
					{'ScaleZ',			M_SCALE},
				},
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'RootLocator'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',			M_SCALE},
					{'ScaleY',			M_SCALE},
					{'ScaleZ',			M_SCALE},
				},
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'mech_mesh'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',			M_SCALE},
					{'ScaleY',			M_SCALE},
					{'ScaleZ',			M_SCALE},
				}
			}
		}
	}
}}}}
