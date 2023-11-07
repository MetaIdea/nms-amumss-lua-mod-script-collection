
NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "DoubleStars.pak",    
  ["MOD_DESCRIPTION"]		= "Doubles the amount of stars in the universe",        
  ["MOD_AUTHOR"]				= "CodenameAwesome", 
  ["LUA_AUTHOR"]				= "Striker0420",       
  ["NMS_VERSION"]				= "3.88",    
  ["MODIFICATIONS"] 		=            
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCGALAXYGLOBALS.GLOBAL.MBIN"},
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
