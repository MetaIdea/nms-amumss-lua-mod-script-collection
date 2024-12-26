-------------------------------------------------------------------
local mod_desc = [[
  Disable restrictions on collision, scaling, rotating & freighter
  Add galaxy toy to portable tech
  Increase power generation and storage
  Portable exocraft summon garage
]]-----------------------------------------------------------------

local function AddPrx(prx, T)
	for i=1, #T do T[i] = {prx, T[i]} end
	return T
end

local function AddBuildGroup(group, subgroup)
	return string.format([[
	<Property value="GcBaseBuildingEntryGroup.xml">
		<Property name="Group" value="%s"/>
		<Property name="SubGroupName" value="%s"/>
	</Property>]], group, subgroup)
end

NMS_MOD_DEFINITION_CONTAINER = { 
	MOD_FILENAME		= '__REALITY BASEBUILDING.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				VALUE_CHANGE_TABLE 	= {
					{'CanChangeColour',				true},
					{'CanChangeMaterial',			true},
					{'CanRotate3D',					true},
					{'CanScale',					true},
					{'CheckPlaceholderCollision',	false},
					{'FreighterBaseLimit',			0},
					{'PlanetBaseLimit',				0},
					{'RegionLimit',					0},
					{'PlanetLimit',					0}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'HOLO_DISCO_0', 'Group', 'FURNITURE'},
				VALUE_CHANGE_TABLE 	= {
					{'Group',		'BASE_TECH'},
					{'SubGroupName','TECHTECH'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'BASE_TOYCORE'},
				VALUE_CHANGE_TABLE 	= {
					{'BuildableOnPlanet',	true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'BASE_TOYCORE'},
				PRECEDING_KEY_WORDS = 'Groups',
				ADD					= AddBuildGroup('PLANET_TECH', 'PLANETPORTABLE')
			},
			{
				SPECIAL_KEY_WORDS	= AddPrx('ID', {
					'S9_WEAPONTREE',
					'S9_SHIPTREE'
				}),
				VALUE_CHANGE_TABLE 	= {
					{'CloseMenuAfterBuild',		true},
					{'BuildableOnFreighter',	true},
					{'BuildableOnPlanet',		true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= AddPrx('ID', {
					'GARAGE_B',
					'GARAGE_S',
					'GARAGE_M',
					'GARAGE_L',
					'GARAGE_MECH',
					'GARAGE_SUB',
					'S9_WEAPONTREE',
					'S9_SHIPTREE',
					'NPCBUILDERTERM',
					'NPCFARMTERM',
					'NPCSCIENCETERM',
					'NPCVEHICLETERM',
					'NPCWEAPONTERM',
					'HOLO_DISCO_0',
					'S16_HEATER'
				}),
				PRECEDING_KEY_WORDS = 'Groups',
				ADD					= AddBuildGroup('FREIGHTER_TECH', 'FRE_TECH_OTHER')
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'COOKER'},
				VALUE_CHANGE_TABLE 	= {
					{'CloseMenuAfterBuild',	true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SUMMON_GARAGE'}, -- ANTENNA0
				VALUE_CHANGE_TABLE 	= {
					{'EditsTerrain',		false},
					{'CloseMenuAfterBuild',	true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SUMMON_GARAGE'},
				PRECEDING_KEY_WORDS = 'PlacementScene',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/ANTENNA0_PLACEMENT.SCENE.MBIN'}
				}
			},
			{
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS 	= AddPrx('ID', {
					'U_EXTRACTOR_S',
					'U_GASEXTRACTOR',
					'U_SOLAR_S',
					'U_SILO_S',
				}),
				VALUE_CHANGE_TABLE 	= {
					{'Rate',		1.2},
					{'Storage',		2}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'U_BIOGENERATOR'},
				VALUE_CHANGE_TABLE 	= {
					{'DependentRate', 80}	-- 50
				}
			},
			{
				SPECIAL_KEY_WORDS 	= AddPrx('ID', {
					'BUILDLIGHT',
					'BUILDLIGHT2',
					'BUILDLIGHT3',
					'SUMMON_GARAGE',
					'HEATER',
					'BASE_TOYCUBE',
					'BASE_TOYSPHERE',
					'BASE_TOYJELLY',
					'BASE_TOYCORE',
					'S_WATERVALVE0',
					'S_SIGN_BAR0',
				}),
				VALUE_CHANGE_TABLE 	= {
					{'BaseBuildingDecorationType', 'BuildingSurfaceNormal'}
				}
			},
			{
				SPECIAL_KEY_WORDS 	= {
					{'SubGroupName', 'PLANETPORTABLE'},
					{'SubGroupName', 'DECOFOLIAGE'},
					{'SubGroupName', 'DECOGLITCHES'}
				},
				REPLACE_TYPE 		= 'All',
				SECTION_UP			= 2,
				VALUE_CHANGE_TABLE 	= {
					{'BaseBuildingDecorationType', 'BuildingSurfaceNormal'}
				}
			},
			{
				SPECIAL_KEY_WORDS 	= AddPrx('ID', {
					'GARAGE_B',
					'GARAGE_S',
					'GARAGE_M',
					'GARAGE_L',
					'GARAGE_MECH',
					'GARAGE_SUB',
					'BUILDSAVE',
					'COOKER',
					'PLANTERMEGA',
					'PLANTER',
					'NPCBUILDERTERM',
					'NPCVEHICLETERM',
					'NPCWEAPONTERM',
					'NPCFARMTERM',
					'NPCSCIENCETERM',
					'BUILDTERMINAL',
					'TELEPORTER',
					'DRESSING_TABLE',
					'BUILD_REFINER3',
					'BUILD_REFINER2',
					'BUILDANTIMATTER',
					'CYLINDERSHAPE',
					'CUBESHAPE',
					'CURVEPIPESHAPE',
					'PIPESHAPE',
					'PYRAMIDSHAPE',
					'SPHERESHAPE',
					'WEDGESHAPE',
					'WEDGESMALLSHAPE',
					'BASE_NEXUS1',
					'BASE_NEXUS2',
					'BASE_NEXUS3',
					'BLD_BUI_HAND',
					'BLD_BUI_HEAD',
					'S16_HEATER'
				}),
				VALUE_CHANGE_TABLE 	= {
					{'BuildableOnFreighter', true}
				}
			},
			{
				SPECIAL_KEY_WORDS 	= AddPrx('ID', {
					'MAINROOM_WATER',
					'MAINROOMCUBE_W',
					'MOONPOOL',
					'BUILDDOOR_WATER',
					'CORRIDOR_WATER',
					'CORRIDORL_WATER',
					'CORRIDORT_WATER',
					'CORRIDORX_WATER',
					'CORRIDORV_WATER',
					'BASE_BARNACLE',
					'GARAGE_SUB'
				}),
				VALUE_CHANGE_TABLE 	= {
					{'BuildableAboveWater', true}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/BASEBUILDINGPARTSTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			-- {
			-- --	testing my mini portal!!
				-- SPECIAL_KEY_WORDS	= {'ID', '_BASE_TOYCORE'},
				-- PRECEDING_KEY_WORDS = 'Model',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Filename', 'MODELS/CUSTOM/PORTAL.SCENE.MBIN'}
				-- }
			-- },
			{
				SPECIAL_KEY_WORDS	= {'ID', '_SUMMON_GARAGE'},
				PRECEDING_KEY_WORDS = 'Model',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/ANTENNA0.SCENE.MBIN'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', '_SUMMON_GARAGE'},
				PRECEDING_KEY_WORDS = 'Inactive',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/ANTENNA0_LOD.SCENE.MBIN'}
				}
			}
		}
	}
}}}}
