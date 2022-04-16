NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Base Building Tree Fix 1.7.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.53",
["MOD_DESCRIPTION"]			= "This mod removes useless building tree items",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable", "C_SDOOR",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable", "M_SDOOR",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable", "W_SDOOR",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable", "C_GDOOR_D",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable", "M_GDOOR_D",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable", "W_GDOOR_D",},
							["REMOVE"] 	= "SECTION",
						},
					},
				}	
			}
		}
	}	
}