--------------------------------------------------------------
local desc = [[
  Increase light intensity to various building parts
  Freighter hangar & landing pad lights changed to near-white
]]------------------------------------------------------------

local function InsertNewLight(nlight)
	local light = {
		name = 'new_light_09',
		tx = 0,		ty = 10,	tz = 0,
		rx = -22,	ry = 0,		rz = 0,
		sx = 1,		sy = 1,		sz = 1,
		r = 0.95,	g = 0.95,	b = 0.9,
		fov = 100,
		i = 30000,
		f = 'q',
		fr = 2,
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

local build_part = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL base lights tweaks.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	---	|freighter landing pad lights|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/LANDINGPAD_HANGAR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE		= 'All',
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'OrangeLights'},
				ADD_OPTION			= 'AddAfterSection',
				ADD 				=
					InsertNewLight({name='left', tx=16, ry=90, f='l', fr=1.2})
					..
					InsertNewLight({name='right', tx=-16, ry=-90, f='l', fr=1.2})
					..
					InsertNewLight({name='ne', i=44000, fov=120, tx=4.8, ty=0.25, tz=4.8, rx=30, ry=45})
					..
					InsertNewLight({name='nw', i=44000, fov=120, tx=-4.8, ty=0.25, tz=4.8, rx=30, ry=-45})
					..
					InsertNewLight({name='se', i=44000, fov=120, tx=4.8, ty=0.25, tz=-4.8, rx=30, ry=135})
					..
					InsertNewLight({name='sw', i=44000, fov=120, tx=-4.8, ty=0.25, tz=-4.8, rx=30, ry=-135})
			}
		}
	},
	{
	---	|freighter hangar lights|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE		= 'All',
				SPECIAL_KEY_WORDS	= {'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		36000}
				}
			},
			{
				REPLACE_TYPE		= 'All',
				SPECIAL_KEY_WORDS	= {'Name', 'COL_R'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		0.4}
				}
			},
			{
				REPLACE_TYPE		= 'All',
				SPECIAL_KEY_WORDS	= {'Name', 'COL_G'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		0.7}
				}
			},
			{
				REPLACE_TYPE		= 'All',
				SPECIAL_KEY_WORDS	= {'Name', 'COL_B'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		0.75}
				}
			}
		}
	},
	{
	---	|hanging lamp0| decoraction
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/HANGLAMP0.SCENE.MBIN',
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
						InsertNewLight({name='lamp000', i=24000, fov=360, ty=12, r=0.98, g=0.9, b=0.75})..					
					[[</Property>]]
			},
		}
	},
	{
	---	|hanging lamp123| decoraction
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/HANGLAMP1.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/HANGLAMP2.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/HANGLAMP3.SCENE.MBIN',
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
			build_part..'DECORATION/STANDINGLIGHT1.SCENE.MBIN',
			build_part..'DECORATION/STANDINGLIGHT2.SCENE.MBIN',
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
		MBIN_FILE_SOURCE	= build_part..'DECORATION/STANDINGLIGHT3.SCENE.MBIN',
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
		MBIN_FILE_SOURCE	= build_part..'DECORATION/CEILINGLIGHT.SCENE.MBIN',
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
			build_part..'DECORATION/WALLLIGHT_BLUE.SCENE.MBIN',
			build_part..'DECORATION/WALLLIGHT_GREEN.SCENE.MBIN',
			build_part..'DECORATION/WALLLIGHT_PINK.SCENE.MBIN',
			build_part..'DECORATION/WALLLIGHT_RED.SCENE.MBIN',
			build_part..'DECORATION/WALLLIGHT_WHITE.SCENE.MBIN',
			build_part..'DECORATION/WALLLIGHT_YELLOW.SCENE.MBIN'
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
			build_part..'DECORATION/TABLE2/LIGHTS1_MAT.MATERIAL.MBIN',
			build_part..'FOLIAGE/BEAMSTONE/LIGHTBEAM_MAT3.MATERIAL.MBIN',
			build_part..'FOLIAGE/STARJOINT/MSTRUCTURE_MAT.MATERIAL.MBIN',
			build_part..'FOLIAGE/WEIRDCUBE/CELLSCOLOURISABLE1.MATERIAL.MBIN',
			build_part..'FOLIAGE/WEIRDCUBE/CELLSCOLOURISABLE2.MATERIAL.MBIN',
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
