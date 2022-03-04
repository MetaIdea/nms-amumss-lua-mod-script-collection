NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_Exo's Rare Freighter Battles.pak",
["MOD_AUTHOR"]				= "Exosolar",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.84",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
                                {"WarpsBetweenBattles", "12"},
                                {"HoursBetweenBattles", "8"}								
							}
						}
					}
				}
			}
		}
	}	
}