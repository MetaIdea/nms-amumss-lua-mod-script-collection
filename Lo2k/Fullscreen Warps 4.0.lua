NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Fullscreen Warps 4.0.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.51",
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
    							{"OffsetZStartBias", "-18"},
    							{"OffsetZBias", "-18"},
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
    							{"YawnRange", "0"},
							}
						}
					}
				}	
			}
		}
	}	
}