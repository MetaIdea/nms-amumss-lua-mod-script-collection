NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Fractured Mining 3.4.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.51",
["MOD_DESCRIPTION"]			= "This mod improves mining effects",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\EFFECTS\PLAYEREFFECTS.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "TERRAINEDIT",},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Scale",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "TERRAINEDIT",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Scale",	"0.8"},
								{"Speed",	"2"},
								{"AnglularSpeed", "0.75"},			
							}
						},
					},
				}	
			}
		}
	}	
}
