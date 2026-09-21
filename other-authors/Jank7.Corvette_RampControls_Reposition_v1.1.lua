---------------------------------------------------------------------------------------
local mod_desc = [[
  Corvette RampControls Reposition v1.1 - moves the interior ramp control panel and
  teleporter/beam-down switch onto the side wall (bays A and B only; bay C's lift/hatch
  isn't repositioned).

  v1.1 fix: RampControls' own Children nest a REFERENCE node named "REFLight" (a real
  light prop). Its Transform is relative to RampControls, so moving RampControls also
  dragged the light to the new wall position. This version counter-offsets REFLight's
  own local Trans by the same amount RampControls moved, so it stays lit at its original
  vanilla position instead. "REFLight" isn't a unique Name in every bay file (bay B has
  a second, unrelated light elsewhere), so this uses SPECIAL_KEY_WORDS' own documented
  section/sub-section form ({"Name","RampControls","Name","REFLight"}) to scope the match
  to the one nested under RampControls specifically.
]]-------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'Jank7.Corvette_RampControls_Reposition_v1.1',
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
					{'RotX',    0},    {'RotY',   0},    {'RotZ',   0},
				}
			},
			{ SPECIAL_KEY_WORDS = {'Name', 'REFRampControl'}, REPLACE_TYPE = 'ONCE',
				VALUE_CHANGE_TABLE = {
					{'RotX', 0}, {'RotY', -90}, {'RotZ', 0},
				}
			},
			{ SPECIAL_KEY_WORDS = {'Name', 'TeleporterControls'}, REPLACE_TYPE = 'ONCE',
				VALUE_CHANGE_TABLE = {
					{'TransX', 1.44}, {'TransY', 1.60}, {'TransZ', 0.61},
					{'RotX',   0},    {'RotY',   0},    {'RotZ',   0},
				}
			},
			{ SPECIAL_KEY_WORDS = {'Name', 'REFTeleControl'}, REPLACE_TYPE = 'ONCE',
				VALUE_CHANGE_TABLE = {
					{'RotX', 0}, {'RotY', 90}, {'RotZ', 0},
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
					{'RotX',    0},    {'RotY',   0},    {'RotZ',   0},
				}
			},
			{ SPECIAL_KEY_WORDS = {'Name', 'REFRampControl'}, REPLACE_TYPE = 'ONCE',
				VALUE_CHANGE_TABLE = {
					{'RotX', -45}, {'RotY', -90}, {'RotZ', 0},
				}
			},
			{ SPECIAL_KEY_WORDS = {'Name', 'TeleporterControls'}, REPLACE_TYPE = 'ONCE',
				VALUE_CHANGE_TABLE = {
					{'TransX', 1.57}, {'TransY', 1.98}, {'TransZ', 0.8535},
					{'RotX',   0},    {'RotY',   0},    {'RotZ',   0},
				}
			},
			{ SPECIAL_KEY_WORDS = {'Name', 'REFTeleControl'}, REPLACE_TYPE = 'ONCE',
				VALUE_CHANGE_TABLE = {
					{'RotX', -45}, {'RotY', 90}, {'RotZ', 0},
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