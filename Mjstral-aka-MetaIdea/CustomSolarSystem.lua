NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "zzzzzzzzzzzCustomSolarSystem.pak", 
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2+",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GenerateForcedNumberPlanets",  "10"},
								{"GenerateMaximumSolarSystem",  "True"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "EmptySystemProbability",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Yellow",  "1.0"},
								{"Green",  	"1.0"},
								{"Blue",  	"1.0"},
								{"Red",  	"1.0"},
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ForceBiome",  			"True"},
								{"Biome",  					"Lush"},
								{"BiomeSubType",  			"HugeLush"},
								{"ForceLifeLevel",  		"True"},
								{"ForceCreatureLifeLevel",  "True"},
								{"LifeSetting",  			"Full"},				
								--{"ForceTerrainSettings",  	"3"},
								--{"ForceTerrainType",  		"True"},
								--{"ForceTerranTypeTo",  				"7"},
								--{"ForcePlanetsToHaveWater",  		"True"},
								--{"ModifyPlanetsInInitialSystems",  	"True"},
								{"DisableLimits",  					"True"},
							}
						}
					}
				}				
			}
		}
	}
}
--BiomeEnum { Lush, Toxic, Scorched, Radioactive, Frozen, Barren, Dead, Weird, Red, Green, Blue, Test, All }
--BiomeSubTypeEnum { None, Standard, HighQuality, Structure, Beam, Hexagon, FractCube, Bubble, Shards, Contour, Shell, BoneSpire, WireCell, 
--					HydroGarden, HugePlant, HugeLush, HugeRing, HugeRock, HugeScorch, HugeToxic }
--LifeSettingEnum { Dead, Low, Mid, Full }