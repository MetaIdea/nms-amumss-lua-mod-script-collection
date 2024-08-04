WaterDepthMultiplier = -16
MaxMultiplier = 1.1
AmplifiedAddition = 0.7

SharpToRoundFeatures = 0.5
PerturbFeatures = 0.2
AltitudeErosion = 0.25
RidgeErosion = 0
SlopeErosion = 1
PlateauSharpness = 3
PlateauRegion = 100
SlopeErosion = 1

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_LASAGNA_PrimeTerrain_v1.22.pak",
["MOD_AUTHOR"]				= "goosetehmoose",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 		
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\VOXELGENERATORSETTINGS.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						-- {			
							-- ["PRECEDING_KEY_WORDS"] = { "UnderWater" },
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "Height", 			WaterDepthMultiplier },
							-- }
						-- },
						-- {			
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation" },				
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",							
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								
								-- { "RemapFromMax", 		MaxMultiplier },
								-- { "RemapToMax", 		MaxMultiplier },
							-- }
						-- },
						-- {			
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation" },			
							-- ["MATH_OPERATION"] 		= "+",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "AmplifyFeatures", 	AmplifiedAddition },
							-- }
						-- },
						-- {			
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation" },
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "SharpToRoundFeatures", 	SharpToRoundFeatures },
								-- { "PerturbFeatures", 		PerturbFeatures},
								-- { "AltitudeErosion", 		AltitudeErosion },
								-- { "RidgeErosion", 			RidgeErosion },
								-- { "SlopeErosion", 			SlopeErosion },
								-- { "PlateauSharpness", 		PlateauSharpness },
								-- { "PlateauRegionSize", 		PlateauRegion },
							-- }
						-- },
						-----------------------------------------------------------------------------------------------------
						--= = = = = = = = = = = = = = = = = = = = = HUGEARCHESPRIME = = = = = = = = = = = = = = = = = = = = =
						-----------------------------------------------------------------------------------------------------
						------------------------------No water swamp planets/Huge misc. water islands------------------------
						{			
							["SPECIAL_KEY_WORDS"] = { "HugeArchesPrime","TkVoxelGeneratorSettingsElement.xml",},		
                            ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								
								{ "RemapFromMax", 		MaxMultiplier },
								{ "RemapToMax", 		MaxMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "HugeArchesPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "NoiseVoxelType", 	"Base" },
								{ "Height", 			8 },
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "HugeArchesPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Arches", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "NoiseVoxelType", 	"Base" },
								{ "Height", 			1 },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "HugeArchesPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "ArchesSmall", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "NoiseVoxelType", 	"Base" },
								{ "Height", 			1 },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "HugeArchesPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Mountain", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "NoiseVoxelType", 	"Base" },
								{ "Height", 			2 },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "HugeArchesPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "UnderWater" },
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			WaterDepthMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "HugeArchesPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Base", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			300 },
								{ "Width", 				1000 },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "GrandCanyonPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Continent", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			400 },
							}
						},
						
						-----------------------------------------------------------------------------------------------------
						--= = = = = = = = = = = = = = = = = = = = = = ALPINEPRIME = = = = = = = = = = = = = = = = = = = = = =
						-----------------------------------------------------------------------------------------------------
						-----------------------------------------Lush tentacle planets---------------------------------------
						{			
							["SPECIAL_KEY_WORDS"] = { "AlpinePrime","TkVoxelGeneratorSettingsElement.xml",},		
                            ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								
								{ "RemapFromMax", 		MaxMultiplier },
								{ "RemapToMax", 		MaxMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "AlpinePrime","TkVoxelGeneratorSettingsElement.xml",},	
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "+",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "AmplifyFeatures", 	AmplifiedAddition },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "AlpinePrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								{ "PerturbFeatures", 		PerturbFeatures},
								{ "AltitudeErosion", 		AltitudeErosion },
								{ "RidgeErosion", 			RidgeErosion },
								{ "SlopeErosion", 			SlopeErosion },
								{ "PlateauSharpness", 		PlateauSharpness },
								{ "PlateauRegionSize", 		PlateauRegion },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "AlpinePrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "UnderWater" },
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			WaterDepthMultiplier },
							}
						},
						-----------------------------------------------------------------------------------------------------
						--= = = = = = = = = = = = = = = = = = = = = = = LILYPAD = = = = = = = = = = = = = = = = = = = = = = = 
						-----------------------------------------------------------------------------------------------------
						-----------------------------------------Weird hexagon planets---------------------------------------
						{			
							["SPECIAL_KEY_WORDS"] = { "LilyPad","TkVoxelGeneratorSettingsElement.xml",},	
                            ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								
								{ "RemapFromMax", 		MaxMultiplier },
								{ "RemapToMax", 		MaxMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "LilyPad","TkVoxelGeneratorSettingsElement.xml",},	
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "+",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "AmplifyFeatures", 	AmplifiedAddition },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "LilyPad","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								{ "PerturbFeatures", 		PerturbFeatures},
								{ "AltitudeErosion", 		AltitudeErosion },
								{ "RidgeErosion", 			RidgeErosion },
								{ "SlopeErosion", 			SlopeErosion },
								{ "PlateauSharpness", 		PlateauSharpness },
								{ "PlateauRegionSize", 		PlateauRegion },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "LilyPad","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Mountain", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "NoiseVoxelType", 	"Base" },
								{ "Height", 			1 },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "LilyPad","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "UnderWater" },
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			WaterDepthMultiplier },
							}
						},
						-----------------------------------------------------------------------------------------------------
						-- = = = = = = = = = = = = = = = = = = = = = = CratersPrime = = = = = = = = = = = = = = = = = = = = =
						-----------------------------------------------------------------------------------------------------
						-----------------------------------------------Water islands-----------------------------------------
						{			
							["SPECIAL_KEY_WORDS"] = { "CratersPrime","TkVoxelGeneratorSettingsElement.xml",},		
                            ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								
								{ "RemapFromMax", 		MaxMultiplier },
								{ "RemapToMax", 		MaxMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "CratersPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "NoiseVoxelType", 	"Substance_1" },
								{ "Height", 			700 },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "CratersPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Mountain", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "NoiseVoxelType", 	"Base" },
								{ "Height", 			15 },
								{ "Width", 				100 },
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								{ "PerturbFeatures", 		PerturbFeatures},
								{ "AltitudeErosion", 		AltitudeErosion },
								{ "RidgeErosion", 			RidgeErosion },
								{ "SlopeErosion", 			SlopeErosion },
								{ "PlateauSharpness", 		PlateauSharpness },
								{ "PlateauRegionSize", 		PlateauRegion },
								
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "CratersPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "UnderWater" },
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			WaterDepthMultiplier },
							}
						},
						---------------------------------------------------------------------------------------------------
						-- = = = = = = = = = = = = = = = = = = = = = = AlienPrime = = = = = = = = = = = = = = = = = = = = =
						---------------------------------------------------------------------------------------------------
						---------------------------------------Swamp island planets----------------------------------------
						{			
							["SPECIAL_KEY_WORDS"] = { "AlienPrime","TkVoxelGeneratorSettingsElement.xml",},		
                            ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								
								{ "RemapFromMax", 		MaxMultiplier },
								{ "RemapToMax", 		MaxMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "AlienPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								--{ "NoiseVoxelType", 	"Substance_1" },
								{ "Height", 			2000 },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "AlienPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								{ "PerturbFeatures", 		PerturbFeatures},
								{ "AltitudeErosion", 		AltitudeErosion },
								{ "RidgeErosion", 			RidgeErosion },
								{ "SlopeErosion", 			SlopeErosion },
								{ "PlateauSharpness", 		PlateauSharpness },
								{ "PlateauRegionSize", 		PlateauRegion },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "AlienPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Hill", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "NoiseVoxelType", 	"Base" },
								{ "Height", 			500 },
								{ "Width", 				20000 },
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								{ "PerturbFeatures", 		PerturbFeatures},
								{ "AltitudeErosion", 		AltitudeErosion },
								{ "RidgeErosion", 			RidgeErosion },
								{ "SlopeErosion", 			SlopeErosion },
								{ "PlateauSharpness", 		PlateauSharpness },
								{ "PlateauRegionSize", 		PlateauRegion },
								
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "AlienPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Continent", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			800 },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "AlienPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Base", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			100 },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "AlienPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "UnderWater" },
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			WaterDepthMultiplier },
							}
						},
						-----------------------------------------------------------------------------------------------------
						-- = = = = = = = = = = = = = = = = = = = = = = CavernsPrime = = = = = = = = = = = = = = = = = = = = =
						-----------------------------------------------------------------------------------------------------
						-------------------------------Extremely hilly toxic "crystals" planet-------------------------------
						{			
							["SPECIAL_KEY_WORDS"] = { "CavernsPrime","TkVoxelGeneratorSettingsElement.xml",},		
                            ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								
								{ "RemapFromMax", 		MaxMultiplier },
								{ "RemapToMax", 		MaxMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "CavernsPrime","TkVoxelGeneratorSettingsElement.xml",},	
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "+",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "AmplifyFeatures", 	AmplifiedAddition },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "CavernsPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								{ "PerturbFeatures", 		PerturbFeatures},
								{ "AltitudeErosion", 		AltitudeErosion },
								{ "RidgeErosion", 			RidgeErosion },
								{ "SlopeErosion", 			SlopeErosion },
								{ "PlateauSharpness", 		PlateauSharpness },
								{ "PlateauRegionSize", 		PlateauRegion },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "CavernsPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "UnderWater" },
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			WaterDepthMultiplier },
							}
						},
						-----------------------------------------------------------------------------------------------------
						-- = = = = = = = = = = = = = = = = = = = = MountainRavinesPrime = = = = = = = = = = = = = = = = = = =
						-----------------------------------------------------------------------------------------------------
						-----------------------------------------Valcano mountain planets------------------------------------
						{			
							["SPECIAL_KEY_WORDS"] = { "MountainRavinesPrime","TkVoxelGeneratorSettingsElement.xml",},		
                            ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								
								{ "RemapFromMax", 		MaxMultiplier },
								{ "RemapToMax", 		MaxMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "MountainRavinesPrime","TkVoxelGeneratorSettingsElement.xml",},	
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "+",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "AmplifyFeatures", 	AmplifiedAddition },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "MountainRavinesPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								{ "PerturbFeatures", 		PerturbFeatures},
								{ "AltitudeErosion", 		AltitudeErosion },
								{ "RidgeErosion", 			RidgeErosion },
								{ "SlopeErosion", 			SlopeErosion },
								{ "PlateauSharpness", 		PlateauSharpness },
								{ "PlateauRegionSize", 		PlateauRegion },
								-- { "Height", 				1700 },
								-- { "Width", 					12000 },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "MountainRavinesPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Hill", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "NoiseVoxelType", 	"Base" },
								{ "Height", 			100 },
								{ "Width", 				12000 },
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								{ "PerturbFeatures", 		PerturbFeatures},
								{ "AltitudeErosion", 		AltitudeErosion },
								{ "RidgeErosion", 			RidgeErosion },
								{ "SlopeErosion", 			SlopeErosion },
								{ "PlateauSharpness", 		PlateauSharpness },
								{ "PlateauRegionSize", 		PlateauRegion },
								
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "MountainRavinesPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "UnderWater" },
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			WaterDepthMultiplier },
							}
						},
						-----------------------------------------------------------------------------------------------------
						-- = = = = = = = = = = = = = = = = = = = = = GrandCanyonPrime = = = = = = = = = = = = = = = = = = = =
						-----------------------------------------------------------------------------------------------------
						---------------------------------------Tall narrow swamp mountains-----------------------------------
						{			
							["SPECIAL_KEY_WORDS"] = { "GrandCanyonPrime","TkVoxelGeneratorSettingsElement.xml",},		
                            ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								
								{ "RemapFromMax", 		MaxMultiplier },
								{ "RemapToMax", 		MaxMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "GrandCanyonPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								{ "PerturbFeatures", 		PerturbFeatures},
								{ "AltitudeErosion", 		AltitudeErosion },
								{ "RidgeErosion", 			RidgeErosion },
								{ "SlopeErosion", 			SlopeErosion },
								{ "PlateauSharpness", 		PlateauSharpness },
								{ "PlateauRegionSize", 		PlateauRegion },
								{ "Height", 			1600 },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "GrandCanyonPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Hill", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "NoiseVoxelType", 	"Base" },
								{ "Height", 			1500 },
								{ "Width", 				50 },
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								{ "PerturbFeatures", 		PerturbFeatures},
								{ "AltitudeErosion", 		AltitudeErosion },
								{ "RidgeErosion", 			RidgeErosion },
								{ "SlopeErosion", 			SlopeErosion },
								{ "PlateauSharpness", 		PlateauSharpness },
								{ "PlateauRegionSize", 		PlateauRegion },
								
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "GrandCanyonPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Continent", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			950 },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "GrandCanyonPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Base", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			300 },
								{ "Width", 				1000 },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "GrandCanyonPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "UnderWater" },
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			WaterDepthMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "CratersPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Mountain", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "NoiseVoxelType", 	"Base" },
								{ "Height", 			5 },
								{ "Width", 				50 },
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								{ "PerturbFeatures", 		PerturbFeatures},
								{ "AltitudeErosion", 		AltitudeErosion },
								{ "RidgeErosion", 			RidgeErosion },
								{ "SlopeErosion", 			SlopeErosion },
								{ "PlateauSharpness", 		PlateauSharpness },
								{ "PlateauRegionSize", 		PlateauRegion },
								
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "CratersPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Rock", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "NoiseVoxelType", 	"Base" },
								{ "Height", 			2 },
								{ "Width", 				1000 },
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								{ "PerturbFeatures", 		PerturbFeatures},
								{ "AltitudeErosion", 		AltitudeErosion },
								{ "RidgeErosion", 			RidgeErosion },
								{ "SlopeErosion", 			SlopeErosion },
								{ "PlateauSharpness", 		PlateauSharpness },
								{ "PlateauRegionSize", 		PlateauRegion },
								
							}
						},
						
						
						
						
						-----------------------------------------------------------------------------------------------------
						-- = = = = = = = = = = = = = = = Other prime planets, changed = = = = = = = = = = = = = = = = = = = =
						-----------------------------------------------------------------------------------------------------
						
						
						{			
							["SPECIAL_KEY_WORDS"] = { "WaterworldPrime","TkVoxelGeneratorSettingsElement.xml",},	
                            ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								
								{ "RemapFromMax", 		MaxMultiplier },
								{ "RemapToMax", 		MaxMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "WaterworldPrime","TkVoxelGeneratorSettingsElement.xml",},	
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "+",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "AmplifyFeatures", 	AmplifiedAddition },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "WaterworldPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								{ "PerturbFeatures", 		PerturbFeatures},
								{ "AltitudeErosion", 		AltitudeErosion },
								{ "RidgeErosion", 			RidgeErosion },
								{ "SlopeErosion", 			SlopeErosion },
								{ "PlateauSharpness", 		PlateauSharpness },
								{ "PlateauRegionSize", 		PlateauRegion },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "WaterworldPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "UnderWater" },
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			WaterDepthMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "FloatingIslandsPrime","TkVoxelGeneratorSettingsElement.xml",},		
                            ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								
								{ "RemapFromMax", 		MaxMultiplier },
								{ "RemapToMax", 		MaxMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "FloatingIslandsPrime","TkVoxelGeneratorSettingsElement.xml",},	
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "+",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "AmplifyFeatures", 	AmplifiedAddition },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "FloatingIslandsPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								{ "PerturbFeatures", 		PerturbFeatures},
								{ "AltitudeErosion", 		AltitudeErosion },
								{ "RidgeErosion", 			RidgeErosion },
								{ "SlopeErosion", 			SlopeErosion },
								{ "PlateauSharpness", 		PlateauSharpness },
								{ "PlateauRegionSize", 		PlateauRegion },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "FloatingIslandsPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "UnderWater" },
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			WaterDepthMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "DesertPrime","TkVoxelGeneratorSettingsElement.xml",},	
                            ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								
								{ "RemapFromMax", 		MaxMultiplier },
								{ "RemapToMax", 		MaxMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "DesertPrime","TkVoxelGeneratorSettingsElement.xml",},	
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "+",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "AmplifyFeatures", 	AmplifiedAddition },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "LilyPadPrime","TkVoxelGeneratorSettingsElement.xml",},		
                            ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								
								{ "RemapFromMax", 		MaxMultiplier },
								{ "RemapToMax", 		MaxMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "LilyPadPrime","TkVoxelGeneratorSettingsElement.xml",},	
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["MATH_OPERATION"] 		= "+",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "AmplifyFeatures", 	AmplifiedAddition },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "LilyPadPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								{ "PerturbFeatures", 		PerturbFeatures},
								{ "AltitudeErosion", 		AltitudeErosion },
								{ "RidgeErosion", 			RidgeErosion },
								{ "SlopeErosion", 			SlopeErosion },
								{ "PlateauSharpness", 		PlateauSharpness },
								{ "PlateauRegionSize", 		PlateauRegion },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "LilyPadPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "UnderWater" },
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			WaterDepthMultiplier },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "DesertPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "Elevation", },
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								{ "PerturbFeatures", 		PerturbFeatures},
								{ "AltitudeErosion", 		AltitudeErosion },
								{ "RidgeErosion", 			RidgeErosion },
								{ "SlopeErosion", 			SlopeErosion },
								{ "PlateauSharpness", 		PlateauSharpness },
								{ "PlateauRegionSize", 		PlateauRegion },
							}
						},
						{			
							["SPECIAL_KEY_WORDS"] = { "DesertPrime","TkVoxelGeneratorSettingsElement.xml",},
							["PRECEDING_KEY_WORDS"] = { "UnderWater" },
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", 			WaterDepthMultiplier },
							}
						},
						
						
						
						
						
						
						
						

						
						-----------------------------------------------------------------------------------------------------
						--= = = = = = = = = = = = = = = = Pre-origins planets, no changes = = = = = = = = = = = = = = = = = =
						-----------------------------------------------------------------------------------------------------
						
						
						
						
						
						
						
						
						

						-- {			
							-- ["SPECIAL_KEY_WORDS"] 	= {"FloatingIslands","TkVoxelGeneratorSettingsElement.xml",},
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",							
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								
								-- { "RemapFromMax", 		MaxMultiplier },
								-- { "RemapToMax", 		MaxMultiplier },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] 	= {"FloatingIslands","TkVoxelGeneratorSettingsElement.xml",},
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "+",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "AmplifyFeatures", 	AmplifiedAddition },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] 	= {"FloatingIslands","TkVoxelGeneratorSettingsElement.xml",},
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "SharpToRoundFeatures", 	SharpToRoundFeatures },
								-- { "PerturbFeatures", 		PerturbFeatures},
								-- { "AltitudeErosion", 		AltitudeErosion },
								-- { "RidgeErosion", 			RidgeErosion },
								-- { "SlopeErosion", 			SlopeErosion },
								-- { "PlateauSharpness", 		PlateauSharpness },
								-- { "PlateauRegionSize", 		PlateauRegion },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "GrandCanyon","TkVoxelGeneratorSettingsElement.xml",},
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",							
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								
								-- { "RemapFromMax", 		MaxMultiplier },
								-- { "RemapToMax", 		MaxMultiplier },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "GrandCanyon","TkVoxelGeneratorSettingsElement.xml",},
                            -- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "+",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "AmplifyFeatures", 	AmplifiedAddition },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "GrandCanyon","TkVoxelGeneratorSettingsElement.xml",},
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "SharpToRoundFeatures", 	SharpToRoundFeatures },
								-- { "PerturbFeatures", 		PerturbFeatures},
								-- { "AltitudeErosion", 		AltitudeErosion },
								-- { "RidgeErosion", 			RidgeErosion },
								-- { "SlopeErosion", 			SlopeErosion },
								-- { "PlateauSharpness", 		PlateauSharpness },
								-- { "PlateauRegionSize", 		PlateauRegion },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "MountainRavines","TkVoxelGeneratorSettingsElement.xml",},	
                            -- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",							
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								
								-- { "RemapFromMax", 		MaxMultiplier },
								-- { "RemapToMax", 		MaxMultiplier },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "MountainRavines","TkVoxelGeneratorSettingsElement.xml",},	
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "+",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "AmplifyFeatures", 	AmplifiedAddition },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "MountainRavines","TkVoxelGeneratorSettingsElement.xml",},
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "SharpToRoundFeatures", 	SharpToRoundFeatures },
								-- { "PerturbFeatures", 		PerturbFeatures},
								-- { "AltitudeErosion", 		AltitudeErosion },
								-- { "RidgeErosion", 			RidgeErosion },
								-- { "SlopeErosion", 			SlopeErosion },
								-- { "PlateauSharpness", 		PlateauSharpness },
								-- { "PlateauRegionSize", 		PlateauRegion },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "Alien","TkVoxelGeneratorSettingsElement.xml",},		
                            -- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",							
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								
								-- { "RemapFromMax", 		MaxMultiplier },
								-- { "RemapToMax", 		MaxMultiplier },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "Alien","TkVoxelGeneratorSettingsElement.xml",},	
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "+",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "AmplifyFeatures", 	AmplifiedAddition },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "Alien","TkVoxelGeneratorSettingsElement.xml",},
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "SharpToRoundFeatures", 	SharpToRoundFeatures },
								-- { "PerturbFeatures", 		PerturbFeatures},
								-- { "AltitudeErosion", 		AltitudeErosion },
								-- { "RidgeErosion", 			RidgeErosion },
								-- { "SlopeErosion", 			SlopeErosion },
								-- { "PlateauSharpness", 		PlateauSharpness },
								-- { "PlateauRegionSize", 		PlateauRegion },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "Craters","TkVoxelGeneratorSettingsElement.xml",},	
                            -- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",							
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								
								-- { "RemapFromMax", 		MaxMultiplier },
								-- { "RemapToMax", 		MaxMultiplier },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "Craters","TkVoxelGeneratorSettingsElement.xml",},	
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "+",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "AmplifyFeatures", 	AmplifiedAddition },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "Craters","TkVoxelGeneratorSettingsElement.xml",},
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- --{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								-- { "PerturbFeatures", 		PerturbFeatures},
								-- { "AltitudeErosion", 		AltitudeErosion },
								-- { "RidgeErosion", 			RidgeErosion },
								-- { "SlopeErosion", 			SlopeErosion },
								-- { "PlateauSharpness", 		PlateauSharpness },
								-- { "PlateauRegionSize", 		PlateauRegion },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "Caverns","TkVoxelGeneratorSettingsElement.xml",},		
                            -- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",							
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								
								-- { "RemapFromMax", 		MaxMultiplier },
								-- { "RemapToMax", 		MaxMultiplier },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "Caverns","TkVoxelGeneratorSettingsElement.xml",},	
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "+",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "AmplifyFeatures", 	AmplifiedAddition },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "Caverns","TkVoxelGeneratorSettingsElement.xml",},
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "SharpToRoundFeatures", 	SharpToRoundFeatures },
								-- { "PerturbFeatures", 		PerturbFeatures},
								-- { "AltitudeErosion", 		AltitudeErosion },
								-- { "RidgeErosion", 			RidgeErosion },
								-- { "SlopeErosion", 			SlopeErosion },
								-- { "PlateauSharpness", 		PlateauSharpness },
								-- { "PlateauRegionSize", 		PlateauRegion },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "HugeArches","TkVoxelGeneratorSettingsElement.xml",},				
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",							
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								
								-- { "RemapFromMax", 		MaxMultiplier },
								-- { "RemapToMax", 		MaxMultiplier },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "HugeArches","TkVoxelGeneratorSettingsElement.xml",},	
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "+",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "AmplifyFeatures", 	AmplifiedAddition },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "HugeArches","TkVoxelGeneratorSettingsElement.xml",},
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "SharpToRoundFeatures", 	SharpToRoundFeatures },
								-- { "PerturbFeatures", 		PerturbFeatures},
								-- { "AltitudeErosion", 		AltitudeErosion },
								-- { "RidgeErosion", 			RidgeErosion },
								-- { "SlopeErosion", 			SlopeErosion },
								-- { "PlateauSharpness", 		PlateauSharpness },
								-- { "PlateauRegionSize", 		PlateauRegion },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "HugeArches","TkVoxelGeneratorSettingsElement.xml",},				
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",							
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								
								-- { "RemapFromMax", 		MaxMultiplier },
								-- { "RemapToMax", 		MaxMultiplier },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "HugeArches","TkVoxelGeneratorSettingsElement.xml",},	
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "+",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "AmplifyFeatures", 	AmplifiedAddition },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "HugeArches","TkVoxelGeneratorSettingsElement.xml",},
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- --{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								-- { "PerturbFeatures", 		PerturbFeatures},
								-- { "AltitudeErosion", 		AltitudeErosion },
								-- { "RidgeErosion", 			RidgeErosion },
								-- { "SlopeErosion", 			SlopeErosion },
								-- { "PlateauSharpness", 		PlateauSharpness },
								-- { "PlateauRegionSize", 		PlateauRegion },
							-- }
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = { "Alpine","TkVoxelGeneratorSettingsElement.xml",},			
                            -- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "*",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",							
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								
								-- { "RemapFromMax", 		MaxMultiplier },
								-- { "RemapToMax", 		MaxMultiplier },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "Alpine","TkVoxelGeneratorSettingsElement.xml",},	
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["MATH_OPERATION"] 		= "+",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- { "AmplifyFeatures", 	AmplifiedAddition },
							-- }
						-- },
						-- {			
							-- ["SPECIAL_KEY_WORDS"] = { "Alpine","TkVoxelGeneratorSettingsElement.xml",},
							-- ["PRECEDING_KEY_WORDS"] = { "Elevation", },
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",			
							-- ["VALUE_CHANGE_TABLE"] 	= 					
							-- {
								-- --{ "SharpToRoundFeatures", 	SharpToRoundFeatures },
								-- { "PerturbFeatures", 		PerturbFeatures},
								-- { "AltitudeErosion", 		AltitudeErosion },
								-- { "RidgeErosion", 			RidgeErosion },
								-- { "SlopeErosion", 			SlopeErosion },
								-- { "PlateauSharpness", 		PlateauSharpness },
								-- { "PlateauRegionSize", 		PlateauRegion },
							-- }
						-- },
					}
				}	
			}
		}
	}	
}