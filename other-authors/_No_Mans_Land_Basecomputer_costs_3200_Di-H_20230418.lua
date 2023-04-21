ModName = "No Mans Land BAse Compuer costs a lot of Di-Hydrogen" -- by youngneil1
GameVersion = "4_22"
Description = "Base Computer costs 3200 Di-Hydrogen to build now."


NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "youngneil1", 
	["NMS_VERSION"]			= GameVersion,
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"ID", "BASE_FLAG"},				
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ID",	"LAUNCHSUB"},
								{"Amount",	"3200"}
							}
						},
					}
				},
				
			}
		}
	}
}



