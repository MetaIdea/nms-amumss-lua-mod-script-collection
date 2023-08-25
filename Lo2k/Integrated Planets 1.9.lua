NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Integrated Planets 1.9.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.40",
["MOD_DESCRIPTION"]			= "This mod rebalances space fog over planets, distant ships and asteroids",
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
								{"SpaceFogPlanetMax",	"0.65"}, -- Original "0.3"  
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SpaceSkyMax",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpaceFogMax",	"0.55"},		 -- Original "0.7"   
								{"SpaceFogPlanetMax",	"0.65"}, -- Original "0.6"  
							}
						}
					}
				}	
			}
		}
	}	
}