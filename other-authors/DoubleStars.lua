ModName = "DoubleStars.pak"
ModDescription = "Doubles the amount of stars in the universe"
Author = "Striker0420"
Version = "3.97"

GalaxyGlobals = "GCGALAXYGLOBALS.GLOBAL.MBIN"


NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= ModName,    
  ["MOD_DESCRIPTION"]		= ModDescription,        
  ["MOD_AUTHOR"]				= "CodenameAwesome", 
  ["LUA_AUTHOR"]				= Author,       
  ["NMS_VERSION"]				= Version,    
  ["MODIFICATIONS"] 		=            
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= GalaxyGlobals,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["MATH_OPERATION"] = "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StarGenerationThreshold",	2},
							}	
						},
					}
				},
			}
		},
	}
}
