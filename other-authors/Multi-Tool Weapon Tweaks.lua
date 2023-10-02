

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Multi-tool Weapon Tweaks.pak",
  ["MOD_DESCRIPTION"]		= "Attempts to balance Multi-Tool weapons",
  ["MOD_AUTHOR"]				= "Rynax15",
  ["NMS_VERSION"]				= "4.41",
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
							["SPECIAL_KEY_WORDS"] = {"ID","BOLT","StatsType","Weapon_Projectile_Damage"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"210"},		-- Original "180"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","RAILGUN"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",		"250"},		-- Original "50"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","RAILGUN","StatsType","Weapon_Laser_Damage"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"2000"},		-- Original "1500"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","RAILGUN","StatsType","Weapon_Laser_ChargeTime"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"1"},		-- Original "3"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","RAILGUN","StatsType","Weapon_Laser_Drain"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"1"},		-- Original "2"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UT_RAIL","StatsType","Weapon_Laser_Damage"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"500"},		-- Original "200"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SHOTGUN","StatsType","Weapon_Projectile_Damage"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"180"},		-- Original "150"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SMG","StatsType","Weapon_Projectile_Damage"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"114"},		-- Original "96"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","CANNON","StatsType","Weapon_Projectile_Damage"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"150"},		-- Original "120"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","CANNON","StatsType","Weapon_ChargedProjectile_ChargeTime"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"3"},		-- Original "1"
							}
						}
					}
				}
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED