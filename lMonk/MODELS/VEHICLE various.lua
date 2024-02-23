---------------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/scene_tools.lua')
---------------------------------------------------------------------------
local mod_desc = [[
  - Mech: Faster step anime (adjusted for faster speed in vehicle globals)
   Hardframe blue front 3part light
  - Bike: reduce turret scale for the Nomad exocraft
   Rescale engine nozzle, re-position the engine bloom glow
   Remove light shafts
  - Add spotlight to exocraft turret
  - remove glow from bike & buggy parts
  - (deprecated) Remove installed tech check for vehicle turret
]]-------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__MODEL vehicles various.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.52',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{--	Add |turret spotlight| to vehicle
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/VEHICLES/SHARED/MININGLASER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'GunLight'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		0.516},	-- 0.530418
					{'TransY',		-2.024},-- -2.16751
					{'TransZ',		1.244},	-- 1.25
					{'ScaleX',		0.94},	-- 1
					{'ScaleY',		0.94},	-- 1
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'MiningLaser'},
				ADD_OPTION			= 'AddAfterSection',
				ADD 				= AddNewLight({
										name='turret_light',
										tx=	0.25,	ty=	0.45,	tz=	0.4,
										rx=	10.6,	ry=	180,
										fov	= 62,	i = 104000,	c=  'FFF0F5FF',
										f	= 'l',	fr= 1.0
									})
			}
		}
	},
	{--	|no vehicle muzzle flare|
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/MUZZLE/VEHICLELASERMUZZLE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Flare'},
				REMOVE				= 'Section'
			}
		}
	},
	{--	|bike tweaks|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/VEHICLES/BIKE/BIKEPRES.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'EngineCenterRotate'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',		1.52},
					{'ScaleY',		1.52},
					{'ScaleZ',		1.52}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'EngineCircles'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		0.585},
					{'TransZ',		-1.192},
					{'ScaleX',		0.44},
					{'ScaleY',		0.44},
					{'ScaleZ',		0.44}
				}
			},
			{
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
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'spotLight4'},
					{'Name', 'spotLight5'}
				},
				REMOVE				= 'Section'
			}
		}
	},
	{--	|bike blue lights|
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/VEHICLES/WHEELEDBIKE/WHEELEDBIKEPRES/LIGHTFADE_MAT.MATERIAL.MBIN',	-- green
			'MODELS/COMMON/VEHICLES/WHEELEDBIKE/WHEELEDBIKEPRES/LIGHTS_MAT.MATERIAL.MBIN',		-- green
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gMaterialColourVec4'},
				VALUE_CHANGE_TABLE 	= {
					{'x',			0.56},
					{'y',			0.52},
					{'z',			0.86}
				}
			}
		}
	},
	{--	|hardframe blue neon|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/VEHICLES/MECH_SUIT/MECH_SUIT/REDGLOW_MAT5.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gMaterialColourVec4'},
				VALUE_CHANGE_TABLE 	= {
					{'x',			0.1},
					{'y',			0.1},
					{'z',			0.45}
				}
			}
		}
	},
	{--	|mech faster step| animation speed
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/VEHICLES/MECH_SUIT/MECH_SUIT/ENTITIES/MECH.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'GcCreatureFullBodyIKComponentData.xml',
				VALUE_CHANGE_TABLE 	= {
					{'MaxHeadYaw',		120},	-- 125
					{'MaxFootAngle',	65},	-- 45
					{'MovementDamp',	0.45},	-- 0.2
				}
			},
			{
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Filename','MODELS/COMMON/VEHICLES/MECH_SUIT/ANIMS/MECH_WALK.ANIM.MBIN'},
				VALUE_CHANGE_TABLE 	= {
					{'Speed',		1.12}	-- 1
				}
			},
			{
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Filename','MODELS/COMMON/VEHICLES/MECH_SUIT/ANIMS/MECH_FASTWALK.ANIM.MBIN'},
				VALUE_CHANGE_TABLE 	= {
					{'Speed',		1.24}	-- 0.8
				}
			}
		}
	},
	{--	remove |bike glow|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/VEHICLES/BIKE/BIKEPRES/LIGHTS_ENGINEGLOW_MAT.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gCustomParams01Vec4'},
				VALUE_CHANGE_TABLE	= {
					{'y',			1},	-- 15
				}
			}
		}
	},
	{--	remove |vehicle glow|
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/VEHICLES/BUGGY/BUGGYPRES/ENGINEGLOW_MAT.MATERIAL.MBIN',
			'MODELS/COMMON/VEHICLES/ROVER/ROVERPRES/ENGINEGLOW_MAT1.MATERIAL.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'MaterialFlag', '_F34_GLOW'},
				REMOVE				= 'Section'
			},
		}
	},
	-- {--	|remove wheeled bike fake light|
		-- MBIN_FILE_SOURCE	= 'MODELS/COMMON/VEHICLES/WHEELEDBIKE/WHEELEDBIKEPRES/HQLIGHT_MAT1.MATERIAL.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- PRECEDING_KEY_WORDS	= 'Samplers',
				-- REMOVE				= 'Section'
			-- }
		-- }
	-- },
	-- {--	|No vehicle gun tech inventory check| bugged since waypoint update
	-- --	fixed - no longer needed
		-- MBIN_FILE_SOURCE	= {
			-- 'MODELS/COMMON/VEHICLES/BUGGY/ENTITIES/GUN.ENTITY.MBIN',
			-- 'MODELS/COMMON/VEHICLES/SHARED/MININGLASER/ENTITIES/GUN.ENTITY.MBIN'
		-- },
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- PRECEDING_KEY_WORDS = 'GcTechnologyAttachmentComponentData.xml',
				-- REMOVE				= 'Section'
			-- }
		-- }
	-- },
}}}}
