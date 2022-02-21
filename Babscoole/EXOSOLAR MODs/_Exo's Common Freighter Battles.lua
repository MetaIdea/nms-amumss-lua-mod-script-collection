NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_Exo's Common Freighter Battles.pak",
["MOD_AUTHOR"]				= "Exosolar",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.81",
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
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
                                {"WarpsBetweenBattles", "2"},
                                {"HoursBetweenBattles", "1.5"}								
							}
						}
					}
				}
			}
		}
	}	
}