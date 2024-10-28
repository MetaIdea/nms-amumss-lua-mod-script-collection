NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MoreAsteriodResources10x.pak", 
["MOD_AUTHOR"]				= "Weasel",
["LUA_AUTHOR"]				= "Weasel",
["NMS_VERSION"]				= "5.21.0.1",
["MOD_DESCRIPTION"]			= "Modifies asteroids to provide more resources. ",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RareAsteroidMinResources", "50"},             -- orginally 5
								{"RareAsteroidMaxResources", "100"},            -- orginally 10
								{"CommonAsteroidMinResources", "30"},           -- orginally 3
								{"CommonAsteroidMaxResources", "50"},           -- orginally 5
								{"FuelAsteroidMultiplier", "20"},               -- orginally 10
								{"CommonAsteroidResourceFuelMultiplier", "10"}, -- orginally 5

							}
						}
					}
				}
			}
		}
	}	
}