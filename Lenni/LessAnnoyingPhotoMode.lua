NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LessAnnoyingPhotoMode.pak",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "3.75",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "UI\PHOTOMODE\PHOTOCAMMODE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IsHidden",		"True"},
							},
						},
					},
				},
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