--------------------------------------------------------------
local mod_desc = [[
  Reduce turret scale for the Nomad exocraft (BIKE)
  Rescale engine nozzle, re-position the engine bloom glow
]]------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.nomad turret and engine scaled.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/VEHICLES/BIKE/BIKEPRES.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'Gun'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		0.78},
					{'TransZ',		-0.44},
					{'ScaleX',		0.56},
					{'ScaleY',		0.56},
					{'ScaleZ',		0.56}
				}
			},
			{
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'EngineCenterRotate'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',		1.52},
					{'ScaleY',		1.52},
					{'ScaleZ',		1.52}
				}
			},
			{
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'EngineCircles'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		0.585},
					{'TransZ',		-1.192},
					{'ScaleX',		0.44},
					{'ScaleY',		0.44},
					{'ScaleZ',		0.44}
				}
			}
		}
	}
}}}}
