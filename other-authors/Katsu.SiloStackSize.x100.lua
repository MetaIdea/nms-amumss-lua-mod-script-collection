MULTIPLIER = 100

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "Katsu.SiloStackSize.x100.pak",
	["MOD_AUTHOR"]		= "Lowki",
	["MOD_DESCRIPTION"]	= "Makes silo storage 100X its default size",
	["NMS_VERSION"]		= "3.42.0",	
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "U_EXTRACTOR_S"},
                            ["PRECEDING_KEY_WORDS"]	= {"LinkGridData", "GcBaseLinkGridData.xml"},
							["MATH_OPERATION"] 	= "*",
                            ["VALUE_CHANGE_TABLE"] 	= {{"Storage", MULTIPLIER}},
						},
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "U_GASEXTRACTOR"},
                            ["PRECEDING_KEY_WORDS"]	= {"LinkGridData", "GcBaseLinkGridData.xml"},
							["MATH_OPERATION"] 	= "*",
                            ["VALUE_CHANGE_TABLE"] 	= {{"Storage", MULTIPLIER}},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "U_SILO_S"},
                            ["PRECEDING_KEY_WORDS"]	= {"LinkGridData", "GcBaseLinkGridData.xml"},
							["MATH_OPERATION"] 	= "*",
                            ["VALUE_CHANGE_TABLE"] 	= {{"Storage", MULTIPLIER}},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "U_BATTERY_S"},
                            ["PRECEDING_KEY_WORDS"]	= {"LinkGridData", "GcBaseLinkGridData.xml"},
							["MATH_OPERATION"] 	= "*",
                            ["VALUE_CHANGE_TABLE"] 	= {{"Storage", MULTIPLIER}},
						},																	
					},
				},
			},
		},
	},
}