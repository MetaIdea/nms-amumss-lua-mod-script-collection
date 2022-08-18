--[[-----------------------------------------
 snippets
-------------------------------------------]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST Black Warp + Nebulae.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		10}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'COL_R'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		0.5}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'COL_G'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		0.5}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'COL_B'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		0.5}
				}
			},



			{
				VALUE_CHANGE_TABLE 	= {
					{'VertRotationMax',	80},
					{'DefaultImpact',	'GRENADEEXPLODE'}
				}
			},
			{
				VALUE_MATCH_TYPE 	= 'NUMBER',
				MATH_OPERATION 		= '+',
				VALUE_MATCH			= 0.8,
				VALUE_MATCH_OPTIONS = '>',
				INTEGER_TO_FLOAT	= 'Force',
				PRECEDING_KEY_WORDS = 'VehicleExitFlashColour',
				VALUE_CHANGE_TABLE 	= {
					{'A',			0.5}	-- 1
				}
			},

			{
				PRECEDING_KEY_WORDS	= 'GcMaintenanceComponentData.xml',
				REMOVE				= 'Section'
			}
		}
	}
}}}}
