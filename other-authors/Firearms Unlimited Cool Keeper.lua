NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_ShipWeaponsPlus.pak",
["MOD_AUTHOR"]				= "Striker0420",
["NMS_VERSION"]				= "3.88",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN", -- Location of the File
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPROCKETS"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  "999999"} -- makes it so weapons never over heat
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPGUN1"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  "999999"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","UT_SHIPGUN"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  "999999"} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPSHOTGUN"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  "999999"} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPMINIGUN"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  "999999"} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPPLASMA"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  "999999"} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","UT_SHIPBLOB"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  "999999"} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","UT_SHIPBLOB"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  "999999"} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPLAS1"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Lasers_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  "999999"} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","UT_SHIPLAS"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Lasers_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  "999999"} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPLAS_ALIEN"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Lasers_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  "999999"} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
              			{ "UsesAmmo", "False"},
							}
						} --2863 global replacements
					},
				}
			},
		}
	},
}