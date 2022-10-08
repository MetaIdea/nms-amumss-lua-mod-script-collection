WARPS = "2"
HOURS = "1"
SPAWNRATE = "40"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "_Exo's Common Freighter Battles.pak",
["MOD_AUTHOR"]    = "Exosolar",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.00",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["INTEGER_TO_FLOAT"]   = "FORCE",							
							["VALUE_CHANGE_TABLE"] = 
							{
								{"WarpsBetweenBattles", WARPS},
								{"HoursBetweenBattles", HOURS}								
							}
						}
					}
				},
                {
                    ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"FreighterSpawnRate", SPAWNRATE}
                            }
                        }
                    }
                },
			}
		}
	}	
}