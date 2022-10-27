NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "UnrestrictedFreighterSummon",
["MOD_DESCRIPTION"]			= "Summon freighter closer",
["MOD_AUTHOR"]				= "Dad",
["NMS_VERSION"]				= "1.0",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PlayerFreighterClearSpaceRadius","75",}, -- original 3000
							}
						}
					}
				}
			}
		}
	}	
}