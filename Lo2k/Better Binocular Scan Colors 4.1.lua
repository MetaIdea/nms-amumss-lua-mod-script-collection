NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Binocular Scan Colors 4.1", 
["MOD_AUTHOR"]				= "Sefer",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "7.00",
["MOD_DESCRIPTION"]		= "This mods improves identification colors",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"BinocularSelectedColour"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"R",	"0.000000"},  
								{"G",	"1.500000"},  
								{"B",	"0.000000"},  
								{"A",	"0.000000"},  
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BinocularSelectedUnknownColour"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"R",	"1.500000"},  
								{"G",	"0.000000"},  
								{"B",	"0.000000"},  
								{"A",	"0.000000"},  
							},
						},
					}
				},
			}
		}
	}	
}