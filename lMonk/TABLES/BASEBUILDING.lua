--[[┎────────────────────────────────────────────────────────────
	┃ General changes to building parts
	┃ Set beacon and summon garage as the default of their group
	┃ Increase power generation and storage
	┃ Build menu tweaks - change defaults & remove unneeded
────┸──────────────────────────────────────────────────────────]]
Build_On_Freighter = {
	dat = {
		'NPCVEHICLETERM',
		'PYRAMIDSHAPE',
		'WEDGESHAPE',
		'WEDGESMALLSHAPE',
		'CURVEPIPESHAPE',
		'SPHERESHAPE',
		'CUBESHAPE',
		'CYLINDERSHAPE'
	},
	Get = function(x)
		return {
			SPECIAL_KEY_WORDS	= {'ID', x},
			VALUE_CHANGE_TABLE 	= { {'BuildableOnFreighter', true} }
		}
	end
}

Build_Above_Water = {
	dat = {
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
	},
	Get = function(x)
		return {
			SPECIAL_KEY_WORDS	= {'ID', x},
			VALUE_CHANGE_TABLE 	= { {'BuildableAboveWater', true} }
		}
	end
}

Decoration_Type = {
	dat = {
		'BUILDBEACON',
		'BUILDLIGHT',
		'BUILDLIGHT2',
		'BUILDLIGHT3',
		'SUMMON_GARAGE',
		'BASE_WPLANT1',
		'BASE_WPLANT2',
		'BASE_WPLANT3',
		'BASE_TOYCUBE',
		'BASE_TOYSPHERE',
		'BASE_TOYJELLY',
		'BASE_TOYCORE',
		'HEATER',
	},
	Get = function(x)
		return {
			SPECIAL_KEY_WORDS	= {'ID', x},
			VALUE_CHANGE_TABLE 	= { {'BaseBuildingDecorationType', 'SurfaceNormal'} }
		}
	end
}

local function BuildExmlChangeTable(tbl)
	local T = {}
	for i = 1, #tbl.dat do table.insert(T, tbl.Get(tbl.dat[i])) end
	return T
end

Source_Table_Basebuild = 'METADATA/REALITY/TABLES/BASEBUILDINGTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= '__TABLE BASEBUILDING.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_TABLES ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= Source_Table_Basebuild,
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
				SPECIAL_KEY_WORDS	= {'ID', 'WATERBUBBLE'},
				VALUE_CHANGE_TABLE 	= {
					{'BuildableAboveWater',	true},
					{'EditsTerrain',		false},
					{'CloseMenuAfterBuild',	true},
					{'Value',				'PLANET_TECH'}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				SPECIAL_KEY_WORDS	= {'Value', 'GLITCH'},
				SECTION_UP			= 2,
				VALUE_CHANGE_TABLE 	= {
					{'BaseBuildingDecorationType', 'SurfaceNormal'},
					{'BuildableOnPlanet',	false}
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
				PRECEDING_KEY_WORDS = 'Model',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SIGNALSCANNER.SCENE.MBIN'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SUMMON_GARAGE'},
				PRECEDING_KEY_WORDS = 'InactiveModel',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/SIGNALSCANNER/SIGNALSCANNER_LOD.SCENE.MBIN'}
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
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'U_PORTALLINE', 'Value', 'UTILITY_TECH'},
				VALUE_CHANGE_TABLE 	= {
					{'Value', 'UTILITY_POWER'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'BUILDHARVESTER', 'Value', 'BASE_TECH'},
				REMOVE				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'BUILDGASHARVEST', 'Value', 'BASE_TECH'},
				REMOVE				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS = {'Name', 'UI_BUILD_PATH_PLANET_TECH'},
				VALUE_CHANGE_TABLE 	= {
					{'DefaultItem', 'BUILDBEACON'}
				}
			},
			{
				SPECIAL_KEY_WORDS = {'Name', 'UI_BUILD_PATH_VEHICLES'},
				VALUE_CHANGE_TABLE 	= {
					{'DefaultItem', 'SUMMON_GARAGE'}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_Basebuild,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Build_On_Freighter)
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_Basebuild,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Build_Above_Water)
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_Basebuild,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Decoration_Type)
	}
}}}}
