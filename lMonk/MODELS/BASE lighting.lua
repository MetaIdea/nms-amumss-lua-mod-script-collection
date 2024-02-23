---------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/scene_tools.lua')
---------------------------------------------------------------------
local mod_desc = [[
  - Add and increase light intensity to various building parts
]]-------------------------------------------------------------------

local build_parts = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL base lighting.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|hanging lamp0| decoraction
		MBIN_FILE_SOURCE	= build_parts..'DECORATION/BAZAAR/HANGLAMP0.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'HangingLampLOD0'},
				PRECEDING_KEY_WORDS = 'Children',
				CREATE_HOS			= true,
				ADD					= ToExml({ ScLight({name='lamp000', i=26000, ty=12, c='FFFAE6BF'}) })
			}
		}
	},
	{--	|hanging lamp123| decoraction
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
