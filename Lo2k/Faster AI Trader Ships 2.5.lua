NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Faster AI Trader Ships 2.5.pak", 
["MOD_AUTHOR"]				= "Degraaf (updated by Lo2k)",
["NMS_VERSION"]				= "3.53",
["MOD_DESCRIPTION"]			= "This mods increases AI Trader ships speed flying over landscape",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PlanetMinSpeed",	"150"}, -- original 30
								{"PlanetMaxSpeed",	"250"},  -- original 80
								{"PlanetBoostSpeed",	"350"},  --original 200
							}
						}
					}
				}
			}
		}
	}	
}