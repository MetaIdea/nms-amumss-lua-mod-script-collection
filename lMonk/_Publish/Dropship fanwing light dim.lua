--------------------------------------------------------------------------
local desc = [[
  Dim lights on dropship subwing_F (and fix the inverted decal)
]]------------------------------------------------------------------------
	
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Dropship fanwing light dim.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_LEFT.SCENE.MBIN',
			'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_RIGHT.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'Glow'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		0},		-- -0.05168
					{'ScaleY',		0.42},	-- 1
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'pointLight1', 'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		26000}	-- 50000
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'pointLight2', 'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		26000}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_LEFT.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Rectangle_A'},
				VALUE_CHANGE_TABLE 	= {
					{'RotX',		-59.09569},
					{'RotY',		90}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Letter_A'},
				VALUE_CHANGE_TABLE 	= {
					{'RotX',		-60.328335},
					{'RotY',		90}
				}
			}
		}
	}
}}}}
