NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Binocular Scan Colors 2.0.pak", 
["MOD_AUTHOR"]				= "Sefer",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.03",
["MOD_DESCRIPTION"]			= "This mods improves identification colors",
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
							["PRECEDING_KEY_WORDS"] = {"BinocularSelectedColour"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"R",	"0"},  
								{"G",	"1"},  
								{"B",	"0"},  
								{"A",	"0"},  
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BinocularSelectedUnknownColour"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"R",	"1"},  
								{"G",	"0"},  
								{"B",	"0"},  
								{"A",	"1"},  
							},
						},
					}
				}
			}
		}
	}	
}