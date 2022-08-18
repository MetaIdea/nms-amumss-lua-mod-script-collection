-------------------------------------------------------------------
local desc = [[
  Disble restrictions on collisiton, scaling, rotating & freighter
  Increase power generation and storage
  Portable exocraft summon garage
]]-----------------------------------------------------------------

local build_on_freighter = {
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
}
function build_on_freighter:Get(x)
	return {
		SPECIAL_KEY_WORDS	= {'ID', x},
		VALUE_CHANGE_TABLE 	= { {'BuildableOnFreighter', true} }
	}
end

local build_above_water = {
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
}
function build_above_water:Get(x)
	return {
		SPECIAL_KEY_WORDS	= {'ID', x},
		VALUE_CHANGE_TABLE 	= { {'BuildableAboveWater', true} }
	}
end

local decoration_type = {
	{'BUILDLIGHT'},
	{'BUILDLIGHT2'},
	{'BUILDLIGHT3'},
	{'SUMMON_GARAGE'},
	{'HEATER'},
	{'BASE_TOYCUBE'},
	{'BASE_TOYSPHERE'},
	{'BASE_TOYJELLY'},
	{'BASE_TOYCORE'},
	{'S_WATERVALVE0'},
	{'PLANETPORTABLE',	true},
	{'DECOFOLIAGE',		true},
	{'DECOGLITCHES',	true},
}
function decoration_type:Get(x)
	return {
		REPLACE_TYPE 		= x[2] and 'All' or nil,
		SPECIAL_KEY_WORDS	= {(x[2] and 'SubGroupName' or 'ID'), x[1]},
		SECTION_UP			= x[2] and 2 or 0,
		VALUE_CHANGE_TABLE 	= { {'BaseBuildingDecorationType', 'BuildingSurfaceNormal'} } -- SurfaceNormal
	}
end

local function AddToGroup(group, subgroup)
	return [[
	<Property value="GcBaseBuildingEntryGroup.xml">
		<Property name="Group" value="]]..group..[["/>
		<Property name="SubGroupName" value="]]..subgroup..[["/>
		<Property name="SubGroup" value="0"/>
	</Property>]]
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	for _,v in ipairs(tbl) do table.insert(T, tbl:Get(v)) end
	return T
end

local source_table_base_obj = 'METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= '__TABLE BASEBUILDING.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= source_table_base_obj,
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				VALUE_CHANGE_TABLE 	= {
					{'CanChangeColour',				true},
					{'CanChangeMaterial',			true},
					{'CanRotate3D',					true},
					{'CanScale',					true},
					{'CheckPlaceholderCollision',	false},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'BUILD_REFINER3'},
				VALUE_CHANGE_TABLE 	= {
					{'RegionLimit',			0}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'PLANTER'},
				VALUE_CHANGE_TABLE 	= {
					{'IsPlaceable',			true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'PLANTERMEGA'},
				VALUE_CHANGE_TABLE 	= {
					{'IsPlaceable',			true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'COOKER'},
				VALUE_CHANGE_TABLE 	= {
					{'CloseMenuAfterBuild',	true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SUMMON_GARAGE'},
				VALUE_CHANGE_TABLE 	= {
					{'CanPickUp',			true},
					{'EditsTerrain',		false},
					{'CloseMenuAfterBuild',	true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SUMMON_GARAGE'},
				PRECEDING_KEY_WORDS = 'PlacementScene',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SIGNALSCANNER_PLACEMENT.SCENE.MBIN'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'TELEPORTER'},
				PRECEDING_KEY_WORDS = 'Groups',
				ADD 				= AddToGroup('FREIGHTER_TECH', 'FRE_TECH_OTHER')
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'U_SOLAR_S'},
				VALUE_CHANGE_TABLE 	= {
					{'Rate',				80},	-- 50
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'U_BIOGENERATOR'},
				VALUE_CHANGE_TABLE 	= {
					-- {'Storage',				6000},	-- 3600
					{'DependentRate',		80},	-- 50
				}
			},
			-- {
				-- SPECIAL_KEY_WORDS	= {'ID', 'U_BATTERY_S'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Storage',				80000},	-- 45000
				-- }
			-- }
		}
	},
	{
		MBIN_FILE_SOURCE	= source_table_base_obj,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(build_on_freighter)
	},
	{
		MBIN_FILE_SOURCE	= source_table_base_obj,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(build_above_water)
	},
	{
		MBIN_FILE_SOURCE	= source_table_base_obj,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(decoration_type)
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/BASEBUILDINGPARTSTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', '_SUMMON_GARAGE'},
				PRECEDING_KEY_WORDS = 'Model',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SIGNALSCANNER.SCENE.MBIN'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', '_SUMMON_GARAGE'},
				PRECEDING_KEY_WORDS = 'Inactive',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/SIGNALSCANNER/SIGNALSCANNER_LOD.SCENE.MBIN'}
				}
			}
		}
	}
}}}}
