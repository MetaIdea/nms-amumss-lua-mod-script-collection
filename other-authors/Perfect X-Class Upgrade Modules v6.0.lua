ModAuthor = "Pekerson"
LuaAuthor = "Pekerson"
ModName = "Perfect X-Class Upgrade Modules"
BaseDescription = "Changes the weight of X-Class Upgrade Modules"
GameVersion = ""
ModVersion = "v6.0"
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
								"ValueMax","0.950000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.800000"},
							},
						},
						{	
							COMMENT = [[UP_LASERX Weapon_Laser_HeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_LASERX",
								"ValueMin","1.050000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.550000"},
							},
						},
						{	
							COMMENT = [[UP_LASERX Weapon_Laser_Drain]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_LASERX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.250000"},
							},
						},
						{	
							COMMENT = [[UP_LASERX Weapon_Laser_ReloadTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_LASERX",
								"ValueMax","0.950000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.750000"},
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
								"ValueMin","1.050000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.500000"},
							},
						},
						{	
							COMMENT = [[UP_SCANX Weapon_Scan_Discovery_Creature]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SCANX",
								"ValueMin","10.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","110.000000"},
							},
						},
						{	
							COMMENT = [[UP_SCANX Weapon_Scan_Discovery_Flora]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SCANX",
								"ValueMin","10.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","110.000000"},
							},
						},
						{	
							COMMENT = [[UP_SCANX Weapon_Scan_Discovery_Mineral]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SCANX",
								"ValueMin","10.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","110.000000"},
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
								"ValueMin","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","5.000000"},
							},
						},
						{	
							COMMENT = [[UP_BOLTX Weapon_Projectile_ReloadTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_BOLTX",
								"ValueMax","0.950000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.750000"},
							},
						},
						{	
							COMMENT = [[UP_BOLTX Weapon_Projectile_ClipSize]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_BOLTX",
								"ValueMin","2.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","10.000000"},
							},
						},
						{	
							COMMENT = [[UP_BOLTX Weapon_Projectile_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_BOLTX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.200000"},
							},
						},
						{	
							COMMENT = [[UP_BOLTX Weapon_Projectile_BurstCap]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_BOLTX",
								"ValueMin","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","2.000000"},
							},
						},
						{	
							COMMENT = [[UP_BOLTX Weapon_Projectile_BurstCooldown]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_BOLTX",
								"ValueMin","0.990000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.800000"},
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
								"ValueMin","100.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","450.000000"},
							},
						},
						{	
							COMMENT = [[UP_GRENX Weapon_Grenade_Bounce]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_GRENX",
								"ValueMin","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","4.000000"},
							},
						},
						{	
							COMMENT = [[UP_GRENX Weapon_Grenade_Radius]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_GRENX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.200000"},
							},
						},
						{	
							COMMENT = [[UP_GRENX Weapon_Grenade_Speed]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_GRENX",
								"ValueMin","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","4.000000"},
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
								"ValueMin","100.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","450.000000"},
							},
						},
						{	
							COMMENT = [[UP_TGRENX Weapon_Grenade_Radius]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_TGRENX",
								"ValueMin","1.100000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.600000"},
							},
						},
						{	
							COMMENT = [[UP_TGRENX Weapon_Grenade_Speed]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_TGRENX",
								"ValueMin","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","4.000000"},
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
								"ValueMin","30.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","85.000000"},
							},
						},
						{	
							COMMENT = [[UP_RAILX Weapon_Laser_ChargeTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RAILX",
								"ValueMax","0.950000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.750000"},
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
								"ValueMin","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","6.000000"},
							},
						},
						{	
							COMMENT = [[UP_SHOTX Weapon_Projectile_ReloadTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SHOTX",
								"ValueMax","0.950000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.700000"},
							},
						},
						{	
							COMMENT = [[UP_SHOTX Weapon_Projectile_ClipSize]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SHOTX",
								"ValueMin","8.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","8.000000"},
							},
						},
						{	
							COMMENT = [[UP_SHOTX Weapon_Projectile_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SHOTX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.200000"},
							},
						},
						{	
							COMMENT = [[UP_SHOTX Weapon_Projectile_BurstCap]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SHOTX",
								"ValueMin","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.000000"},
							},
						},
						{	
							COMMENT = [[UP_SHOTX Weapon_Projectile_BurstCooldown]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SHOTX",
								"ValueMax","0.950000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.750000"},
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
								"ValueMin","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","4.000000"},
							},
						},
						{	
							COMMENT = [[UP_SMGX Weapon_Projectile_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SMGX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.200000"},
							},
						},
						{	
							COMMENT = [[UP_SMGX Weapon_Projectile_ReloadTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SMGX",
								"ValueMax","0.990000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.850000"},
							},
						},
						{	
							COMMENT = [[UP_SMGX Weapon_Projectile_ClipSize]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SMGX",
								"ValueMin","12.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","12.000000"},
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
								"ValueMin","5.000000",
								"ValueMax","18.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","18.000000"},
								{"ValueMax","18.000000"},
							},
						},
						{	
							COMMENT = [[UP_CANNX Weapon_Projectile_MaximumCharge]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_CANNX",
								"ValueMin","1.000000",
								"ValueMax","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.000000"},
								{"ValueMax","1.000000"},
							},
						},
						{	
							COMMENT = [[UP_CANNX Weapon_ChargedProjectile_ExtraSpeed]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_CANNX",
								"ValueMin","5.000000",
								"ValueMax","25.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","25.000000"},
								{"ValueMax","25.000000"},
							},
						},
						{	
							COMMENT = [[UP_CANNX Weapon_ChargedProjectile_ChargeTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_CANNX",
								"ValueMin","0.500000",
								"ValueMax","0.950000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.500000"},
								{"ValueMax","0.500000"},
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
								"ValueMin","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","4.000000"},
							},
						},
						{	
							COMMENT = [[UP_SENGUN Weapon_Projectile_ReloadTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SENGUN",
								"ValueMax","0.990000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.850000"},
							},
						},
						{	
							COMMENT = [[UP_SENGUN Weapon_Projectile_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SENGUN",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.200000"},
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
								"ValueMin","0.050000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.100000"},
							},
						},
						{	
							COMMENT = [[UP_ENGYX Suit_Energy_Regen]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_ENGYX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.750000"},
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
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.100000"},
							},
						},
						{	
							COMMENT = [[UP_HAZX Suit_Protection_ColdDrain]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HAZX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.100000"},
							},
						},
						{	
							COMMENT = [[UP_HAZX Suit_Protection_RadDrain]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HAZX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.100000"},
							},
						},
						{	
							COMMENT = [[UP_HAZX Suit_Protection_ToxDrain]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HAZX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.100000"},
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
								"ValueMin","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","2.400000"},
							},
						},
						{	
							COMMENT = [[UP_JETX Suit_Stamina_Strength]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_JETX",
								"ValueMin","0.100000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.600000"},
							},
						},
						{	
							COMMENT = [[UP_JETX Suit_Stamina_Recovery]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_JETX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.600000"},
							},
						},
						{	
							COMMENT = [[UP_JETX Suit_Jetpack_Drain]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_JETX",
								"ValueMax","0.900000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.700000"},
							},
						},
						{	
							COMMENT = [[UP_JETX Suit_Jetpack_Ignition]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_JETX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.200000"},
							},
						},
						{	
							COMMENT = [[UP_JETX Suit_Jetpack_Refill]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_JETX",
								"ValueMin","1.050000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.400000"},
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
								"ValueMin","0.100000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.350000"},
							},
						},
						{	
							COMMENT = [[UP_SHLDX Suit_Armour_Health]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SHLDX",
								"ValueMin","20.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","20.000000"},
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
								"ValueMin","0.100000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.350000"},
							},
						},
						{	
							COMMENT = [[UP_SNSUIT Suit_Armour_Health]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SNSUIT",
								"ValueMin","20.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","20.000000"},
							},
						},
						{	
							COMMENT = [[UP_SNSUIT Suit_Energy]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SNSUIT",
								"ValueMin","0.050000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.100000"},
							},
						},
						{	
							COMMENT = [[UP_SNSUIT Suit_Energy_Regen]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SNSUIT",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.750000"},
							},
						},
						{	
							COMMENT = [[UP_SNSUIT Suit_Jetpack_Drain]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SNSUIT",
								"ValueMax","0.950000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.700000"},
							},
						},
						{	
							COMMENT = [[UP_SNSUIT Suit_Stamina_Strength]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SNSUIT",
								"ValueMin","0.100000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.600000"},
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
								"ValueMin","0.100000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.350000"},
							},
						},
						{	
							COMMENT = [[UP_RBSUIT Suit_Armour_Health]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RBSUIT",
								"ValueMin","20.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","20.000000"},
							},
						},
						{	
							COMMENT = [[UP_RBSUIT Suit_Energy]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RBSUIT",
								"ValueMin","0.050000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.100000"},
							},
						},
						{	
							COMMENT = [[UP_RBSUIT Suit_Energy_Regen]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RBSUIT",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.750000"},
							},
						},
						{	
							COMMENT = [[UP_RBSUIT Suit_Jetpack_Drain]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RBSUIT",
								"ValueMax","0.950000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.700000"},
							},
						},
						{	
							COMMENT = [[UP_RBSUIT Suit_Stamina_Strength]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RBSUIT",
								"ValueMin","0.100000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.600000"},
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
								"ValueMin","180.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","240.000000"},
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
								"ValueMin","280.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","360.000000"},
							},
						},
						{	
							COMMENT = [[UP_RAD3 Suit_DamageReduce_Radiation]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_RAD3",
								"ValueMax","0.900000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.800000"},
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
								"ValueMin","280.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","360.000000"},
							},
						},
						{	
							COMMENT = [[UP_TOX3 Suit_DamageReduce_Toxic]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_TOX3",
								"ValueMax","0.900000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.800000"},
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
								"ValueMin","280.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","360.000000"},
							},
						},
						{	
							COMMENT = [[UP_COLD3 Suit_DamageReduce_Cold]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_COLD3",
								"ValueMax","0.900000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.800000"},
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
								"ValueMin","280.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","360.000000"},
							},
						},
						{	
							COMMENT = [[UP_HOT3 Suit_DamageReduce_Cold]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HOT3",
								"ValueMax","0.900000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.800000"},
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
								"ValueMax","0.950000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.750000"},
							},
						},
						{	
							COMMENT = [[UP_PULSEX Ship_Boost]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_PULSEX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.300000"},
							},
						},
						{	
							COMMENT = [[UP_PULSEX Ship_BoostManeuverability]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_PULSEX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.200000"},
							},
						},
						{	
							COMMENT = [[UP_PULSEX Ship_Maneuverability]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_PULSEX",
								"ValueMin","1.006500",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.006500"},
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
								"ValueMax","0.950000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.750000"},
							},
						},
						{	
							COMMENT = [[UP_LAUNX Ship_Boost]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_LAUNX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.100000"},
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
								"ValueMin","50.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","320.000000"},
							},
						},
						{	
							COMMENT = [[UP_HYPX Ship_Hyperdrive_JumpsPerCell]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HYPX",
								"ValueMax","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","1.000000"},
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
								"ValueMin","0.050000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.250000"},
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
								"ValueMin","8.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","32.000000"},
							},
						},
						{	
							COMMENT = [[UP_SGUNX Ship_Weapons_Guns_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SGUNX",
								"ValueMin","1.001000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.026000"},
							},
						},
						{	
							COMMENT = [[UP_SGUNX Ship_Weapons_Guns_HeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SGUNX",
								"ValueMin","1.001000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.035000"},
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
								"ValueMin","1.100000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","2.000000"},
							},
						},
						{	
							COMMENT = [[UP_SLASRX Ship_Weapons_Lasers_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SLASRX",
								"ValueMin","30.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","80.000000"},
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
								"ValueMin","2.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","8.000000"},
							},
						},
						{	
							COMMENT = [[UP_SSHOTX Ship_Weapons_Guns_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SSHOTX",
								"ValueMin","1.050000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.100000"},
							},
						},
						{	
							COMMENT = [[UP_SSHOTX Ship_Weapons_Guns_HeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SSHOTX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.100000"},
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
								"ValueMin","2.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","14.000000"},
							},
						},
						{	
							COMMENT = [[UP_SMINIX Ship_Weapons_Guns_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SMINIX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.150000"},
							},
						},
						{	
							COMMENT = [[UP_SMINIX Ship_Weapons_Guns_HeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SMINIX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.130000"},
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
								"ValueMin","2.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","14.000000"},
							},
						},
						{	
							COMMENT = [[UP_SBLOBX Ship_Weapons_Guns_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SBLOBX",
								"ValueMin","1.010000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.200000"},
							},
						},
						{	
							COMMENT = [[UP_SBLOBX Ship_Weapons_Guns_HeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SBLOBX",
								"ValueMin","1.100000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.400000"},
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
								"ValueMin","30.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","40.000000"},
							},
						},
						{	
							COMMENT = [[UP_EXGUN4 Vehicle_GunHeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXGUN4",
								"ValueMax","0.850000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.800000"},
							},
						},
						{	
							COMMENT = [[UP_EXGUN4 Vehicle_GunRate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXGUN4",
								"ValueMax","0.930000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.900000"},
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
								"ValueMin","30.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","40.000000"},
							},
						},
						{	
							COMMENT = [[UP_EXLAS4 Vehicle_LaserHeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXLAS4",
								"ValueMax","0.850000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.800000"},
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
								"ValueMin","0.550000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.700000"},
							},
						},
						{	
							COMMENT = [[UP_BOOST4 Vehicle_BoostTanks]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_BOOST4",
								"ValueMin","0.500000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.600000"},
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
								"ValueMax","0.850000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.800000"},
							},
						},
						{	
							COMMENT = [[UP_EXENG4 Vehicle_EngineTopSpeed]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXENG4",
								"ValueMin","1.100000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.150000"},
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
								"ValueMax","0.850000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.700000"},
							},
						},
						{	
							COMMENT = [[UP_EXSUB4 Vehicle_EngineTopSpeed]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXSUB4",
								"ValueMin","1.075000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.075000"},
							},
						},
						{	
							COMMENT = [[UP_EXSUB4 Vehicle_SubBoostSpeed]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_EXSUB4",
								"ValueMin","0.250000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.300000"},
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
								"ValueMin","30.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","40.000000"},
							},
						},
						{	
							COMMENT = [[UP_SUGUN4 Vehicle_GunRate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_SUGUN4",
								"ValueMax","0.930000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.900000"},
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
								"ValueMin","30.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","40.000000"},
							},
						},
						{	
							COMMENT = [[UP_MCLAS4 Vehicle_LaserHeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_MCLAS4",
								"ValueMax","0.850000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.800000"},
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
								"ValueMin","30.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","40.000000"},
							},
						},
						{	
							COMMENT = [[UP_MCGUN4 Vehicle_GunHeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_MCGUN4",
								"ValueMax","0.850000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.800000"},
							},
						},
						{	
							COMMENT = [[UP_MCGUN4 Vehicle_GunRate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_MCGUN4",
								"ValueMax","0.930000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.900000"},
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
								"ValueMax","0.850000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.800000"},
							},
						},
						{	
							COMMENT = [[UP_MCENG4 Vehicle_BoostTanks]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_MCENG4",
								"ValueMin","0.250000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.300000"},
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
								"ValueMax","0.800000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.800000"},
							},
						},
						{	
							COMMENT = [[UA_PULSE4 Ship_Boost]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_PULSE4",
								"ValueMin","1.100000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.250000"},
							},
						},
						{	
							COMMENT = [[UA_PULSE4 Ship_BoostManeuverability]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_PULSE4",
								"ValueMin","1.050000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.180000"},
							},
						},
						{	
							COMMENT = [[UA_PULSE4 Ship_Maneuverability]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_PULSE4",
								"ValueMin","1.006500",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.006500"},
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
								"ValueMax","0.800000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","0.800000"},
							},
						},
						{	
							COMMENT = [[UA_LAUN4 Ship_Launcher_AutoCharge]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_LAUN4",
								"ValueMin","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.000000"},
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
								"ValueMin","220.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","265.000000"},
							},
						},
						{	
							COMMENT = [[UA_HYP4 Ship_Hyperdrive_JumpsPerCell]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_HYP4",
								"ValueMin","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.000000"},
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
								"ValueMin","0.200000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.200000"},
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
								"ValueMin","20.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","28.000000"},
							},
						},
						{	
							COMMENT = [[UA_SGUN4 Ship_Weapons_Guns_Rate]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_SGUN4",
								"ValueMin","1.021000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.021000"},
							},
						},
						{	
							COMMENT = [[UA_SGUN4 Ship_Weapons_Guns_HeatTime]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_SGUN4",
								"ValueMin","1.030000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.030000"},
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
								"ValueMin","1.750000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.950000"},
							},
						},
						{	
							COMMENT = [[UA_SLASR4 Ship_Weapons_Lasers_Damage]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_SLASR4",
								"ValueMin","60.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","70.000000"},
							},
						},
						{	
							COMMENT = [[UA_SLASR4 Ship_Weapons_ShieldLeech]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_SLASR4",
								"ValueMin","0.200000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.300000"},
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
								"ValueMin","200.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","250.000000"},
							},
						},
						{	
							COMMENT = [[UP_FRHYP4 Freighter_Hyperdrive_JumpsPerCell]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRHYP4",
								"ValueMin","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.000000"},
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
								"ValueMin","1.150000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.150000"},
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
								"ValueMin","0.850000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","0.800000"},
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
								"ValueMin","1.150000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.150000"},
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
								"ValueMin","1.150000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.150000"},
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
								"ValueMin","1.150000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.150000"},
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
								"ValueMin","1.150000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.150000"},
							},
						},



						
					},
				},
			},
		}
	}
}