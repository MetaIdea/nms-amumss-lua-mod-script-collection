NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "__PowerPlus.pak",
["MOD_AUTHOR"]				= "DeathRider - Rambo7880 on Nexus",
["NMS_VERSION"]				= "3.67",
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
								{"Rate",  "150"},
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
								{"Rate",  "250"},
								{"CanPickUp", "True"},
								{"DependsOnEnvironment", "None"},
								{"DependsOnHotspots", "None"},
								{"DependentEffect", "None"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","BUILDLANDINGPAD",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanPickUp", "True"},
								{"EditsTerrain", "True"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","S_LANDINGZONE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanPickUp", "True"},
								{"EditsTerrain", "True"}
							}
						},
{
							["SPECIAL_KEY_WORDS"]  = {"ID", "CONTAINER0"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanScale", "True"},
								{"CanPickUp", "True"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "CONTAINER1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanScale", "True"},
								{"CanPickUp", "True"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "CONTAINER2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanScale", "True"},
								{"CanPickUp", "True"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "CONTAINER3"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanScale", "True"},
								{"CanPickUp", "True"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "CONTAINER4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanScale", "True"},
								{"CanPickUp", "True"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "CONTAINER5"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanScale", "True"},
								{"CanPickUp", "True"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "CONTAINER6"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanScale", "True"},
								{"CanPickUp", "True"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "CONTAINER7"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanScale", "True"},
								{"CanPickUp", "True"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "CONTAINER8"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanScale", "True"},
								{"CanPickUp", "True"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "CONTAINER9"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanScale", "True"},
								{"CanPickUp", "True"}
							}
						}
						},
					}
				},
			}
		},
	}