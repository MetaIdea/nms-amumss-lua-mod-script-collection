NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "FreighterHeights.pak",
["MOD_DESCRIPTION"]			= "Lowers The Distance When The Freighter Is Spawned From The Planets Surface.",
["MOD_AUTHOR"]				= "Giovanny196",
["NMS_VERSION"]				= "1.0",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCUIGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FreighterSummonPlanetOffset", "-1000"},
							}
						}
					}
				}
			}
		}
	}	
}