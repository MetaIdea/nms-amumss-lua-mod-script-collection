ModName = "_FreeBuilding.pak"
Author = "Striker0420"
LuaAuthor = "Syzzle"
Version = "4.07"

BaseBuildingObjectsTable = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"
DebugGlobals = "GCDEBUGOPTIONS.GLOBAL.MBIN"
PlayerGlobals = "GCPLAYERGLOBALS.GLOBAL.MBIN"
BuildingGlobals = "GCBUILDINGGLOBALS.GLOBAL.MBIN"

ScaleMax = 3000
ScaleMin = 0.00025

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName, 
["MOD_AUTHOR"]				= Author,
["LUA_AUTHOR"]				= LuaAuthor,
["NMS_VERSION"]				= Version,
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= BaseBuildingObjectsTable,
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BuildableOnPlanetBase", 		 "True"},
								{"BuildableOnSpaceBase", 		 "True"},
								{"BuildableOnFreighter", 		 "True"},
								{"BuildableOnPlanet", 		 	 "True"},
								{"BuildableOnPlanetWithProduct", "True"},
								{"BuildableUnderwater", 		 "True"},
								{"BuildableAboveWater", 		 "True"},								
								{"PlanetLimit", 					"0"},
								{"RegionLimit", 					"0"},
								{"PlanetBaseLimit", 				"0"},
								{"FreighterBaseLimit", 				"0"},
								{"CheckPlaceholderCollision",   "False"},
								{"CanRotate3D",   				"True"},
								{"CanScale",   					"True"},					
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= DebugGlobals,
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DisableLimits",					"True"},
								{"DisableBaseBuildingLimits",		"True"},
								--{"DisableBasePowerRequirements",	"True"},		
								{"BaseDownloadTimeout",				"120"},	--ORIGINAL 40
								{"InfiniteInteractions",	"True"},		
								{"AlwaysAllowShipOperations",	"True"},	
								{"AlwaysAllowVehicleOperations",	"True"},	
								{"AlwaysAllowFreighterInventoryAccess",	"True"},
								{"IgnoreFreighterSpawnWarpRequirement",	"True"},
								{"EverythingIsFree",	"True"},	
								{"EverythingIsKnown",	"True"},	
								{"EverythingIsStar",	"True"},		
								
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= PlayerGlobals,
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxBuildHeight", "1024"} --ORIGINAL 64					
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= BuildingGlobals,
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"BuildingPlacementScaleMinMax", "Vector2f.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",  ScaleMin},-- makes it so you can scale bigger or smaller
								{"y", ScaleMax}
							}
						}
					}
				}
			}
		}			
	}
}