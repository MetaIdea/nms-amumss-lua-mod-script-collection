NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "JE_MiningFlyby_Begone.pak", 
["MOD_AUTHOR"]				= "Jaggid Edje",
["LUA_AUTHOR"]				= "Jaggid Edje",
["NMS_VERSION"]				= "4.20",
["MOD_DESCRIPTION"]			= "Adjusts the frequency and distance of various flyby types within the game",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{ 
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"MiningFlybySpawns", "Count" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0"}, 		-- Original "1"
								{"y",	"0"} 		-- Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"MiningFlybySpawns"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRange",	"1000"},  --original : 500
							}
						}
					}
				}
			}
		}
	}	
}


  
