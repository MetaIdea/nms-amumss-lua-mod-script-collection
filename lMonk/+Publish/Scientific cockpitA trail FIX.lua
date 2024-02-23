-------------------------------------------------------------------------------------
local mod_desc = [[
  Re-center the Scientific ship cockpitA (hopper) engine trail, which was misaligned
  Fix cockpit_A back & tail fins decals.
]]-----------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Scientific cockpitA trail FIX.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|Scientific cockpitA re-center trails|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/COCKPIT/COCKPITA/COCKPITA.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {
					{'Name', 'Gun1Ref1'},
					{'Name', 'Gun1Ref2'},
				},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		-0.32},
					{'TransY',		0.952},
					{'TransZ',		-0.48},
					{'RotZ',		-18},
					{'ScaleX', 		0.7},
					{'ScaleY', 		0.7},
					{'ScaleZ', 		0.7}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Gun1Ref2'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		0.32},
					{'RotZ',		18}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		1.055}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail1'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		-1.055}
				}
			}
		}
	},
	{--	|Scientific cockpitD re-align trails|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/COCKPIT/COCKPITD/COCKPITD.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {
					{'Name', 'Gun1Ref3'},
					{'Name', 'Gun1Ref4'},
				},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		-0.9},
					{'TransY',		2.5},
					{'TransZ',		-0.6},
					{'RotZ',		-90},
					{'ScaleX', 		0.8},
					{'ScaleY', 		0.8},
					{'ScaleZ', 		0.8}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Gun1Ref4'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		0.9},
					{'RotZ',		90}
				}
			},
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'Trail'},
					{'Name', 'Trail1'}
				},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		1.8692},	-- 2.069246
					{'TransZ',		-2.019},	-- -2.51901
					{'RotX',		0}			-- 30.782648
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Number_A1'},
				VALUE_CHANGE_TABLE 	= {
					{'RotX',		-38.173},
					{'RotY',		0}
				}
			}
		}
	},
	{--	|Scientific cockpitA back decals| fix
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/COCKPIT/COCKPITA/BACK/COCKPITABACKB.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', '_logo1_A'},
					{'Name', '_logo2_A'}
				},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		3.26},	-- 2.65596
					{'TransZ',		-4.72},	-- -3.72796
				}
			}
		}
	},
	{-- |wing_A decals| fix
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSI/WINGILEFT.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {
					{'Name', '_logo1_A1'},
					{'Name', '_logo2_A2'},
				},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		1.1},
					{'RotX',		90},
					{'RotY',		90},
					{'ScaleX', 		0.56},
					{'ScaleY', 		0.56}
				}
			}
		}
	},
	{-- |wing_A decals| fix
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSI/WINGIRIGHT.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {
					{'Name', '_logo1_A1'},
					{'Name', '_logo2_A2'},
				},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		-1.1},
					{'RotX',		-90},
					{'RotY',		90},
					{'ScaleX', 		0.56},
					{'ScaleY', 		0.56}
				}
			}
		}
	},
}}}}
