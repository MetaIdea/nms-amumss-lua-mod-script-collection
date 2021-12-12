NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "PhotomodeVignetteBeGone.pak",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "3.75+",
["MOD_DESCRIPTION"]	= "easy way to remove photo mode vignette",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] 	= {"PhotoModeVignette","Vector2f.xml",},
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "x", 									"1" }, 		--Original "0.9"
								{ "y", 									"1" }, 		--Original "0.3"
							}
						}
					}
				}
			}
		}
	}	
}	
