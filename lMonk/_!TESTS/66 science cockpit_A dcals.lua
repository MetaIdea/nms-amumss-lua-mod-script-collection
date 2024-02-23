--[[-----------------------------------------
 snippets
-------------------------------------------]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TEST 06 explorer cockpit_A decals.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_BATCHNAME		= '_TEST 01.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/COCKPIT/COCKPITA/BACK/COCKPITABACKB.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo1_A'},
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		-90},
					{'TransY',		3.26},	-- 2.655958
					{'TransZ',		-4.72},	-- -3.727964
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo2_A'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		3.26},	-- 2.655958
					{'TransZ',		-4.72},	-- -3.727964
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSI/WINGILEFT.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo1_A1'},
				VALUE_CHANGE_TABLE 	= {
					{'RotX',		-90},	-- 90
					{'RotY',		-90},
					{'TransX',		1.1},	-- 0.972093
					{'ScaleX', 		0.562464},
					{'ScaleY', 		0.562464},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo2_A2'},
				VALUE_CHANGE_TABLE 	= {
					{'RotX',		-90},	-- 90
					{'RotY',		-90},
					{'TransX',		1.1},	-- 0.972093
					{'ScaleX', 		0.562464},
					{'ScaleY', 		0.562464},
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSI/WINGIRIGHT.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo1_A1'},
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		-90},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo2_A2'},
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		-90},
				}
			}
		}
	},
	-- {
		-- MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/COCKPIT/COCKPITA/COCKPITA.SCENE.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'Trail'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'TransX',		1.055}
				-- }
			-- },
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'Trail1'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'TransX',		-1.055}
				-- }
			-- }

		-- }
	-- },
}}}}
