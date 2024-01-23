--UNFINISHED, NOT FIXED
--[[
Quote: 
[2:38 PM] Mjjstral: The unfinished not fixed part notice doesn't refer to the file itself 
  rather than the content of the script. You can totally handle that file with the tool. 
  It's just that some of the script collection scripts only imply use scenarios.
[2:40 PM] Mjjstral: The tool e.g. can multiply every value of a terrain attribute 
  for you with 2 lines of definitions. It's a huge workremover
]]

MULTIPLIER = 2

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "VOXELGENERATORSETTINGS_MOD.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
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
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["MATH_OPERATION"] 		= "*",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "MaximumLOD", MULTIPLIER },
								{ "MinWidth", MULTIPLIER },
								{ "MaxWidth", MULTIPLIER },
								{ "MinHeight", MULTIPLIER },
								{ "MaxHeight", MULTIPLIER },
								{ "MinHeightOffset", MULTIPLIER },
								{ "MaxHeightOffset", MULTIPLIER },
								{ "HeightOffset", MULTIPLIER },
								{ "RegionRatio", MULTIPLIER },
								{ "RegionScale", MULTIPLIER },
								{ "Octaves", MULTIPLIER },
								{ "SlopeGain", MULTIPLIER },
								{ "SlopeBias", MULTIPLIER },
								{ "SharpToRoundFeatures", MULTIPLIER },
								{ "AmplifyFeatures", MULTIPLIER },
								{ "PerturbFeatures", MULTIPLIER },
								{ "AltitudeErosion", MULTIPLIER },
								{ "RidgeErosion", MULTIPLIER },
								{ "SlopeErosion", MULTIPLIER },
								{ "Lacunarity", MULTIPLIER },
								{ "Gain", MULTIPLIER },
								{ "RemapFromMin", MULTIPLIER },
								{ "RemapFromMax", MULTIPLIER },
								{ "RemapToMin", MULTIPLIER },
								{ "RemapToMax", MULTIPLIER },
								{ "MaximumLOD", MULTIPLIER },
								{ "Height", MULTIPLIER },
								{ "Width", MULTIPLIER },
								{ "RegionRatio", MULTIPLIER },
								{ "RegionScale", MULTIPLIER },
								{ "RegionGain", MULTIPLIER },
								{ "SmoothRadius", MULTIPLIER },
								{ "HeightOffset", MULTIPLIER },
								{ "PlateauStratas", MULTIPLIER },
								{ "PlateauSharpness", MULTIPLIER },
								{ "PlateauRegionSize", MULTIPLIER },
								{ "SeedOffset", MULTIPLIER },
								{ "TileBlendMeters", MULTIPLIER },
								{ "Yaw", MULTIPLIER },
								{ "Pitch", MULTIPLIER },
								{ "Roll", MULTIPLIER },
								{ "VaryYaw", MULTIPLIER },
								{ "VaryPitch", MULTIPLIER },
								{ "VaryRoll", MULTIPLIER },
								{ "SmoothRadius", MULTIPLIER },
								{ "SeedOffset", MULTIPLIER },
								{ "RandomPrimitive", MULTIPLIER }
							}
						}						
					}
				}		
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE