--[[-----------------------------------------
 snippets
-------------------------------------------]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TEST 07 fighter cockpit F decals.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_BATCHNAME		= '_TEST 02.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_F/COCKPTF.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'logo_A1'},
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		-90},
					{'ScaleX',		0.27},	-- 0.3
					{'ScaleY',		0.27},	-- 0.3
					{'TransY', 		1.02},	-- 1.196
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'logo_A2'}, -- front fin ?
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		-90},
					{'ScaleX',		0.27},	-- 0.3
					{'ScaleY',		0.27},	-- 0.3
					{'TransY', 		1.02},	-- 1.196
				}
			},
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'logo_A3'}, -- front fin ?
				-- VALUE_CHANGE_TABLE 	= {
					-- {'RotY',		-90},
					-- -- {'TransY', 		1.4},	-- 1.196463
					-- -- {'TransZ',		8.75},
				-- }
			-- },
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'logo_A4'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'RotY',		-90},
					-- -- {'TransY', 		1.1},	-- 1.196463
				-- }
			-- },
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT'},
				REMOVE				= 'Section'
			}
			
		}
	}
}}}}
