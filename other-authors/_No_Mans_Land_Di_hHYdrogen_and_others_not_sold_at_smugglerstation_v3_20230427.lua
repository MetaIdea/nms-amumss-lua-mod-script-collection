ModName = "No Mans Land Di-Hydrogen not sold at Smugglerstation" 
GameVersion = "4_23"
Description = "Smuggler/Pirate/Outlaw stations stop selling Di-Hydrogen (Launchsub), Ionized Cobalt (CAVE2) and Sodium Nitrate (Catalyst). "



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
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\DEFAULTREALITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
									
						{
							--["REPLACE_TYPE"] = "",
							--["MATH_OPERATION"] 		= "",
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"SmugglerStation"},
							["SPECIAL_KEY_WORDS"] = {"Value", "LAUNCHSUB"},				
							["REMOVE"] = "SECTION",
						},
						{
							--["REPLACE_TYPE"] = "",
							--["MATH_OPERATION"] 		= "",
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"SmugglerStation"},
							["SPECIAL_KEY_WORDS"] = {"Value", "CAVE2"},				
							["REMOVE"] = "SECTION",
						},
						{
							--["REPLACE_TYPE"] = "",
							--["MATH_OPERATION"] 		= "",
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"SmugglerStation"},
							["SPECIAL_KEY_WORDS"] = {"Value", "CATALYST2"},				
							["REMOVE"] = "SECTION",
						},
					}
				}
			}
		}
	}
}



