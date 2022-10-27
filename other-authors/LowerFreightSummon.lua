NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LowerFreightSummon",
["MOD_DESCRIPTION"]			= "Allows summoning freighter in atmosphere and at a better angle",
["MOD_AUTHOR"]				= "Dad",
["NMS_VERSION"]				= "4.04",
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
								{"FreighterSummonPlanetOffset", "-2050"}, -- Lowers the distance, originally 2000
								{"FreighterSummonTurn", "-135"}, -- original 150
								{"FreighterSummonPitch", "-23"}, -- original 15
								{"FreighterSummonTurnAngleIncrement", "3"}, -- original 5
							}
						}
					}
				}
			}
		}
	}	
}

