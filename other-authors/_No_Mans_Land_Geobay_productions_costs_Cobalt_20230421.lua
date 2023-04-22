ModName = "No Mans Land Geobay production costs Cobalt" 
GameVersion = "4_23"
Description = " Geobays/Garage need 100 to 300 Cobalt now"



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
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						
						{
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_S", "ID", "CASING"},				--Normal Ship Launch Thruster
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	"200"},
								{"ID", "CAVE1"}
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_M", "ID", "CASING"},				--Normal Ship Launch Thruster
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	"200"},
								{"ID", "CAVE1"}
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_L", "ID", "CASING"},				--Normal Ship Launch Thruster
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	"200"},
								{"ID", "CAVE1"}
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_MECH", "ID", "CASING"},				--Normal Ship Launch Thruster
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	"300"},
								{"ID", "CAVE1"}
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_SUB", "ID", "CASING"},				--Normal Ship Launch Thruster
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	"100"},
								{"ID", "CAVE1"}
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_B", "ID", "CASING"},				--Normal Ship Launch Thruster
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	"200"},
								{"ID", "CAVE1"}
							}
						},
					}
				}
			}
		}
	}
}



