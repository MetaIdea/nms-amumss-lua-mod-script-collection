---------------------------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
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
	NMS_VERSION				= '5.29',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{--	|nomad tweaks|
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
	{--	|buggy no fog cone|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/VEHICLES/BUGGY/BUGGYPRES.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'spotLight3'},
					{'Name', 'spotLight4'}
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
				SPECIAL_KEY_WORDS	= {'Template', 'TkPhysicsComponentData.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'Mass',		40},	-- 10
					-- {'Gravity',		20},	-- 20
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Template', 'GcCreatureFullBodyIKComponentData.xml'},
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
				ADD 				= AddLightNodes({
					name='turret_light',
					tx=	0.25,	ty=	0.45,	tz=	0.4,
					rx= 10.6,	ry=	180,
					fov=62,		i = 100000,	c=	'FFF0F5FF',
					f=	'l',	fr= 1.0
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
	-- {--	copy buoyancy component
		-- MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/FISHINGPLATFORM/ENTITIES/FISHINGPLATFORM.ENTITY.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	= {'Template', 'GcBuoyancyComponentData.xml'},
				-- SECTION_UP			= 1,
				-- SEC_SAVE_TO			= 'gc_buoyancy_component'
			-- }
		-- }
	-- },
	-- {--	nomad float
		-- MBIN_FILE_SOURCE	= 'MODELS/COMMON/VEHICLES/BIKE/BIKE/ENTITIES/BIKE.ENTITY.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	= {'Template', 'TkPhysicsComponentData.xml'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Mass',		30},	-- 10 500
					-- {'Gravity',		5},		-- 20 0
				-- }
			-- },
			-- {
				-- SEC_EDIT 			= 'gc_buoyancy_component',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'SetAnchorOnPrepare',			false},	-- True
					-- {'TargetSurfaceHeightRough',	7.0},	-- 3.5
					-- {'TargetSurfaceHeightCalm',		1.5},	-- 0.75
					-- {'TargetHeightBufferFactor',	0.2},	-- 0.7
					-- {'AirborneSpringTime',			0.75},	-- 0.75
					-- {'UnderwaterSpringTime',		0.1},	-- 0.1
					-- {'SelfRightingStrength',		0},		-- 200
					-- {'MinimumForce',				800},	-- 400
					-- {'MaximumForce',				3200},	-- 1500
					-- {'UpwardRotationFactor',		0.5},	-- 0.1
					-- {'WaveRotationFactor',			5},		-- 0
					-- {'AnchorArrivalTime',			-1},	-- 5
					-- {'MaximumAnchorForce',			-1},	-- 100
				-- }
			-- },
			-- {
				-- PRECEDING_KEY_WORDS	= 'Components',
				-- SEC_ADD_NAMED		= 'gc_buoyancy_component'
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
