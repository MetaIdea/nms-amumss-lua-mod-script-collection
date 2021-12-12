--------------------------------------------------------------
local desc = [[
  General changes to building parts
  Set beacon and summon garage as the default of their group
  Increase power generation and storage
  Build menu tweaks - change defaults & remove unneeded
]]------------------------------------------------------------

local Build_On_Freighter = {
	'NPCVEHICLETERM',
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
function Build_On_Freighter:Get(x)
	return {
		SPECIAL_KEY_WORDS	= {'ID', x},
		VALUE_CHANGE_TABLE 	= { {'BuildableOnFreighter', true} }
	}
end

local Build_Above_Water = {
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
function Build_Above_Water:Get(x)
	return {
		SPECIAL_KEY_WORDS	= {'ID', x},
		VALUE_CHANGE_TABLE 	= { {'BuildableAboveWater', true} }
	}
end

local Decoration_Type = {
	{'BUILDLIGHT'},
	{'BUILDLIGHT2'},
	{'BUILDLIGHT3'},
	{'SUMMON_GARAGE'},
	{'HEATER'},
	{'BASE_TOYCUBE'},
	{'BASE_TOYSPHERE'},
	{'BASE_TOYJELLY'},
	{'BASE_TOYCORE'},
	{'PLANETPORTABLE',	'SubGroupName', 2},
	{'DECOFOLIAGE',		'SubGroupName', 2},
	{'DECOGLITCHES',	'SubGroupName', 2},
}
function Decoration_Type:Get(x)
	local tp = nil
	if #x > 1 then tp = 'ALL' end
	return {
		REPLACE_TYPE 		= tp,
		SPECIAL_KEY_WORDS	= {(x[2] or 'ID'), x[1]},
		SECTION_UP			= (x[3] or 0),
		VALUE_CHANGE_TABLE 	= { {'BaseBuildingDecorationType', 'SurfaceNormal'} }
	}
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	for _,v in ipairs(tbl) do table.insert(T, tbl:Get(v)) end
	return T
end

local Source_Table_BaseObj = 'METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= '__TABLE BASEBUILDING.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_TABLES ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= Source_Table_BaseObj,
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'ALL',
				VALUE_CHANGE_TABLE 	= {
					{'CanChangeColour',				true},
					{'CanChangeMaterial',			true},
					{'CanRotate3D',					true},
					{'CanScale',					true},
					{'CanPlaceOnItself',			true},
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
				SPECIAL_KEY_WORDS	= {'ID', 'U_SOLAR_S'},
				VALUE_CHANGE_TABLE 	= {
					{'Rate',				80},	-- 50
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'U_BIOGENERATOR'},
				VALUE_CHANGE_TABLE 	= {
					{'Storage',				6000},	-- 3600
					{'DependentRateRate',	80},	-- 50
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'U_BATTERY_S'},
				VALUE_CHANGE_TABLE 	= {
					{'Storage',				80000},	-- 45000
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_BaseObj,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Build_On_Freighter)
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_BaseObj,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Build_Above_Water)
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_BaseObj,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Decoration_Type)
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
