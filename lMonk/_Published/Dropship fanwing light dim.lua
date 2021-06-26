--[[┎──────────────────────────────────────────────────────────────────────────────────────
	┃ Dim lights on dropship wing_F
────┸──────────────────────────────────────────────────────────────────────────────────--]]
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Dropship fanwing light dim.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_DESCRIPTION		= 'Dim lights on dropship wing_F',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_LEFT.SCENE.MBIN',
			'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_RIGHT.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Name', 'Glow'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		0},		-- -0.05168
					{'ScaleY',		0.42},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'pointLight1', 'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		26000}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'pointLight2', 'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		26000}
				}
			}
		}
	}
}}}}
