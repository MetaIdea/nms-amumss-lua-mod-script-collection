LOD_MULTIPLIER 						= 0.5
TerrainFoliageGrassSky_MULTIPLIER 	= 0.5

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 	= "UltimateLowSpecFpsBoostV1.pak",
["MOD_AUTHOR"] 		= "Mjstral aka MetaIdea, Wombi, WoodyMontana, Various",
["DESCRIPTION"]		= "FPS Boost made for devices like the GPD WIN 2, disables shadows, no object fade in and out, reduced lod level distance",
["NMS_VERSION"] 	= "3.93+",
["MODIFICATIONS"] 	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{ --NO SHADOWS MOD BY Wombi, Link: https://www.nexusmods.com/nomanssky/mods/1808
					["MBIN_FILE_SOURCE"] 	= "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "ShadowMapSize", 						"0" }, 		--Original "1024"
								{ "ShadowLength", 						"0" }, 		--Original "400"
								{ "ShadowLengthShip", 					"0" }, 		--Original "1200"
								{ "ShadowLengthSpace", 					"0" }, 		--Original "20000"
								{ "ShadowLengthStation", 				"0" }, 		--Original "1300"
								{ "ShadowLengthFreighter", 				"0" }, 		--Original "2500"
								{ "ShadowLengthFreighterAbandoned", 	"0" }, 		--Original "2500"
								{ "ShadowLengthCameraView", 			"0" }, 		--Original "1300"
							}
						}
					}
				},
				{ --NO FADE MOD BY WoodyMontana Link: https://www.nexusmods.com/nomanssky/mods/1133
					["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{ "TerrainFadeTime",					"0" }, 		--Original "2"
								{ "TerrainFadeTimeInShip",				"0" }, 		--Original "2"
								{ "CreatureFadeTime",					"0" }, 		--Original "1.5"
								{ "FloraFadeTimeMin",					"0" }, 		--Original "0.6"
								{ "FloraFadeTimeMax",					"0" }, 		--Original "2.25"
							}
						}
					}
				},
				{ --ADDITIONAL BY Mjstral
					["MBIN_FILE_SOURCE"] 	= "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["MATH_OPERATION"] 			= "*",
							["VALUE_CHANGE_TABLE"] 		= 
							{
								{ "TerrainBlocksPerFrameLow", 			TerrainFoliageGrassSky_MULTIPLIER }, 		--Original "16"
								{ "FoliageValueMin", 					TerrainFoliageGrassSky_MULTIPLIER }, 		--Original "0.7"
								{ "FoliageValueMax", 					TerrainFoliageGrassSky_MULTIPLIER }, 		--Original "0.85"
								{ "GrassValueMin", 						TerrainFoliageGrassSky_MULTIPLIER }, 		--Original "0.7"
								{ "GrassValueMax", 						TerrainFoliageGrassSky_MULTIPLIER }, 		--Original "0.6"
								{ "SkyValueMin", 						TerrainFoliageGrassSky_MULTIPLIER }, 		--Original "0.52"
								{ "SkyValueMax", 						TerrainFoliageGrassSky_MULTIPLIER }, 		--Original "0.52"
							}
						}
					}
				},
				{ --CHANGE LOD DISTANCE
					["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+1", ["VALUE_CHANGE_TABLE"] = {{"LODAdjust", LOD_MULTIPLIER}}},
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+2", ["VALUE_CHANGE_TABLE"] = {{"LODAdjust", LOD_MULTIPLIER}}},
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+3", ["VALUE_CHANGE_TABLE"] = {{"LODAdjust", LOD_MULTIPLIER}}},
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+4", ["VALUE_CHANGE_TABLE"] = {{"LODAdjust", LOD_MULTIPLIER}}},
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+5", ["VALUE_CHANGE_TABLE"] = {{"LODAdjust", LOD_MULTIPLIER}}},
						
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+1", ["VALUE_CHANGE_TABLE"] = {{"RegionLODRadius", LOD_MULTIPLIER}}},
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+2", ["VALUE_CHANGE_TABLE"] = {{"RegionLODRadius", LOD_MULTIPLIER}}},
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+3", ["VALUE_CHANGE_TABLE"] = {{"RegionLODRadius", LOD_MULTIPLIER}}},
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+4", ["VALUE_CHANGE_TABLE"] = {{"RegionLODRadius", LOD_MULTIPLIER}}},
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+5", ["VALUE_CHANGE_TABLE"] = {{"RegionLODRadius", LOD_MULTIPLIER}}},
						
						{
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PlanetObjectSwitch",			LOD_MULTIPLIER},
								{"PlanetLodSwitch0",			LOD_MULTIPLIER},
								{"PlanetLodSwitch0Elevation",	LOD_MULTIPLIER},
								{"PlanetLodSwitch1",			LOD_MULTIPLIER},
								{"PlanetLodSwitch2",			LOD_MULTIPLIER},
								{"PlanetLodSwitch3",			LOD_MULTIPLIER}
							}
						},
					}
				},
			}
		}
	}
}