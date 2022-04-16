NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Blinding Freighters 2.8.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.84",
["MOD_DESCRIPTION"]			= "This mods removes flashes for fleets existing warp",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\EFFECTS\EXPLOSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WARP_FRT_ATMOS"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Scale",	"0"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WARP_FRT"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Scale",	"0"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WARP_FRG"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Scale",	"0"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WARP_START"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Scale",	"0"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WARP_START_FRGT"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Scale",	"0"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "WARP_ARRIVE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Scale",	"0"}
							}
						}	
					}
				}	
			}
		}
	}	
}