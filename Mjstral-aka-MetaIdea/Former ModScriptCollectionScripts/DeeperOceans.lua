DEEPNESS_MULTIPLIER = -10

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "DeeperOceans.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["MODIFICATIONS"] 			= 
	{
		{
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
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								-- { "MinHeight", MULTIPLIER },
								-- { "MaxHeight", MULTIPLIER },
								-- { "MinHeightOffset", MULTIPLIER },
								-- { "MaxHeightOffset", MULTIPLIER },
								-- { "HeightOffset", MULTIPLIER },
								-- { "AltitudeErosion", MULTIPLIER },
								-- { "RidgeErosion", MULTIPLIER },
								-- { "SlopeErosion", MULTIPLIER },
								-- { "RemapFromMin", MULTIPLIER },
								-- { "RemapFromMax", MULTIPLIER },
								-- { "RemapToMin", MULTIPLIER },
								-- { "RemapToMax", MULTIPLIER },
								{ "Height", DEEPNESS_MULTIPLIER },
							}
						}						
					}
				}		
			}
		}
	}	
}