NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_FreeBuilding.pak", 
["MOD_AUTHOR"]				= "Striker0420",
["NMS_VERSION"]				= "3.88",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
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
								{"GlobalLimit", 					"0"},			
								{"SystemLimit", 					"0"},
								{"PlanetLimit", 					"0"},
								{"RegionLimit", 					"0"},
								{"PlanetBaseLimit", 				"0"},
								{"FreighterBaseLimit", 				"0"},
								{"CheckPlaceholderCollision",   "False"},
								{"CanPlaceOnItself",   			"True"},
								{"CanRotate3D",   				"True"},
								{"CanScale",   					"True"},					
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DisableLimits",					"True"},
								{"DisableBaseBuildingLimits",		"True"},
								{"BaseBuildingPartsRequirePower",	"False"},		
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
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
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
					["MBIN_FILE_SOURCE"] 	= "GCBUILDINGGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"BuildingPlacementScaleMinMax", "Vector2f.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",  "0.0000025"},-- makes it so you can scale bigger or smaller
								{"y", "3000"}
							}
						}
					}
				}
			}
		}			
	}
}