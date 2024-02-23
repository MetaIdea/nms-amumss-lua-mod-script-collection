---------------------------------------------------------------------
local desc = [[
  - Add and increase light intensity to various building parts
]]-------------------------------------------------------------------

local build_parts = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/'

local function InsertNewLight(newlight)
	local function Hex2Pr(h)
	-- translates a 2^16 hex string to 0-100% percentage
		return tonumber(h, 16) * 0.00392
	end
	local function NodeAtt(name, val)
		return [[
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="]]..name..[["/>
				<Property name="Value" value="]]..val..[["/>
			</Property>]]
	end
	local light = {
		name= 'n9',	fov= 360,
		i=	30000,	f=	'q',	fr=	2,
		r=	1,		g=	1,		b=	1,
		tx=	0,		ty=	0,		tz=	0,
		rx=	0,		ry=	0,		rz=	0,
		sx=	1,		sy=	1,		sz=	1
	}
	for k, v in pairs(newlight or {}) do light[k] = v end
	-- c = color as hex string. overwrites rgb if present.
	if light.c then
		light.r = Hex2Pr(light.c:sub(1, 2)) 
		light.g = Hex2Pr(light.c:sub(3, 4)) 
		light.b = Hex2Pr(light.c:sub(5, 6)) 
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
				NodeAtt('FALLOFF',	 	(light.f:sub(1,1) == 'q' and 'quadratic' or 'linear'))..
				NodeAtt('FALLOFF_RATE',	light.fr)..
				NodeAtt('INTENSITY',	light.i)..
				NodeAtt('COL_R',		light.r)..
				NodeAtt('COL_G',		light.g)..
				NodeAtt('COL_B',		light.b)..
				NodeAtt('VOLUMETRIC',	0)..
				NodeAtt('COOKIE_IDX',	-1)..
				NodeAtt('MATERIAL',		'MATERIALS/LIGHT.MATERIAL.MBIN')..
			[[</Property>
		</Property>
	]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL base lighting.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	---	|hanging lamp0| decoraction
		MBIN_FILE_SOURCE	= build_parts..'DECORATION/BAZAAR/HANGLAMP0.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'HangingLampLOD0'},
				PRECEDING_KEY_WORDS = 'Children',
				REMOVE				= 'Line'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'HangingLampLOD0'},
				ADD					= [[
					<Property name="Children">]]..
						InsertNewLight({name='lamp000', i=26000, ty=12, c='fae6bf'})..
					[[</Property>]]
			},
		}
	},
	{
	---	|hanging lamp123| decoraction
		MBIN_FILE_SOURCE	= {
			build_parts..'DECORATION/BAZAAR/HANGLAMP1.SCENE.MBIN',
			build_parts..'DECORATION/BAZAAR/HANGLAMP2.SCENE.MBIN',
			build_parts..'DECORATION/BAZAAR/HANGLAMP3.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		24000}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'COL_R'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		0.98}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'COL_G'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		0.9}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'COL_B'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		0.75}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			build_parts..'DECORATION/STANDINGLIGHT1.SCENE.MBIN',
			build_parts..'DECORATION/STANDINGLIGHT2.SCENE.MBIN',
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
					{'Value',		6}
				}
			},
		}
	},
	{
		MBIN_FILE_SOURCE	= build_parts..'DECORATION/STANDINGLIGHT3.SCENE.MBIN',
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
					{'Value',		6}
				}
			},
		}
	},
	{
		MBIN_FILE_SOURCE	= build_parts..'DECORATION/CEILINGLIGHT.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT', 'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		6}
				}
			},
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			build_parts..'DECORATION/WALLLIGHT_BLUE.SCENE.MBIN',
			build_parts..'DECORATION/WALLLIGHT_GREEN.SCENE.MBIN',
			build_parts..'DECORATION/WALLLIGHT_PINK.SCENE.MBIN',
			build_parts..'DECORATION/WALLLIGHT_RED.SCENE.MBIN',
			build_parts..'DECORATION/WALLLIGHT_WHITE.SCENE.MBIN',
			build_parts..'DECORATION/WALLLIGHT_YELLOW.SCENE.MBIN'
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
					{'Value',		2}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			build_parts..'DECORATION/TABLE2/LIGHTS1_MAT.MATERIAL.MBIN',
			build_parts..'FOLIAGE/BEAMSTONE/LIGHTBEAM_MAT3.MATERIAL.MBIN',
			build_parts..'FOLIAGE/STARJOINT/MSTRUCTURE_MAT.MATERIAL.MBIN',
			build_parts..'FOLIAGE/WEIRDCUBE/CELLSCOLOURISABLE1.MATERIAL.MBIN',
			build_parts..'FOLIAGE/WEIRDCUBE/CELLSCOLOURISABLE2.MATERIAL.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMLUSH/STARBULB_MAT.MATERIAL.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMRADIOACTIVE/FRUITGLOW_MAT.MATERIAL.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMSCORCHED/FRUITYELLOW_MAT.MATERIAL.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'MaterialFlag', '_F34_GLOW'},
				REMOVE				= 'Section'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMRADIOACTIVE/FRUITGLOW_MAT.MATERIAL.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'MaterialFlag', '_F07_UNLIT'},
				REMOVE				= 'Section'
			}
		}
	}
}}}}
