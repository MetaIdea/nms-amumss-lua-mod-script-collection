------------------------------------------------------------------------------
-- body_F fix main engine rod texture

trail_z_shift = 0.52

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TEST 01 sailship trails.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		-- |sailship re-align trails|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			-- {
				-- MATH_OPERATION 		= '+',
				-- SPECIAL_KEY_WORDS	= {'Name', 'Trail105L3'},	-- body_A
				-- VALUE_CHANGE_TABLE 	= {
					-- {'TransZ',		trail_z_shift} -- -2.653821
				-- }
			-- },
			-- {
				-- MATH_OPERATION 		= '+',
				-- SPECIAL_KEY_WORDS	= {'Name', 'Trail107'}, -- body_B
				-- VALUE_CHANGE_TABLE 	= {
					-- {'TransZ',		trail_z_shift} -- -2.463729
				-- }
			-- },
			-- {
				-- MATH_OPERATION 		= '+',
				-- SPECIAL_KEY_WORDS	= {'Name', 'Trail1015'}, -- body_F
				-- VALUE_CHANGE_TABLE 	= {
					-- {'TransZ',		trail_z_shift} -- -2.454548
				-- }
			-- },
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail105L3'},	-- body_A
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		180}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail105L1'}, -- wings_E R
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		180}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail105L2'}, -- wings_E L
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		180}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail105L4'}, -- _wings_D R
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		180}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail105L5'}, -- _wings_D L
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		180}
				}
			}
		}
	},
}}}}
