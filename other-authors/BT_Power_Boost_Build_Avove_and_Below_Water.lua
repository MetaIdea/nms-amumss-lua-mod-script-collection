NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "__Power Boost Build Avove and Below Water.pak",
["MOD_AUTHOR"]				= "Biostar Ten - ExhaustBearing on Nexus",
["NMS_VERSION"]				= "3.90",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN", -- Location of the File
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "BuildableAboveWater", "True"},
								{ "BuildableBelowWater", "True"},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "U_SILO_S"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Storage", "719942405"}, -- You have to calcuate this value. Multiple you value you want by 1,439.884809215263. then remove the decimal and cammas from the value you get.
								{"CanPickUp", "True"},
								{"DependsOnEnvironment", "None"},
								{"DependsOnHotspots", "None"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "U_BATTERY_S"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Storage",  "120000"},
								{"CanPickUp", "True"},
								{"DependsOnEnvironment", "None"},
								{"DependsOnHotspots", "None"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "U_SOLAR_S"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Rate",  "450"},
								{"CanPickUp", "True"},
								{"DependsOnEnvironment", "None"},
								{"DependsOnHotspots", "None"},
								{"DependentEffect", "None"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "U_BIOGENERATOR"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Rate",  "-1"},
								{"Storage", "5400"},
								{"CanPickUp", "True"},
								{"DependsOnEnvironment", "None"},
								{"DependsOnHotspots", "None"},
								{"DependentRate", "100"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "U_GENERATOR_S"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Rate",  "450"},
								{"CanPickUp", "True"},
								{"DependsOnEnvironment", "None"},
								{"DependsOnHotspots", "None"},
								{"DependentEffect", "None"}
							}
						
						}
					}
				},
			}
		},
	}
}