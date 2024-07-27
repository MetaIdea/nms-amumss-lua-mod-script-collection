

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Starship Weapon Stat Tweaks.pak",
  ["MOD_DESCRIPTION"]		= "Attempts to balance Starship weapons",
  ["MOD_AUTHOR"]			= "Rynax15",
  ["NMS_VERSION"]			= "5.02",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN1","StatsType","Ship_Weapons_Guns_BulletsPerShot"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"2"},		-- Original "1"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN1","StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"380"},		-- Original "320"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPROCKETS","StatsType","Ship_Weapons_Guns_BulletsPerShot"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"2"},		-- Original "1"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPROCKETS","StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"20000"},		-- Original "6500"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPLAS1", "StatsType", "Ship_Weapons_Lasers"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"2"},		-- Original "1"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPLAS1", "StatsType", "Ship_Weapons_Lasers_Damage"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"320"},		-- Original "250"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPSHOTGUN","StatsType","Ship_Weapons_Guns_HeatTime"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"2.5"},		-- Original "1.5"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPSHOTGUN", "StatsType", "Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"420"},		-- Original "280"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPPLASMA","StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"900"},		-- Original "600"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPPLASMA","StatsType","Ship_Weapons_Guns_Range"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"2500"},		-- Original "1250"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN_ROBO","StatsType","Ship_Weapons_Guns_BulletsPerShot"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"2"},		-- Original "1"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN_ROBO","StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"300"},		-- Original "220"
							}
						}
					}
				}
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED