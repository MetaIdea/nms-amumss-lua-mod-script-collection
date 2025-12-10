---------------------------------------------------------------------------------------
local mod_desc = [[
  Move ramp and teleport control switches to side walls instead of just floating in air
]]-------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'MOD.lMonk.Corvette Ramp Control Switches',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.18',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|corvette ramp A controls|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/AIRLOCK_NESW_A.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'REFLight'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RampControls'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		-1.35},
					{'TransY',		2.05},
					{'TransZ',		0.68}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'REFRampControl'},
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		270}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'TeleporterControls'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		1.35},
					{'TransY',		2.05},
					{'TransZ',		0.68}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'REFTeleControl'},
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		90}
				}
			},
		}
	},
	{--	|corvette ramp B controls|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/AIRLOCK_NESW_B.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'REFLight'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RampControls'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		-1.35},
					{'TransY',		2.25},
					{'TransZ',		0.84}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'REFRampControl'},
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		270}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'TeleporterControls'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		1.35},
					{'TransY',		2.25},
					{'TransZ',		0.84}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'REFTeleControl'},
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		90}
				}
			},
		}
	},
}}}}