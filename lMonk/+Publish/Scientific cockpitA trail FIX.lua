-------------------------------------------------------------------------------------
mod_desc = [[
  Re-center the Scientific ship cockpitA (hopper) engine trail, which was misaligned
  Fix cockpit_A back & tail fins decals.
]]-----------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Scientific cockpitA trail FIX.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.10',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/COCKPIT/COCKPITA/COCKPITA.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
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
	{
		-- |Scientific cockpitA back decals| fix
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/COCKPIT/COCKPITA/BACK/COCKPITABACKB.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo1_A'},
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		-90},
					{'TransY',		3.26},
					{'TransZ',		-4.72}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo2_A'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		3.26},
					{'TransZ',		-4.72}
				}
			}
		}
	},
	{
		-- |Scientific cockpitA back fins decals| fix
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSI/WINGILEFT.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo1_A1'},
				VALUE_CHANGE_TABLE 	= {
					{'RotX',		-90},
					{'RotY',		-90},
					{'TransX',		1.1},
					{'ScaleX', 		0.56},
					{'ScaleY', 		0.56}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo2_A2'},
				VALUE_CHANGE_TABLE 	= {
					{'RotX',		-90},
					{'RotY',		-90},
					{'TransX',		1.1},
					{'ScaleX', 		0.56},
					{'ScaleY', 		0.56}
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
					{'ScaleX', 		0.56},
					{'ScaleY', 		0.56}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo2_A2'},
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		-90},
					{'ScaleX', 		0.56},
					{'ScaleY', 		0.56}
				}
			}
		}
	}
}}}}
