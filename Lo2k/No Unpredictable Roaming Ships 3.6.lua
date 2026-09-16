NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "No Unpredictable Roaming Ships 3.6", 
["MOD_AUTHOR"]			= "Lo2k",
["LUA_AUTHOR"]			= "Lo2k",
["NMS_VERSION"]			= "7.00",
["MOD_DESCRIPTION"]	= "This mod removes roaming ship formations",
["MODIFICATIONS"] 	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{ 
					["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"FlybySpawns", "Count"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"X",	"0.000000"}, --original : 1
								{"Y",	"0.000000"}, --original : 3
							},
						},
					}
				}
			}
		}
	}	
}


  
