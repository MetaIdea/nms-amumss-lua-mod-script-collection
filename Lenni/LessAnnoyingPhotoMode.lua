NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "LessAnnoyingPhotoMode.pak",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "5.50",
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "UI\PHOTOMODE\PHOTOCAMMODE.MBIN",
					["MXML_CHANGE_TABLE"] 	=
					{
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Is Hidden",		"True"},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCSKYGLOBALS.GLOBALS.MBIN",
					["MXML_CHANGE_TABLE"] 	=
					{
						{
							["PKW"] 	= "PhotoModeVignette",
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