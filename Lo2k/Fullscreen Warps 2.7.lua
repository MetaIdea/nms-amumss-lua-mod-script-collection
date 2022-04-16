NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Fullscreen Warps 2.7.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.81",
["MOD_DESCRIPTION"]			= "This mods removes ship from warp sequences",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FocusPointDist", "10000"},
								{"OffsetZFrequency_1", "0"},
    							{"OffsetZFrequency_2", "0"},
    							{"OffsetZPhase_1", "0"},
    							{"OffsetZPhase_2", "0"},
    							{"OffsetZStartBias", "-12"},
    							{"OffsetZBias", "-12"},
    							{"OffsetZRange", "0"},
    							{"OffsetYFrequency_1", "0"},
    							{"OffsetYFrequency_2", "0"},
    							{"OffsetYPhase_1", "0"},
    							{"OffsetYPhase_2", "0"},
    							{"OffsetYStartBias", "5"},
    							{"OffsetYBias", "5"},
    							{"OffsetYRange", "0"},
    							{"OffsetXFrequency", "0"},
    							{"OffsetXRange", "0"},
    							{"RollRange", "0"},
    							{"YawRange", "0"},
							}
						}
					}
				}	
			}
		}
	}	
}