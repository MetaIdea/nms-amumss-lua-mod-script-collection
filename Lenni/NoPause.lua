NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoPause.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "3.43",
["MOD_DESCRIPTION"]			= "Game doesn't pause",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"]	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["VALUE_CHANGE_TABLE"] =
							{
								{"AllowPause", "False"},
							},
						},
					},
				},
			}
		}
	}	
}