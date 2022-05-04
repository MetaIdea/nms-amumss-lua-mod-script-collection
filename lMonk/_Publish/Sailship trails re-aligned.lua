---------------------------------------------------------------
local desc = [[
  re-align engine trails for 5 sailship parts.
]]-------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.sailship trails re-aligned.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail105L3'}, -- body_A
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
	}
}}}}
