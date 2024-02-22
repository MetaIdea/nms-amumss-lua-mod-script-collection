NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Colorful Starfield 2.7 - colourblind.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.51",
["MOD_DESCRIPTION"]			= "This mod enhances star colors",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGALAXYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours", "Yellow"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"R",	"1"},  
								{"G",	"0.92"},  
								{"B",	"0.23"},  
								{"A",	"0.35"},  
							},
						},	
						{
							["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours", "Green"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"R",	"0.17"},  
								{"G",	"0.95"},  
								{"B",	"0.184"},  
								{"A",	"0.6"},  
							},
						},	
						{
							["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours", "Blue"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"R",	"0.13"},  
								{"G",	"0.49"},  
								{"B",	"0.96"},  
								{"A",	"0.6"},  
							},
						},	
						{
							["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours", "Red"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"R",	"0.96"},  
								{"G",	"0.21"},  
								{"B",	"0.21"},  
								{"A",	"0.6"},  
							},
						},							
					}
				},		
			}
		}
	}	
}


  
