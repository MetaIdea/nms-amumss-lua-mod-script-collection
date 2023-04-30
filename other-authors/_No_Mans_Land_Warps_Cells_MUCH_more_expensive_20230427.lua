ModName = "No Mans Land Warp cells much more expensive" --originally authored by Xen0nex for PtsD; modfiied by youngneil1
GameVersion = "4_23"
Description = "Warp cells now based on products only found via exploration (see also additional refiner recipes)"



NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "youngneil1", --based on Xen0nex work
	["NMS_VERSION"]			= GameVersion,
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						
						{
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"NameLower", "HYPERFUEL1_NAME_L", "ID", "AM_HOUSING"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ID",	"CAVECUBE"},	
								{"Amount",	"30"}			
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"NameLower", "HYPERFUEL2_NAME_L", "ID", "STORM_CRYSTAL"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ID",	"CAVECUBE"},	
								{"Amount",	"90"}			
							}
						}
					}
				}
			}
		}
	}
}



