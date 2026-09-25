---------------------------------------------------------------------------------------
local mod_desc = [[
  Ramp Controls Reposition v1.2

  Moves the interior ramp control and teleporter switches onto the side walls
  (bays A and B). REFLight is a child of RampControls, so it's offset back to
  stay in its vanilla spot.

  v1.2  Removed edits that matched vanilla values
]]-------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'Jank7.Ramp_Controls_Reposition_v1.2',
	MOD_AUTHOR			= 'Jank7',
	NMS_VERSION			= '7.03',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|Bay A (Titan) - reposition RampControls + TeleporterControls, keep REFLight put|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/AIRLOCK_NESW_A.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{ SPECIAL_KEY_WORDS = {'Name', 'RampControls'}, REPLACE_TYPE = 'ONCE',
				VALUE_CHANGE_TABLE = {
					{'TransX', -1.44}, {'TransY', 1.60}, {'TransZ', 0.61},
				}
			},
			{ SPECIAL_KEY_WORDS = {'Name', 'REFRampControl'}, REPLACE_TYPE = 'ONCE',
				VALUE_CHANGE_TABLE = {
					{'RotY', -90},
				}
			},
			{ SPECIAL_KEY_WORDS = {'Name', 'TeleporterControls'}, REPLACE_TYPE = 'ONCE',
				VALUE_CHANGE_TABLE = {
					{'TransX', 1.44}, {'TransY', 1.60}, {'TransZ', 0.61},
				}
			},
			{ SPECIAL_KEY_WORDS = {'Name', 'REFTeleControl'}, REPLACE_TYPE = 'ONCE',
				VALUE_CHANGE_TABLE = {
					{'RotY', 90},
				}
			},
			{ SPECIAL_KEY_WORDS = {'Name', 'RampControls', 'Name', 'REFLight'}, REPLACE_TYPE = 'ONCE',
				VALUE_CHANGE_TABLE = {
					{'TransX', 1.44}, {'TransY', 1.131634}, {'TransZ', 3.213459},
				}
			},
		}
	},
	{--	|Bay B (Ambassador) - reposition RampControls + TeleporterControls, keep REFLight put|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/AIRLOCK_NESW_B.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{ SPECIAL_KEY_WORDS = {'Name', 'RampControls'}, REPLACE_TYPE = 'ONCE',
				VALUE_CHANGE_TABLE = {
					{'TransX', -1.57}, {'TransY', 1.98}, {'TransZ', 0.832},
				}
			},
			{ SPECIAL_KEY_WORDS = {'Name', 'REFRampControl'}, REPLACE_TYPE = 'ONCE',
				VALUE_CHANGE_TABLE = {
					{'RotX', -45}, {'RotY', -90},
				}
			},
			{ SPECIAL_KEY_WORDS = {'Name', 'TeleporterControls'}, REPLACE_TYPE = 'ONCE',
				VALUE_CHANGE_TABLE = {
					{'TransX', 1.57}, {'TransY', 1.98}, {'TransZ', 0.8535},
				}
			},
			{ SPECIAL_KEY_WORDS = {'Name', 'REFTeleControl'}, REPLACE_TYPE = 'ONCE',
				VALUE_CHANGE_TABLE = {
					{'RotX', -45}, {'RotY', 90},
				}
			},
			{ SPECIAL_KEY_WORDS = {'Name', 'RampControls', 'Name', 'REFLight'}, REPLACE_TYPE = 'ONCE',
				VALUE_CHANGE_TABLE = {
					{'TransX', 1.57}, {'TransY', 0.907617}, {'TransZ', 1.037329},
				}
			},
		}
	},
}}}}