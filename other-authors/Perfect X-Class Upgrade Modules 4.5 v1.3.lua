ModAuthor = "Pekerson"
LuaAuthor = "Pekerson"
ModName = "Perfect X-Class Upgrade Modules"
BaseDescription = "Changes the weight of X-Class Upgrade Modules"
GameVersion = "4.5"
ModVersion = "v1.3"
--[[Files Modified:METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"]]--

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..GameVersion.." "..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= ModAuthor,
	["LUA_AUTHOR"]		= LuaAuthor,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{	
							COMMENT = [[UP_LASERX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_LASERX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","4"},
							},
						},
						{	
							COMMENT = [[UP_LASERX Weapon_Laser_Mining_Speed]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_LASERX",
								"ValueMax","0.95",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.8"},
							},
						},
						{	
							COMMENT = [[UP_LASERX Weapon_Laser_HeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_LASERX",
								"ValueMin","1.05",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.55"},
							},
						},
						{	
							COMMENT = [[UP_LASERX Weapon_Laser_Drain]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_LASERX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.25"},
							},
						},
						{	
							COMMENT = [[UP_LASERX Weapon_Laser_ReloadTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_LASERX",
								"ValueMax","0.95",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.75"},
							},
						},


						
						{	
							COMMENT = [[UP_SCANX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SCANX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","4"},
							},
						},
						{	
							COMMENT = [[UP_SCANX Weapon_Scan_Radius]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SCANX",
								"ValueMin","1.05",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.5"},
							},
						},
						{	
							COMMENT = [[UP_SCANX Weapon_Scan_Discovery_Creature]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SCANX",
								"ValueMin","10",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","110"},
							},
						},
						{	
							COMMENT = [[UP_SCANX Weapon_Scan_Discovery_Flora]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SCANX",
								"ValueMin","10",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","110"},
							},
						},
						{	
							COMMENT = [[UP_SCANX Weapon_Scan_Discovery_Mineral]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SCANX",
								"ValueMin","10",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","110"},
							},
						},


						
						{	
							COMMENT = [[UP_BOLTX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_BOLTX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","4"},
							},
						},
						{	
							COMMENT = [[UP_BOLTX Weapon_Projectile_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_BOLTX",
								"ValueMin","1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","5"},
							},
						},
						{	
							COMMENT = [[UP_BOLTX Weapon_Projectile_ReloadTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_BOLTX",
								"ValueMax","0.95",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.75"},
							},
						},
						{	
							COMMENT = [[UP_BOLTX Weapon_Projectile_ClipSize]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_BOLTX",
								"ValueMin","2",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","10"},
							},
						},
						{	
							COMMENT = [[UP_BOLTX Weapon_Projectile_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_BOLTX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.2"},
							},
						},
						{	
							COMMENT = [[UP_BOLTX Weapon_Projectile_BurstCap]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_BOLTX",
								"ValueMin","1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","2"},
							},
						},
						{	
							COMMENT = [[UP_BOLTX Weapon_Projectile_BurstCooldown]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_BOLTX",
								"ValueMin","0.99",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.8"},
							},
						},


						
						{	
							COMMENT = [[UP_GRENX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_GRENX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","3"},
							},
						},
						{	
							COMMENT = [[UP_GRENX Weapon_Grenade_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_GRENX",
								"ValueMin","100",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","450"},
							},
						},
						{	
							COMMENT = [[UP_GRENX Weapon_Grenade_Bounce]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_GRENX",
								"ValueMin","1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","4"},
							},
						},
						{	
							COMMENT = [[UP_GRENX Weapon_Grenade_Radius]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_GRENX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.2"},
							},
						},
						{	
							COMMENT = [[UP_GRENX Weapon_Grenade_Speed]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_GRENX",
								"ValueMin","1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","4"},
							},
						},


						
						{	
							COMMENT = [[UP_TGRENX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_TGRENX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_TGRENX Weapon_Grenade_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_TGRENX",
								"ValueMin","100",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","450"},
							},
						},
						{	
							COMMENT = [[UP_TGRENX Weapon_Grenade_Radius]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_TGRENX",
								"ValueMin","1.1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.6"},
							},
						},
						{	
							COMMENT = [[UP_TGRENX Weapon_Grenade_Speed]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_TGRENX",
								"ValueMin","1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","4"},
							},
						},


						
						{	
							COMMENT = [[UP_RAILX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RAILX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_RAILX Weapon_Laser_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RAILX",
								"ValueMin","30",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","85"},
							},
						},
						{	
							COMMENT = [[UP_RAILX Weapon_Laser_ChargeTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RAILX",
								"ValueMax","0.95",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.75"},
							},
						},


						
						{	
							COMMENT = [[UP_SHOTX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SHOTX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","4"},
							},
						},
						{	
							COMMENT = [[UP_SHOTX Weapon_Projectile_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SHOTX",
								"ValueMin","1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","6"},
							},
						},
						{	
							COMMENT = [[UP_SHOTX Weapon_Projectile_ReloadTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SHOTX",
								"ValueMax","0.95",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.7"},
							},
						},
						{	
							COMMENT = [[UP_SHOTX Weapon_Projectile_ClipSize]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SHOTX",
								"ValueMin","8",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","8"},
							},
						},
						{	
							COMMENT = [[UP_SHOTX Weapon_Projectile_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SHOTX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.2"},
							},
						},
						{	
							COMMENT = [[UP_SHOTX Weapon_Projectile_BurstCap]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SHOTX",
								"ValueMin","1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1"},
							},
						},
						{	
							COMMENT = [[UP_SHOTX Weapon_Projectile_BurstCooldown]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SHOTX",
								"ValueMax","0.95",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.75"},
							},
						},


						


						
						{	
							COMMENT = [[UP_SMGX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SMGX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","4"},
							},
						},
						{	
							COMMENT = [[UP_SMGX Weapon_Projectile_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SMGX",
								"ValueMin","1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","4"},
							},
						},
						{	
							COMMENT = [[UP_SMGX Weapon_Projectile_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SMGX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.2"},
							},
						},
						{	
							COMMENT = [[UP_SMGX Weapon_Projectile_ReloadTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SMGX",
								"ValueMax","0.99",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.85"},
							},
						},
						{	
							COMMENT = [[UP_SMGX Weapon_Projectile_ClipSize]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SMGX",
								"ValueMin","12",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","12"},
							},
						},


						
						{	
							COMMENT = [[UP_CANNX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_CANNX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","4"},
							},
						},
						{	
							COMMENT = [[UP_CANNX Weapon_Projectile_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_CANNX",
								"ValueMin","5",
								"ValueMax","15",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","18"},
								{"ValueMax","18"},
							},
						},
						{	
							COMMENT = [[UP_CANNX Weapon_Projectile_MaximumCharge]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_CANNX",
								"ValueMin","1",
								"ValueMax","1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1"},
								{"ValueMax","1"},
							},
						},
						{	
							COMMENT = [[UP_CANNX Weapon_ChargedProjectile_ExtraSpeed]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_CANNX",
								"ValueMin","5",
								"ValueMax","25",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","25"},
								{"ValueMax","25"},
							},
						},
						{	
							COMMENT = [[UP_CANNX Weapon_ChargedProjectile_ChargeTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_CANNX",
								"ValueMin","0.7",
								"ValueMax","0.95",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.5"},
								{"ValueMax","0.5"},
							},
						},


						
						{	
							COMMENT = [[UP_SENGUN NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SENGUN",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","4"},
							},
						},
						{	
							COMMENT = [[UP_SENGUN Weapon_Projectile_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SENGUN",
								"ValueMin","1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","4"},
							},
						},
						{	
							COMMENT = [[UP_SENGUN Weapon_Projectile_ReloadTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SENGUN",
								"ValueMax","0.99",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.85"},
							},
						},
						{	
							COMMENT = [[UP_SENGUN Weapon_Projectile_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SENGUN",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.2"},
							},
						},


						
						{	
							COMMENT = [[UP_ENGYX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_ENGYX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_ENGYX Suit_Energy]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_ENGYX",
								"ValueMin","0.05",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.1"},
							},
						},
						{	
							COMMENT = [[UP_ENGYX Suit_Energy_Regen]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_ENGYX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.75"},
							},
						},


						
						{	
							COMMENT = [[UP_HAZX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HAZX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","4"},
							},
						},
						{	
							COMMENT = [[UP_HAZX Suit_Protection_HeatDrain]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HAZX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.1"},
							},
						},
						{	
							COMMENT = [[UP_HAZX Suit_Protection_ColdDrain]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HAZX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.1"},
							},
						},
						{	
							COMMENT = [[UP_HAZX Suit_Protection_RadDrain]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HAZX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.1"},
							},
						},
						{	
							COMMENT = [[UP_HAZX Suit_Protection_ToxDrain]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HAZX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.1"},
							},
						},


						
						{	
							COMMENT = [[UP_JETX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_JETX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","4"},
							},
						},
						{	
							COMMENT = [[UP_JETX Suit_Jetpack_Tank]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_JETX",
								"ValueMin","1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","2.4"},
							},
						},
						{	
							COMMENT = [[UP_JETX Suit_Stamina_Strength]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_JETX",
								"ValueMin","0.1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.6"},
							},
						},
						{	
							COMMENT = [[UP_JETX Suit_Stamina_Recovery]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_JETX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.6"},
							},
						},
						{	
							COMMENT = [[UP_JETX Suit_Jetpack_Drain]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_JETX",
								"ValueMax","0.9",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.7"},
							},
						},
						{	
							COMMENT = [[UP_JETX Suit_Jetpack_Ignition]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_JETX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.2"},
							},
						},
						{	
							COMMENT = [[UP_JETX Suit_Jetpack_Refill]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_JETX",
								"ValueMin","1.05",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.4"},
							},
						},


						
						{	
							COMMENT = [[UP_SHLDX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SHLDX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","4"},
							},
						},
						{	
							COMMENT = [[UP_SHLDX Suit_Armour_Shield_Strength]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SHLDX",
								"ValueMin","0.1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.35"},
							},
						},
						{	
							COMMENT = [[UP_SHLDX Suit_Armour_Health]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SHLDX",
								"ValueMin","20",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","20"},
							},
						},


						
						{	
							COMMENT = [[UP_SNSUIT NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SNSUIT",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","4"},
							},
						},
						{	
							COMMENT = [[UP_SNSUIT Suit_Armour_Shield_Strength]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SNSUIT",
								"ValueMin","0.1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.35"},
							},
						},
						{	
							COMMENT = [[UP_SNSUIT Suit_Armour_Health]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SNSUIT",
								"ValueMin","20",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","20"},
							},
						},
						{	
							COMMENT = [[UP_SNSUIT Suit_Energy]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SNSUIT",
								"ValueMin","0.05",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.1"},
							},
						},
						{	
							COMMENT = [[UP_SNSUIT Suit_Energy_Regen]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SNSUIT",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.75"},
							},
						},
						{	
							COMMENT = [[UP_SNSUIT Suit_Jetpack_Drain]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SNSUIT",
								"ValueMax","0.95",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.7"},
							},
						},
						{	
							COMMENT = [[UP_SNSUIT Suit_Stamina_Strength]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SNSUIT",
								"ValueMin","0.1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.6"},
							},
						},			


						
						{	
							COMMENT = [[UP_RBSUIT NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RBSUIT",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","4"},
							},
						},
						{	
							COMMENT = [[UP_RBSUIT Suit_Armour_Shield_Strength]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RBSUIT",
								"ValueMin","0.1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.35"},
							},
						},
						{	
							COMMENT = [[UP_RBSUIT Suit_Armour_Health]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RBSUIT",
								"ValueMin","20",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","20"},
							},
						},
						{	
							COMMENT = [[UP_RBSUIT Suit_Energy]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RBSUIT",
								"ValueMin","0.05",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.1"},
							},
						},
						{	
							COMMENT = [[UP_RBSUIT Suit_Energy_Regen]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RBSUIT",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.75"},
							},
						},
						{	
							COMMENT = [[UP_RBSUIT Suit_Jetpack_Drain]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RBSUIT",
								"ValueMax","0.95",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.7"},
							},
						},
						{	
							COMMENT = [[UP_RBSUIT Suit_Stamina_Strength]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RBSUIT",
								"ValueMin","0.1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.6"},
							},
						},


						
						{	
							COMMENT = [[UP_UNW3 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_UNW3",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","1"},
							},
						},
						{	
							COMMENT = [[UP_UNW3 Suit_Underwater]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_UNW3",
								"ValueMin","130",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","180"},
							},
						},


						
						{	
							COMMENT = [[UP_RAD3 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RAD3",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_RAD3 Suit_Protection_Radiation]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RAD3",
								"ValueMin","280",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","360"},
							},
						},
						{	
							COMMENT = [[UP_RAD3 Suit_DamageReduce_Radiation]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RAD3",
								"ValueMax","0.9",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.8"},
							},
						},


						
						{	
							COMMENT = [[UP_TOX3 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_TOX3",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_TOX3 Suit_Protection_Toxic]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_TOX3",
								"ValueMin","280",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","360"},
							},
						},
						{	
							COMMENT = [[UP_TOX3 Suit_DamageReduce_Toxic]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_TOX3",
								"ValueMax","0.9",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.8"},
							},
						},


						
						{	
							COMMENT = [[UP_COLD3 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_COLD3",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_COLD3 Suit_Protection_Cold]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_COLD3",
								"ValueMin","280",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","360"},
							},
						},
						{	
							COMMENT = [[UP_COLD3 Suit_DamageReduce_Cold]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_COLD3",
								"ValueMax","0.9",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.8"},
							},
						},


						
						{	
							COMMENT = [[UP_HOT3 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HOT3",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_HOT3 Suit_Protection_Cold]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HOT3",
								"ValueMin","280",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","360"},
							},
						},
						{	
							COMMENT = [[UP_HOT3 Suit_DamageReduce_Cold]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HOT3",
								"ValueMax","0.9",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.8"},
							},
						},


						
						{	
							COMMENT = [[UP_PULSEX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_PULSEX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","3"},
							},
						},
						{	
							COMMENT = [[UP_PULSEX Ship_PulseDrive_MiniJumpFuelSpending]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_PULSEX",
								"ValueMax","0.95",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.75"},
							},
						},
						{	
							COMMENT = [[UP_PULSEX Ship_Boost]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_PULSEX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.3"},
							},
						},
						{	
							COMMENT = [[UP_PULSEX Ship_BoostManeuverability]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_PULSEX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.2"},
							},
						},
						{	
							COMMENT = [[UP_PULSEX Ship_Maneuverability]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_PULSEX",
								"ValueMin","1.0065",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.0065"},
							},
						},


						
						{	
							COMMENT = [[UP_LAUNX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_LAUNX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_LAUNX Ship_Launcher_TakeOffCost]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_LAUNX",
								"ValueMax","0.95",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.75"},
							},
						},
						{	
							COMMENT = [[UP_LAUNX Ship_Boost]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_LAUNX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.1"},
							},
						},


						
						{	
							COMMENT = [[UP_HYPX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HYPX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_HYPX Ship_Hyperdrive_JumpDistance]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HYPX",
								"ValueMin","50",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","320"},
							},
						},
						{	
							COMMENT = [[UP_HYPX Ship_Hyperdrive_JumpsPerCell]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HYPX",
								"ValueMax","1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","1"},
							},
						},


						
						{	
							COMMENT = [[UP_S_SHLX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_S_SHLX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","1"},
							},
						},
						{	
							COMMENT = [[UP_S_SHLX Ship_Armour_Shield_Strength]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_S_SHLX",
								"ValueMin","0.05",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.25"},
							},
						},


						
						{	
							COMMENT = [[UP_SGUNX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SGUNX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","3"},
							},
						},
						{	
							COMMENT = [[UP_SGUNX Ship_Weapons_Guns_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SGUNX",
								"ValueMin","8",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","32"},
							},
						},
						{	
							COMMENT = [[UP_SGUNX Ship_Weapons_Guns_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SGUNX",
								"ValueMin","1.001",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.026"},
							},
						},
						{	
							COMMENT = [[UP_SGUNX Ship_Weapons_Guns_HeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SGUNX",
								"ValueMin","1.001",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.035"},
							},
						},


						
						{	
							COMMENT = [[UP_SLASRX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SLASRX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_SLASRX Ship_Weapons_Lasers_HeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SLASRX",
								"ValueMin","1.1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","2"},
							},
						},
						{	
							COMMENT = [[UP_SLASRX Ship_Weapons_Lasers_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SLASRX",
								"ValueMin","30",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","80"},
							},
						},


						
						{	
							COMMENT = [[UP_SSHOTX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SSHOTX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","3"},
							},
						},
						{	
							COMMENT = [[UP_SSHOTX Ship_Weapons_Guns_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SSHOTX",
								"ValueMin","2",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","8"},
							},
						},
						{	
							COMMENT = [[UP_SSHOTX Ship_Weapons_Guns_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SSHOTX",
								"ValueMin","1.05",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.1"},
							},
						},
						{	
							COMMENT = [[UP_SSHOTX Ship_Weapons_Guns_HeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SSHOTX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.1"},
							},
						},


						
						{	
							COMMENT = [[UP_SMINIX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SMINIX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","3"},
							},
						},
						{	
							COMMENT = [[UP_SMINIX Ship_Weapons_Guns_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SMINIX",
								"ValueMin","2",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","14"},
							},
						},
						{	
							COMMENT = [[UP_SMINIX Ship_Weapons_Guns_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SMINIX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.15"},
							},
						},
						{	
							COMMENT = [[UP_SMINIX Ship_Weapons_Guns_HeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SMINIX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.13"},
							},
						},


						
						{	
							COMMENT = [[UP_SBLOBX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SBLOBX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","3"},
							},
						},
						{	
							COMMENT = [[UP_SBLOBX Ship_Weapons_Guns_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SBLOBX",
								"ValueMin","2",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","14"},
							},
						},
						{	
							COMMENT = [[UP_SBLOBX Ship_Weapons_Guns_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SBLOBX",
								"ValueMin","1.01",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.2"},
							},
						},
						{	
							COMMENT = [[UP_SBLOBX Ship_Weapons_Guns_HeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SBLOBX",
								"ValueMin","1.1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.4"},
							},
						},


						
						{	
							COMMENT = [[UP_EXGUN4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXGUN4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","3"},
							},
						},
						{	
							COMMENT = [[UP_EXGUN4 Vehicle_GunDamage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXGUN4",
								"ValueMin","30",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","40"},
							},
						},
						{	
							COMMENT = [[UP_EXGUN4 Vehicle_GunHeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXGUN4",
								"ValueMax","0.85",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.8"},
							},
						},
						{	
							COMMENT = [[UP_EXGUN4 Vehicle_GunRate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXGUN4",
								"ValueMax","0.93",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.9"},
							},
						},


						
						{	
							COMMENT = [[UP_EXLAS4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXLAS4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_EXLAS4 Vehicle_LaserDamage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXLAS4",
								"ValueMin","30",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","40"},
							},
						},
						{	
							COMMENT = [[UP_EXLAS4 Vehicle_LaserHeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXLAS4",
								"ValueMax","0.85",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.8"},
							},
						},


						
						{	
							COMMENT = [[UP_BOOST4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_BOOST4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_BOOST4 Vehicle_BoostSpeed]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_BOOST4",
								"ValueMin","0.55",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.7"},
							},
						},
						{	
							COMMENT = [[UP_BOOST4 Vehicle_BoostTanks]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_BOOST4",
								"ValueMin","0.5",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.6"},
							},
						},


						
						{	
							COMMENT = [[UP_EXENG4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXENG4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_EXENG4 Vehicle_EngineFuelUse]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXENG4",
								"ValueMax","0.85",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.8"},
							},
						},
						{	
							COMMENT = [[UP_EXENG4 Vehicle_EngineTopSpeed]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXENG4",
								"ValueMin","1.1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.15"},
							},
						},


						
						{	
							COMMENT = [[UP_EXSUB4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXSUB4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","3"},
							},
						},
						{	
							COMMENT = [[UP_EXSUB4 Vehicle_EngineFuelUse]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXSUB4",
								"ValueMax","0.85",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.7"},
							},
						},
						{	
							COMMENT = [[UP_EXSUB4 Vehicle_EngineTopSpeed]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXSUB4",
								"ValueMin","1.1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.1"},
							},
						},
						{	
							COMMENT = [[UP_EXSUB4 Vehicle_SubBoostSpeed]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXSUB4",
								"ValueMin","0.25",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.3"},
							},
						},


						
						{	
							COMMENT = [[UP_SUGUN4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SUGUN4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_SUGUN4 Vehicle_GunDamage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SUGUN4",
								"ValueMin","30",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","40"},
							},
						},
						{	
							COMMENT = [[UP_SUGUN4 Vehicle_GunRate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SUGUN4",
								"ValueMax","0.93",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.9"},
							},
						},


						
						{	
							COMMENT = [[UP_MCLAS4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_MCLAS4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_MCLAS4 Vehicle_LaserDamage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_MCLAS4",
								"ValueMin","30",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","40"},
							},
						},
						{	
							COMMENT = [[UP_MCLAS4 Vehicle_LaserHeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_MCLAS4",
								"ValueMax","0.85",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.8"},
							},
						},


						
						{	
							COMMENT = [[UP_MCGUN4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_MCGUN4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","3"},
							},
						},
						{	
							COMMENT = [[UP_MCGUN4 Vehicle_GunDamage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_MCGUN4",
								"ValueMin","30",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","40"},
							},
						},
						{	
							COMMENT = [[UP_MCGUN4 Vehicle_GunHeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_MCGUN4",
								"ValueMax","0.85",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.8"},
							},
						},
						{	
							COMMENT = [[UP_MCGUN4 Vehicle_GunRate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_MCGUN4",
								"ValueMax","0.93",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.9"},
							},
						},


						
						{	
							COMMENT = [[UP_MCENG4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_MCENG4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_MCENG4 Vehicle_EngineFuelUse]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_MCENG4",
								"ValueMax","0.85",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.8"},
							},
						},
						{	
							COMMENT = [[UP_MCENG4 Vehicle_BoostTanks]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_MCENG4",
								"ValueMin","0.25",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.3"},
							},
						},


						
						{	
							COMMENT = [[UA_PULSE4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_PULSE4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","3"},
							},
						},
						{	
							COMMENT = [[UA_PULSE4 Ship_PulseDrive_MiniJumpFuelSpending]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_PULSE4",
								"ValueMax","0.8",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.8"},
							},
						},
						{	
							COMMENT = [[UA_PULSE4 Ship_Boost]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_PULSE4",
								"ValueMin","1.1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.25"},
							},
						},
						{	
							COMMENT = [[UA_PULSE4 Ship_BoostManeuverability]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_PULSE4",
								"ValueMin","1.05",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.18"},
							},
						},
						{	
							COMMENT = [[UA_PULSE4 Ship_Maneuverability]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_PULSE4",
								"ValueMin","1.0065",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.0065"},
							},
						},


						
						{	
							COMMENT = [[UA_LAUN4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_LAUN4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UA_LAUN4 Ship_Launcher_TakeOffCost]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_LAUN4",
								"ValueMax","0.8",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.8"},
							},
						},
						{	
							COMMENT = [[UA_LAUN4 Ship_Launcher_AutoCharge]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_LAUN4",
								"ValueMin","1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1"},
							},
						},


						
						{	
							COMMENT = [[UA_HYP4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_HYP4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UA_HYP4 Ship_Hyperdrive_JumpDistance]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_HYP4",
								"ValueMin","220",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","265"},
							},
						},
						{	
							COMMENT = [[UA_HYP4 Ship_Hyperdrive_JumpsPerCell]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_HYP4",
								"ValueMin","1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1"},
							},
						},


						
						{	
							COMMENT = [[UA_S_SHL4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_S_SHL4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","1"},
							},
						},
						{	
							COMMENT = [[UA_S_SHL4 Ship_Armour_Shield_Strength]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_S_SHL4",
								"ValueMin","0.2",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.2"},
							},
						},


						
						{	
							COMMENT = [[UA_SGUN4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_SGUN4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","3"},
							},
						},
						{	
							COMMENT = [[UA_SGUN4 Ship_Weapons_Guns_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_SGUN4",
								"ValueMin","20",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","28"},
							},
						},
						{	
							COMMENT = [[UA_SGUN4 Ship_Weapons_Guns_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_SGUN4",
								"ValueMin","1.021",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.021"},
							},
						},
						{	
							COMMENT = [[UA_SGUN4 Ship_Weapons_Guns_HeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_SGUN4",
								"ValueMin","1.03",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.03"},
							},
						},


						
						{	
							COMMENT = [[UA_SLASR4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_SLASR4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UA_SLASR4 Ship_Weapons_Lasers_HeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_SLASR4",
								"ValueMin","1.75",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.95"},
							},
						},
						{	
							COMMENT = [[UA_SLASR4 Ship_Weapons_Lasers_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_SLASR4",
								"ValueMin","60",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","70"},
							},
						},
						{	
							COMMENT = [[UA_SLASR4 Ship_Weapons_ShieldLeech]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_SLASR4",
								"ValueMin","0.2",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.3"},
							},
						},


						
						{	
							COMMENT = [[UP_FRHYP4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRHYP4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_FRHYP4 Freighter_Hyperdrive_JumpDistance]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRHYP4",
								"ValueMin","200",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","250"},
							},
						},
						{	
							COMMENT = [[UP_FRHYP4 Freighter_Hyperdrive_JumpsPerCell]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRHYP4",
								"ValueMin","1",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1"},
							},
						},


						
						{	
							COMMENT = [[UP_FRSPE4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRSPE4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","1"},
							},
						},
						{	
							COMMENT = [[UP_FRSPE4 Freighter_Fleet_Speed]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRSPE4",
								"ValueMin","1.15",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.15"},
							},
						},


						
						{	
							COMMENT = [[UP_FRFUE4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRFUE4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","1"},
							},
						},
						{	
							COMMENT = [[UP_FRFUE4 Freighter_Fleet_Fuel]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRFUE4",
								"ValueMin","0.85",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.8"},
							},
						},


						
						{	
							COMMENT = [[UP_FRCOM4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRCOM4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","1"},
							},
						},
						{	
							COMMENT = [[UP_FRCOM4 Freighter_Fleet_Combat]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRCOM4",
								"ValueMin","1.15",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.15"},
							},
						},


						
						{	
							COMMENT = [[UP_FRTRA4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRTRA4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","1"},
							},
						},
						{	
							COMMENT = [[UP_FRTRA4 Freighter_Fleet_Trade]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRTRA4",
								"ValueMin","1.15",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.15"},
							},
						},


						
						{	
							COMMENT = [[UP_FREXP4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FREXP4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","1"},
							},
						},
						{	
							COMMENT = [[UP_FREXP4 Freighter_Fleet_Trade]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FREXP4",
								"ValueMin","1.15",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.15"},
							},
						},


						
						{	
							COMMENT = [[UP_FRMIN4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRMIN4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","1"},
							},
						},
						{	
							COMMENT = [[UP_FRMIN4 Freighter_Fleet_Trade]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRMIN4",
								"ValueMin","1.15",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.15"},
							},
						},



						
					},
				},
			},
		}
	}
}