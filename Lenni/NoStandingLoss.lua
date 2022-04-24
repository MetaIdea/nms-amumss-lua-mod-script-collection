NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoStandingLoss.pak",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "3.84",
["MOD_DESCRIPTION"]			= "You don't lose standing anymore",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "KILLED_CIV"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "STD_DEC_EXP"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "STD_DEC_TRA"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "STD_DEC_WAR"},
							["REMOVE"] = "SECTION",
						},
					},
				},
			}
		}
	}	
}