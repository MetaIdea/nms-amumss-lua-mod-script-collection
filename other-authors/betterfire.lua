
NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "FlameThrowerMKII.pak",
  ["MOD_DESCRIPTION"]			= "morefire",
  ["MOD_AUTHOR"]				= "Dad",
  ["NMS_VERSION"]				= "3.7",
  ["MODIFICATIONS"] 			= 
	{
		{	["PAK_FILE_SOURCE"] = "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{	
							["SPECIAL_KEY_WORDS"] = {"ID","FLAME","StatsType","Weapon_Projectile_ClipSize",},
							["SECTION_UP"] = 1,
								["VALUE_CHANGE_TABLE"] =
								{
									{"Bonus","1400",},
								},
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FLAME","StatsType","Weapon_Projectile_Damage",},
							["SECTION_UP"] = 1,
								["VALUE_CHANGE_TABLE"] =
								{
									{"Bonus","75",},
								},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FLAME","StatsType","Weapon_Projectile_Range",},
							["SECTION_UP"] = 1,
								["VALUE_CHANGE_TABLE"] =
								{
									{"Bonus","20",},
								},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FLAME","StatsType","Weapon_Projectile_BulletsPerShot",},
							["SECTION_UP"] = 1,
								["VALUE_CHANGE_TABLE"] =
								{
									{"Bonus","3",},
								},
						},



						-- {	
							-- ["SPECIAL_KEY_WORDS"] = {"StatsType","Weapon_Flame",},
							-- ["SECTION_UP"] = 1,
								-- ["VALUE_CHANGE_TABLE"] =
								-- {
									-- {"Bonus","1400",},
								-- },
						-- },	
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"StatsType","Weapon_Flame",},
							-- ["SECTION_UP"] = 1,
							-- ["LINE_OFFSET"] = 7,
								-- ["VALUE_CHANGE_TABLE"] =
								-- {
									-- {"Bonus","75",},
								-- },
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"StatsType","Weapon_Flame",},
							-- ["SECTION_UP"] = 1,
							-- ["LINE_OFFSET"] = 35,
								-- ["VALUE_CHANGE_TABLE"] =
								-- {
									-- {"Bonus","20",},
								-- },
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"StatsType","Weapon_Flame",},
							-- ["SECTION_UP"] = 1,
							-- ["LINE_OFFSET"] = 42,
								-- ["VALUE_CHANGE_TABLE"] =
								-- {
									-- {"Bonus","3",},
								-- },
						-- },
						
					},
				},
			},
		},
	},
}
							