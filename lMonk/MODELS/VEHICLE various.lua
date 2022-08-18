---------------------------------------------------------------------------
local desc = [[
  - Mech: Faster step anime (adjusted for faster speed in vehicle globals)
   Hardframe blue front 3part light
  - Bike: reduce turret scale for the Nomad exocraft
   Rescale engine nozzle, re-position the engine bloom glow
   Remove light shafts
  - Add spotlight to exocraft turret
  - remove glow from bike & buggy parts
]]-------------------------------------------------------------------------

local function InsertNewLight(nlight)
	local light = {
		name = 'new_light_09',
		tx = 0,		ty = 0,		tz = 0,
		rx = 0,		ry = 0,		rz = 0,
		sx = 1,		sy = 1,		sz = 1,
		r = 1,		g = 1,		b = 1,
		fov = 360,
		i = 30000,
		f = 'l',
		fr = 1,
	}
	for k, v in pairs(nlight) do light[k] = v end

	local function NodeAtt(name, val)
		return [[
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="]]..name..[["/>
				<Property name="Value" value="]]..val..[["/>
			</Property>]]
	end
	return [[
		<Property value="TkSceneNodeData.xml">
			<Property name="Name" value="]]..light.name..[["/>
			<Property name="Type" value="LIGHT"/>
			<Property name="Transform" value="TkTransformData.xml">
				<Property name="TransX" value="]]..light.tx..[["/>
				<Property name="TransY" value="]]..light.ty..[["/>
				<Property name="TransZ" value="]]..light.tz..[["/>
				<Property name="RotX" value="]]..light.rx..[["/>
				<Property name="RotY" value="]]..light.ry..[["/>
				<Property name="RotZ" value="]]..light.rz..[["/>
				<Property name="ScaleX" value="]]..light.sx..[["/>
				<Property name="ScaleY" value="]]..light.sy..[["/>
				<Property name="ScaleZ" value="]]..light.sz..[["/>
			</Property>
			<Property name="Attributes">]]..
				NodeAtt('FOV',		 	light.fov)..
				NodeAtt('FALLOFF',	 	(light.f == 'q' and 'quadratic' or 'linear'))..
				NodeAtt('FALLOFF_RATE',	light.fr)..
				NodeAtt('INTENSITY',	light.i)..
				NodeAtt('COL_R',		light.r)..
				NodeAtt('COL_G',		light.g)..
				NodeAtt('COL_B',		light.b)..
				NodeAtt('COOKIE_IDX',	-1)..
				NodeAtt('VOLUMETRIC',	0)..
				NodeAtt('MATERIAL',		'MATERIALS/LIGHT.MATERIAL.MBIN')..
			[[</Property>
		</Property>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__MODEL vehicles various.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= 3.99,
	MOD_DESCRIPTION			= desc,
	AMUMSS_SUPPRESS_MSG		= 'MULTIPLE_STATEMENTS',
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
	---	Add |turret spotlight| to vehicle
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/VEHICLES/SHARED/MININGLASER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'GunLight'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		0.52},	-- 0.530418
					{'TransY',		-2.063},-- -2.16751
					{'TransZ',		1.245},	-- 1.25					
					{'ScaleX',		0.96},	-- 1
					{'ScaleY',		0.96},	-- 1
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'MiningLaser'},
				ADD_OPTION			= 'AddAfterSection',
				ADD 				= InsertNewLight({
										name='turretlight',
										i=94000, fov=62,
										r=0.94,		g=0.96,		b=1,
										tx=0.25,	ty=0.45,	tz=0.4,
										rx=-10.6,	ry=180})
			}
		}
	},
	{
	---	|no vehicle muzzle flare|
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/MUZZLE/VEHICLELASERMUZZLE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Flare'},
				REMOVE				= 'Section'
			}
		}
	},
	{
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
				SPECIAL_KEY_WORDS	= {'Name', 'spotLight4'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'spotLight5'},
				REMOVE				= 'Section'
			}
		}
	},
	{
	---	|hardframe blue neon|
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
	{
	---	|mech faster step| animation speed
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/VEHICLES/MECH_SUIT/MECH_SUIT/ENTITIES/MECH.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
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
	{
	---	remove |vehicle glow|
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
	{
	---	remove |vehicle glow|
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
}}}}
