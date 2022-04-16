NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_Flammenwerfer.pak",
["MOD_AUTHOR"]				= "Winder",
["NMS_VERSION"]				= "kek",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FLAME",},
							["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_ClipSize"},
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"3"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FLAME",},
							["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_Dispersion"},
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"3"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FLAME",},
							["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_Range"},
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"25"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FLAME",},
							["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_BulletsPerShot"},
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"4"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FLAME",},
							["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_Recoil"},
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"0.3"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FLAME",},
							["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_MaximumCharge"},
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"3"},
							}
						},
					}
				},
			}
		},
	}	
}