--[[┎────────────────────────────────────────────────────
	┃ Increase light intesity to various building parts
────┸────────────────────────────────────────────────--]]
File_Path = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/'
Wall_Light_Mult		= 2
Stand_Light_Mult	= 6

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL_H parts light intensity.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_MODELS_H ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			File_Path..'STANDINGLIGHT1.SCENE.MBIN',
			File_Path..'STANDINGLIGHT2.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT'},
				VALUE_CHANGE_TABLE 	= {
					{'RotX',		-20}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT', 'Name', 'FOV'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		130}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT', 'Name', 'FALLOFF'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'linear'}
				}
			},
			{
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT', 'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		Stand_Light_Mult}
				}
			},
		}
	},
	{
		MBIN_FILE_SOURCE	= File_Path..'STANDINGLIGHT3.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT', 'Name', 'FALLOFF'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'linear'}
				}
			},
			{
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT', 'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		Stand_Light_Mult}
				}
			},
		}
	},
	{
		MBIN_FILE_SOURCE	= File_Path..'CEILINGLIGHT.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT', 'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		Stand_Light_Mult}
				}
			},
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			File_Path..'WALLLIGHT_BLUE.SCENE.MBIN',
			File_Path..'WALLLIGHT_GREEN.SCENE.MBIN',
			File_Path..'WALLLIGHT_PINK.SCENE.MBIN',
			File_Path..'WALLLIGHT_RED.SCENE.MBIN',
			File_Path..'WALLLIGHT_WHITE.SCENE.MBIN',
			File_Path..'WALLLIGHT_YELLOW.SCENE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		0},
					{'TransY',		0},
					{'TransZ',		0},
					{'RotX',		90}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT', 'Name', 'FOV'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		190}
				}
			},
			{
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT', 'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		Wall_Light_Mult}
				}
			}
		}
	}
}}}}
