NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "__MiningPlus.pak",
["MOD_AUTHOR"]				= "DeathRider",
["NMS_VERSION"]				= "Most Recent Update",
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
							["SPECIAL_KEY_WORDS"]  = {"ID", "UT_MINER"},
								["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_MiningBonus"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  "5.5"} -- Original was 1.5 or 50%. Changed to 5.5 or 450% (4.5x),  every 0.5 is 50%. example: 1 = 0%, 1.5 = 50%, 2 = 100%, 2.5 = 150%.
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","LASER"},
								["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  "999999"} -- How long it takes for youre Mining Beam to overheat. This also makes it so you have max Efficiency 
							}
						}
					},
				}
			},
		}
	},
}