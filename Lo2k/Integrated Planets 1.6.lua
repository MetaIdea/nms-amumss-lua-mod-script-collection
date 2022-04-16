NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Integrated Planets 1.6.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.62",
["MOD_DESCRIPTION"]			= "This mod multiply by ten all freighter warp drive ranges",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"SpaceSkyMin",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpaceFogMax",	"0.55"},		 -- Original "0.7"   
								{"SpaceFogPlanetMax",	"0.65"}, -- Original "0"  
							},
						},
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["PRECEDING_KEY_WORDS"] = {"SpaceSkyMax",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpaceFogMax",	"0.55"},		 -- Original "0.7"   
								{"SpaceFogPlanetMax",	"0.65"}, -- Original "0"  
							}
						}
					}
				}	
			}
		}
	}	
}