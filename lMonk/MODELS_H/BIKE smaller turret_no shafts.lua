--[[┎──────────────────────────────────────────────────────────────
	┃ Reduce turret scale for the Nomad exocraft
	┃ Remove light shafts
────┸──────────────────────────────────────────────────────────--]]
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL_H nomad turret no_shafts.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_MODELS_H ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/VEHICLES/BIKE/BIKEPRES.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'FORCE',
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
				SPECIAL_KEY_WORDS	= {'Name', 'spotLight4'},
				REMOVE				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'spotLight5'},
				REMOVE				= 'SECTION'
			}
		}
	}
}}}}

-- pointLight1			back (quadratic		10000	0.7		0.55	1.0)
-- pointLight2			back (quadratic		10000	0.7		0.55	1.0)

-- Lights_spotLight1	head (linear 		25000	1.0		1.0		1.0)
-- Lights_spotLight2	head (linear 		25000	1.0		1.0		1.0)

-- Lights_spotLight3	wheel (linear 		15000	0.5		0.52	0.86)
-- Lights_spotLight4	wheel (linear 		15000	0.5		0.52	0.86)
-- Lights_spotLight5	wheel (linear 		15000	0.5		0.52	0.86)
-- Lights_spotLight6	wheel (linear 		15000	0.5		0.52	0.86)

-- spotLight4			wheel (quadratic	25000	1.0		1.0		1.0)
-- spotLight5			wheel (quadratic	25000	1.0		1.0		1.0)
