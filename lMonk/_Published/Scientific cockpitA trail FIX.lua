--[[┎──────────────────────────────────────────────────────────────────────────────────────
	┃ Re-center the Scientific ship cockpitA (hopper) engine trail, which was misaligned.
────┸──────────────────────────────────────────────────────────────────────────────────--]]
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Scientific cockpitA trail FIX.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_DESCRIPTION		= 'Re-center the Scientific ship cockpitA (hopper) engine trail, which was misaligned.',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITA\COCKPITA.SCENE.MBIN',
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
	}
}}}}
