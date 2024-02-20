NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Asteroid Hits 2.9.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.51",
["MOD_DESCRIPTION"]			= "This mod greatly increases damages due to asteroid collision",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\DAMAGETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SMALLASTEROID",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Damage",	"50"}		-- Original "5"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MEDIUMASTEROID",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Damage",	"75"}		-- Original "15"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LARGEASTEROID",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Damage",	"100"}		-- Original "40"   
							}
						},
					}
				}	
			}
		}
	}	
}