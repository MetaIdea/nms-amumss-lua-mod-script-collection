QUALITY_MULTIPLIER 	= 0.5

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 	= "UltimateLowSpecFpsBoost.pak",
["MOD_AUTHOR"] 		= "Mjstral aka MetaIdea, Wombi, WoodyMontana, Various",
["DESCRIPTION"]		= "FPS Boost made for low end devices like the GPD WIN 2, disables shadows, no object fade in and out, reduced lod level distance",
["NMS_VERSION"] 	= "4.0+",
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
								{ "ShadowLength", 						"-1" }, 	--Original "400"
								{ "ShadowLengthShip", 					"0" }, 		--Original "1200"
								{ "ShadowLengthSpace", 					"0" }, 		--Original "20000"
								{ "ShadowLengthStation", 				"0" }, 		--Original "1300"
								{ "ShadowLengthFreighter", 				"0" }, 		--Original "2500"
								{ "ShadowLengthFreighterAbandoned", 	"0" }, 		--Original "2500"
								{ "ShadowLengthCameraView", 			"0" }, 		--Original "1300"
								
								-- { "MinPixelSizeOfObjectsInShadowsSpace",			 		"0" }, --Original "18"
								-- { "MinPixelSizeOfObjectsInShadowsPlanet", 				"0" }, --Original "6"
								-- { "MinPixelSizeOfObjectsInShadowsCockpitOnPlanet", 		"0" }, --Original "14"
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
								{ "TerrainBlocksPerFrameLow", 			QUALITY_MULTIPLIER }, 		--Original "16"
								{ "TerrainBlocksPerFrameMed", 			QUALITY_MULTIPLIER }, 		--Original "24"
								{ "TerrainBlocksPerFrameHi", 			QUALITY_MULTIPLIER }, 		--Original "48"
								{ "TerrainBlocksPerFrameUlt", 			QUALITY_MULTIPLIER }, 		--Original "64"
								{ "FoliageValueMin", 					QUALITY_MULTIPLIER }, 		--Original "0.7"
								{ "FoliageValueMax", 					QUALITY_MULTIPLIER }, 		--Original "0.85"
								{ "GrassValueMin", 						QUALITY_MULTIPLIER }, 		--Original "0.7"
								{ "GrassValueMax", 						QUALITY_MULTIPLIER }, 		--Original "0.6"
								{ "SkyValueMin", 						QUALITY_MULTIPLIER }, 		--Original "0.52"
								{ "SkyValueMax", 						QUALITY_MULTIPLIER }, 		--Original "0.52"
								{ "MaxParticleRenderRange", 			QUALITY_MULTIPLIER }, 		--Original "75"
								{ "MaxParticleRenderRangeSpace", 		QUALITY_MULTIPLIER }, 		--Original "10000"
							}
						},
						{
							["VALUE_CHANGE_TABLE"] 		= 
							{
								{ "TerrainAnisoLow",		"0" }, 		--Original "2"
								{ "TerrainAnisoMed",		"0" }, 		--Original "2"
								{ "TerrainAnisoHi",			"0" }, 		--Original "4"
								{ "TerrainAnisoUlt",		"0" }, 		--Original "8"
								{ "ReflectionStrength",		"0" }, 		--Original "0.3"
								{ "EnableSSR",			"False" }, 		--Original "True"
								{ "SharpenFilterAmount",	"0" }, 		--Original "1"
								{ "SupersamplingLevel",		"0" }, 		--Original "1"
							}
						}
					}
				},
				{ --CHANGE LOD DISTANCE
					["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+1", ["VALUE_CHANGE_TABLE"] = {{"LODAdjust", QUALITY_MULTIPLIER}}},
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+2", ["VALUE_CHANGE_TABLE"] = {{"LODAdjust", QUALITY_MULTIPLIER}}},
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+3", ["VALUE_CHANGE_TABLE"] = {{"LODAdjust", QUALITY_MULTIPLIER}}},
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+4", ["VALUE_CHANGE_TABLE"] = {{"LODAdjust", QUALITY_MULTIPLIER}}},
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+5", ["VALUE_CHANGE_TABLE"] = {{"LODAdjust", QUALITY_MULTIPLIER}}},
						
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+1", ["VALUE_CHANGE_TABLE"] = {{"RegionLODRadius", QUALITY_MULTIPLIER}}},
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+2", ["VALUE_CHANGE_TABLE"] = {{"RegionLODRadius", QUALITY_MULTIPLIER}}},
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+3", ["VALUE_CHANGE_TABLE"] = {{"RegionLODRadius", QUALITY_MULTIPLIER}}},
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+4", ["VALUE_CHANGE_TABLE"] = {{"RegionLODRadius", QUALITY_MULTIPLIER}}},
						{["MATH_OPERATION"] = "*", ["LINE_OFFSET"] = "+5", ["VALUE_CHANGE_TABLE"] = {{"RegionLODRadius", QUALITY_MULTIPLIER}}},
						
						{
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PlanetObjectSwitch",			QUALITY_MULTIPLIER},
								{"PlanetLodSwitch0",			QUALITY_MULTIPLIER},
								{"PlanetLodSwitch0Elevation",	QUALITY_MULTIPLIER},
								{"PlanetLodSwitch1",			QUALITY_MULTIPLIER},
								{"PlanetLodSwitch2",			QUALITY_MULTIPLIER},
								{"PlanetLodSwitch3",			QUALITY_MULTIPLIER}
							}
						},
					}
				},
			}
		}
	}
}