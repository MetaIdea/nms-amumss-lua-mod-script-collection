WATER_DEEPNESS_MULTIPLIER = -16
MAX_MULTIPLIER = 1.1
AMPLIFIED_ADDITION = 0.9

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_LASAGNA_AmplifiedTerrain_v1.31.pak",
["MOD_AUTHOR"]				= "Mjjsral_Modified_By_Lllasagna",
["NMS_VERSION"]				= "3.68",
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
							["PRECEDING_KEY_WORDS"] = { "UnderWater" },
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Height", WATER_DEEPNESS_MULTIPLIER },
							}
						},
						{			
							["PRECEDING_KEY_WORDS"] = "",				
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "MaxHeight", MAX_MULTIPLIER },
								{ "MaxHeightOffset", MAX_MULTIPLIER },
								{ "RemapFromMax", MAX_MULTIPLIER },
								{ "RemapToMax", MAX_MULTIPLIER },
								{ "SmoothRadius", MAX_MULTIPLIER },
							}
						},
												{			
							["PRECEDING_KEY_WORDS"] = "",				
							["MATH_OPERATION"] 		= "+",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "AmplifyFeatures", AMPLIFIED_ADDITION },
							}
						},
					}
				}	
			}
		}
	}	
}