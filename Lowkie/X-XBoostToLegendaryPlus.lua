NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "X-XBoostToLegendaryPlus.pak", 
["MOD_AUTHOR"]				= "Personal",
["NMS_VERSION"]				= "3.03",
["MOD_DESCRIPTION"]			= "Converts the Illegal buffs to be better than Legendary, and extend the freighter hyperdrive range",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
                        {
							["SPECIAL_KEY_WORDS"] = {"ID","UP_FRHYP1",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
							    {"ValueMin", "500"},	-- Original "50" 
								{"ValueMax", "1000"} 	-- Original "100"  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_FRHYP2",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
							    {"ValueMin", "1000"},	-- Original "100" 
								{"ValueMax", "1500"} 	-- Original "150"  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_FRHYP3",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
							    {"ValueMin", "1500"},	-- Original "150" 
								{"ValueMax", "2000"} 	-- Original "200"    
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_FRHYP4",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
							    {"ValueMin", "2000"},	-- Original "200" 
								{"ValueMax", "2500"} 	-- Original "250"  
							}
						},                    
						{--Global Weighting
							["SPECIAL_KEY_WORDS"] = {"Quality","Illegal"},
                            ["REPLACE_TYPE"] 	= "RAW",
							["VALUE_CHANGE_TABLE"] = 
							{
								{ "MaxIsRare", "MaxIsSuperRare"},
								{ "MinIsRare", "MinIsSuperRare"},
                                { "MinIsUncommon", "MinIsSuperRare"},
								{ "MaxIsUncommon", "MaxIsSuperRare"},
							},
						},
						{--Suit ENERGY
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_ENGYX"},							
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"NumStatsMin", 	"2"},		--Default 1
								{"AlwaysChoose",	"True"},	--Default False
							},
						},		
						{	--Energy
							 ["SPECIAL_KEY_WORDS"]		= {"ID", "UP_ENGYX", "StatsType","Suit_Energy"},
							 ["SECTION_UP"] = 1,
							 ["VALUE_CHANGE_TABLE"] 	= 
							 {	
								 {"ValueMin",	"3.5"}, --Default 0.05
								 {"ValueMax",	"3.55"} --Default 1.1
							 },
						},
						{	--Regen
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_ENGYX", "StatsType", "Suit_Energy_Regen"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"4.0"}, --Default 1
								{"ValueMax",	"4.1"}  --Default 1.75
							},
						},
						{--SUIT HAZARD PROTECTION All protections are the same value
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_HAZX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose", "True"}, --Default False
								{"NumStatsMin",	 "4"}, --Default 4
                                {"ValueMin",	"1.25"}, --Default 1.0->2.0
								{"ValueMax",	"1.26"}, --Default 1.1->2.1
							},
						},		
						-- {	--HeatDrain
							-- ["SPECIAL_KEY_WORDS"]	= {"ID", "UP_HAZX", "StatsType","Suit_Protection_HeatDrain"},
							-- ["SECTION_UP"] = 1,
							-- ["VALUE_CHANGE_TABLE"]	= 
							-- {	
								-- {"ValueMin",	"1.4"}, --Default 1.0->2.0
								-- {"ValueMax",	"1.5"}, --Default 1.1->2.1
								-- --3-3.1 = 300 target = 100
							-- },
						-- },		
						-- {	--ColdDrain
							-- ["SPECIAL_KEY_WORDS"]	= {"ID", "UP_HAZX", "StatsType","Suit_Protection_ColdDrain"},
							-- ["SECTION_UP"] = 1,
							-- ["VALUE_CHANGE_TABLE"]	= 
							-- {	
								-- {"ValueMin",	"1.4"}, --Default 1.0->2.0
								-- {"ValueMax",	"1.5"}, --Default 1.1->2.1
								-- --3-3.1 = 300 target = 100
							-- },
						-- },		
						-- {	--RadDrain
							-- ["SPECIAL_KEY_WORDS"]	= {"ID", "UP_HAZX", "StatsType","Suit_Protection_RadDrain"},
							-- ["SECTION_UP"] = 1,
							-- ["VALUE_CHANGE_TABLE"]	= 
							-- {	
								-- {"ValueMin",	"1.4"}, --Default 1.0->2.0
								-- {"ValueMax",	"1.5"}, --Default 1.1->2.1
								-- --3-3.1 = 300 target = 100
							-- },
						-- },		
						-- {	--ToxDrain
							-- ["SPECIAL_KEY_WORDS"]	= {"ID", "UP_HAZX", "StatsType","Suit_Protection_ToxDrain"},
							-- ["SECTION_UP"] = 1,
							-- ["VALUE_CHANGE_TABLE"]	= 
							-- {	
								-- {"ValueMin",	"1.4"}, --Default 1.0->2.0
								-- {"ValueMax",	"1.5"}, --Default 1.1->2.1
								-- --3-3.1 = 300 target = 100
							-- },
						-- },
						{--BOLT CASTER
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_BOLTX"},							
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"},  --Default False
								{"NumStatsMin", 	"6"},		--Default 1
								{"NumStatsMax", 	"6"},		--Default 1
							},
						},							
						{	--Damage
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_BOLTX", "StatsType","Weapon_Projectile_Damage"},
							["SECTION_UP"] = 1,							
                            ["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"12"}, --Default 1
								{"ValueMax",	"15"}  --Default 5
							},
						},						
						{	--ReloadTime
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_BOLTX", "StatsType","Weapon_Projectile_ReloadTime"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	".3"}, --Default .75
								{"ValueMax",	".35"}  --Default .95
							},
						},
						{	--ClipSize
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_BOLTX", "StatsType","Weapon_Projectile_ClipSize"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"160"}, --Default 2
								{"ValueMax",	"160"}  --Default 10
							},
						},
						{	--Fire Rate
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_BOLTX", "StatsType","Weapon_Projectile_Rate"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"2"}, --Default 1
								{"ValueMax",	"2.2"}  --Default 1.2
							},
						},
						{	--BurstCap
							 ["SPECIAL_KEY_WORDS"]	= {"ID", "UP_BOLTX", "StatsType","Weapon_Projectile_BurstCap"},
                             ["SECTION_UP"]         = 1,
                             ["VALUE_CHANGE_TABLE"] 	= 
							 {	
								 {"ValueMin",	"3"}, --Default 1
								 {"ValueMax",	"4"}  --Default 2
							 },
						},
						{	--BurstCooldown
                            ["SPECIAL_KEY_WORDS"]	= {"ID", "UP_BOLTX", "StatsType","Weapon_Projectile_BurstCooldown"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	".5"}, --Default 1
								{"ValueMax",	".75"}  --Default 2
							},
						},					
						{--MINING LAZER
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_LASERX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"},  --Default False
								{"NumStatsMin", 	"4"},		--Default 1
								{"NumStatsMax", 	"4"},		--Default 3
							},
						},							
						{	--Mining_Speed
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_LASERX", "StatsType","Weapon_Laser_Mining_Speed"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"0.5"}, --Default .8  
								{"ValueMax",	"0.5"} --Default .95
								--0.7-0.75 = 30,30
							},
						},
						{	--HeatTime
							 ["SPECIAL_KEY_WORDS"]	= {"ID", "UP_LASERX", "StatsType","Weapon_Laser_HeatTime"},
							 ["SECTION_UP"]         = 1,
							 ["VALUE_CHANGE_TABLE"] = 
							 {	
								 {"ValueMin",	"1.9"}, --Default 1.5
								 {"ValueMax",	"1.9"}  --Default 1.55
								 --.8-.9 = -17, -17
							 },
						},
						{	--Drain
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_LASERX", "StatsType","Weapon_Laser_Drain"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"1.75"}, --Default 1
								{"ValueMax",	"1.75"}  --Default 1.25
								--efficientcy? .7-.75 = -30,-30 Should not be negative :(
							},
						},
						{	--ReloadTime
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_LASERX", "StatsType","Weapon_Laser_ReloadTime"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"0.25"}, --Default .75
								{"ValueMax",	"0.25"} --Default .95
								--.3-.35 = -66, -67  1.3-1.3 = +30
							},
						},
						{--SUIT SCANNER
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SCANX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"}, --Default False
								{"NumStatsMin", 	"4"},	 --Default 3
								{"NumStatsMax", 	"3"},	 --Default 4
							},
						},						
						{	--Scan_Radius
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SCANX", "StatsType","Weapon_Scan_Radius"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"1.75"},   --Default 1.05
								{"ValueMax",	"1.75"} --Default 1.5
								--2-2.75 = 18,237 target 21  
							},
						},
						{	--Discovery_Fauna
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SCANX", "StatsType","Weapon_Scan_Discovery_Creature"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"10"}, --Default 10
								{"ValueMax",	"10"}  --Default 110
								--180-200 = 2411 target 27191
								--280 = 28,000								
							},
						},		
						{	--Discovery_Flora
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SCANX", "StatsType","Weapon_Scan_Discovery_Flora"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"10"}, --Default 10
								{"ValueMax",	"10"}  --Default 110
								--180-200 = 18206 target 26863
								--280 = 28,000
							},
						},		
						{	--Discovery_Mineral
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SCANX", "StatsType","Weapon_Scan_Discovery_Mineral"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"10"}, --Default 10
								{"ValueMax",	"10"}  --Default 110
								--180-200 = 18206 target 26863
								--280 = 28,000
							},
						},
						{--GRENADES 1	
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_GRENX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"}, --Default False
								{"NumStatsMin", 	"4"},	 --Default 1
								{"NumStatsMax", 	"4"},	 --Default 3
							},
						},						
						{	--Grenade_Damage
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_GRENX", "StatsType","Weapon_Grenade_Damage"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"450"}, --Default 100
								{"ValueMax",	"500"}  --Default 450
							},
						},
						{	--Grenade_Bounce
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_GRENX", "StatsType","Weapon_Grenade_Bounce"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"2"}, --Default 1
								{"ValueMax",	"4"}  --Default 4
							},
						},
						{	--Grenade_Radius
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_GRENX", "StatsType","Weapon_Grenade_Radius"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"1.6"}, --Default 1
								{"ValueMax",	"1.6"}  --Default 1.2
							},
						},
						{	--Grenade_Speed
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_GRENX", "StatsType","Weapon_Grenade_Speed"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"4"}, --Default 1
								{"ValueMax",	"5"}  --Default 4
							},
						},
						{--GRENADES 2
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_TGRENX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"}, --Default False
								{"NumStatsMin", 	"3"},	 --Default 1
								{"NumStatsMax", 	"3"},	 --Default 2
							},
						},					
						{	--Grenade_Damage
							 ["SPECIAL_KEY_WORDS"]		= {"ID", "UP_TGRENX", "StatsType","Weapon_Grenade_Damage"},
							["SECTION_UP"]          = 1,
							 ["VALUE_CHANGE_TABLE"] 	= 
							 {	
								 {"ValueMin",	"450"}, --Default 100
								 {"ValueMax",	"500"}  --Default 450
							 },
						},
						{	--Grenade_Radius
							 ["SPECIAL_KEY_WORDS"]		= {"ID", "UP_TGRENX", "StatsType","Weapon_Grenade_Radius"},
							["SECTION_UP"]          = 1,
							 ["VALUE_CHANGE_TABLE"] 	= 
							 {	
								 {"ValueMin",	"1.8"}, --Default 1.1
								 {"ValueMax",	"1.8"}    --Default 1.6
							 },
						},
						{	--Grenade_Bounce
							 ["SPECIAL_KEY_WORDS"]		= {"ID", "UP_TGRENX", "StatsType","Weapon_Grenade_Speed"},
							 ["SECTION_UP"]          = 1,
							 ["VALUE_CHANGE_TABLE"] 	= 
							 {	
								{"ValueMin",	"3"}, --Default 1
								{"ValueMax",	"5"}  --Default 4
							 },
						},
						{--RAILGUN -- Blaze Javelen
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_RAILX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"},  --Default False
								{"NumStatsMin", 	"2"},		--Default 1
								--{"NumStatsMax", 	"2"},		--Default 2
							},
						},
						{	--Damage
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_RAILX", "StatsType","Weapon_Laser_Damage"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"350"}, --Default 30
								{"ValueMax",	"350"}  --Default 85
								--165-170 = 11? 
							},
						},
						{	--Charge Time
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_RAILX", "StatsType","Weapon_Laser_ChargeTime"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	".3"},  --Default .75
								{"ValueMax",	".35"}  --Default .95
							},
						},
						{--SHOT -- Scatter Blaster
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SHOTX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"},  --Default False
								{"NumStatsMin", 	"6"},		--Default 1
								{"NumStatsMax", 	"6"},		--Default 4
							},
						},						
						{	--Damage
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SHOTX", "StatsType","Weapon_Projectile_Damage"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"20"}, --Default 1
								{"ValueMax",	"30"}  --Default 6
							},
						},
						{	--ReloadTime
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SHOTX", "StatsType","Weapon_Projectile_ReloadTime"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	".3"}, --Default .7
								{"ValueMax",	".35"}  --Default .95
							},
						},
						{	--Clip Size
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SHOTX", "StatsType","Weapon_Projectile_ClipSize"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"102"},  --Default 8
								{"ValueMax",	"102"}  --Default 8
							},
						},
						{	--Fire Rate
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SHOTX", "StatsType","Weapon_Projectile_Rate"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"2"}, --Default 1
								{"ValueMax",	"2.2"}  --Default 1.2
							},
						},
						{	--BurstCap
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SHOTX", "StatsType","Weapon_Projectile_BurstCap"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"2"}, --Default 1
								{"ValueMax",	"3"}  --Default 1
							},
						},
						{	--BurstCooldown
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SHOTX", "StatsType","Weapon_Projectile_BurstCooldown"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	".3"},  --Default .75
								{"ValueMax",	".35"}  --Default .95
							},
						},
						{--SMGX -- Pulse Spitter
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SMGX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"},  --Default False
								{"NumStatsMin", 	"4"},		--Default 1
								--{"NumStatsMax", 	"4"},		--Default 4
							},
						},						
						{	--Damage
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SMGX", "StatsType","Weapon_Projectile_Damage"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"10"}, --Default 1->5->7
								{"ValueMax",	"15"}  --Default 4->6->8
							},
						},
						{	--FireRate
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SMGX", "StatsType","Weapon_Projectile_Rate"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"1.2"}, --Default 1
								{"ValueMax",	"1.5"}  --Default 1.2
							},
						},
						{	--ReloadTime
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SMGX", "StatsType","Weapon_Projectile_ReloadTime"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"0.4"},  --Default 0.85
								{"ValueMax",	"0.48"}  --Default 1
							},
						},
						{	--Clip Size
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SMGX", "StatsType","Weapon_Projectile_ClipSize"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"24"},  --Default 12
								{"ValueMax",	"24"}  --Default 12
							},
						},
                        
						{--UP_CANNX -- ???
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_CANNX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"},  --Default False
								{"NumStatsMin", 	"4"},		--Default 1
								--{"NumStatsMax", 	"4"},		--Default 4
							},
						},						
						{	--Damage
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_CANNX", "StatsType","Weapon_Projectile_Damage"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"40"}, --Default 5
								{"ValueMax",	"50"}  --Default 15
							},
						},
						{	--Charge 1
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_CANNX", "StatsType","Weapon_Projectile_MaximumCharge"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"8"},   --Default 1
								{"ValueMax",	"8"}  --Default 1
							},
						},
						{	--Extra Speed
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_CANNX", "StatsType","Weapon_ChargedProjectile_ExtraSpeed"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"10"},  --Default 5
								{"ValueMax",	"50"}  --Default 25
							},
						},
						{	--Charge Time
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_CANNX", "StatsType","Weapon_ChargedProjectile_ChargeTime"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	".3"},  --Default .75
								{"ValueMax",	".35"}  --Default .95
							},
						}, 
						{--JET_RUN
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_JETX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"},  --Default False
								{"NumStatsMin", 	"6"},		--Default 2
								{"NumStatsMax", 	"6"},		--Default 4
							},
						},			
						{	--Jetpack_Tank
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_JETX", "StatsType","Suit_Jetpack_Tank"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"25"}, --Default 1
								{"ValueMax",	"25"}  --Default 2.3
								--5-7 =514 Target 11,000
							},
						},
						{	--Stamina_Strength
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_JETX", "StatsType","Suit_Stamina_Strength"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"2"}, --Default 0.1
								{"ValueMax",	"2.2"}  --Default 0.6
							},
						},
						{	--Stamina_Recovery
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_JETX", "StatsType","Suit_Stamina_Recovery"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"4"},  --Default 1
								{"ValueMax",	"4.8"}  --Default 1.6
							},
						},
						{	--Jetpack_Drain
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_JETX", "StatsType","Suit_Jetpack_Drain"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	".3"}, --Default .75
								{"ValueMax",	".35"}  --Default .95
							},
						},
						{	--Jetpack_Ignition
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_JETX", "StatsType","Suit_Jetpack_Ignition"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"3.0"},  --Default 1
								{"ValueMax",	"3.0"}  --Default 1.15
							},
						},
						{	--Jetpack_Refill
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_JETX", "StatsType","Suit_Jetpack_Refill"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"25"},  --Default 1.05
								{"ValueMax",	"25"}  --Default 1.3
								--2-2.5 ? SLOW
							},
						},
						{--SHIELDS
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SHLDX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"},  --Default False
								{"NumStatsMin", 	"2"},		--Default 1
								--{"NumStatsMax", 	"2"},		--Default 2
							},
						},			
						{	--Shield_Strength
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SHLDX", "StatsType","Suit_Armour_Shield_Strength"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"1.4"}, --Default 0.1
								{"ValueMax",	"1.4"}  --Default 0.35
							},
						},
						{	--Armour_Health
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SHLDX", "StatsType","Suit_Armour_Health"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"35"}, --Default 20
								{"ValueMax",	"35"}  --Default 20
							},
						},
						{--BOOST ENGINES
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_PULSEX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"},  --Default False
								{"NumStatsMin", 	"4"},		--Default 1
								{"NumStatsMax", 	"4"},		--Default 3
							},
						},						
						{	--MiniJumpFuelSpending
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_PULSEX", "StatsType","Ship_PulseDrive_MiniJumpFuelSpending"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{									
								{"ValueMin",	".3"}, --Default 0.75
								{"ValueMax",	".35"}  --Default 0.95
							},
						},
						{	--Boost
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_PULSEX", "StatsType","Ship_Boost"},
							["SECTION_UP"]          = 1,
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"1.51"}, --Default 1.01
							},  {"ValueMax",    "1.5"}, --Default 1.2
						},
						{	--BoostManeuverability
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_PULSEX", "StatsType","Ship_BoostManeuverability"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"1.4"},   --Default 1.01
								{"ValueMax",	"1.4"}   --Default 1.14
								--9.5-10=878 Target 800? 
								--9 about 27000 in space 2100 or so in atmo
							},
						},
						{	--Maneuverability
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_PULSEX", "StatsType","Ship_Maneuverability"},
							["SECTION_UP"]          = 1,
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"1.4"},  --Default 1.005
                                {"ValueMax",	"1.4"}   --Default 1.005
								--1.8 to high
							},
						},
						-- {	--Maneuverability
							-- ["SPECIAL_KEY_WORDS"]	= {"ID", "UP_PULSEX", "StatsType",""},
							-- ["SECTION_UP"]          = 1,
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {	
								-- --{"ValueMin",	"1.1"}, --Default 1.005
								-- --{"ValueMax",	"1.1"}  --Default 1.005
								-- --8-8=684 target 60 
								-- --1.5=66 felt to high
								-- --1.2 = 40
							-- },
						-- },	
						{--HYPERDRIVE
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_HYPX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"},  --Default False
								{"NumStatsMin", 	"2"},		--Default 1
								{"NumStatsMax", 	"2"},		--Default 2
							},
						},							
						{	--JumpDistance
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_HYPX", "StatsType","Ship_Hyperdrive_JumpDistance"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{									
								{"ValueMin",	"80000"}, --Default 50
								{"ValueMax",	"80000"}  --Default 300
								--850-900 =865 Target 1900
							},
						},
						{	--JumpsPerCell
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_HYPX", "StatsType","Ship_Hyperdrive_JumpsPerCell"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"10"}, --Default 1
								{"ValueMax",	"10"}  --Default 1
							},
						},	
						{--SHIP Shields
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_S_SHLX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"},  --Default False
							},
						},						
						{	--Shield_Strength
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_S_SHLX", "StatsType","Ship_Armour_Shield_Strength"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{									
								{"ValueMin",	".75"}, --Default .05
								{"ValueMax",	".75"}  --Default .25
								--.95-1=150 Taget 200
							},
						},						
						{--SHIP GUNS -- Photon Cannon
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SGUNX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"},  --Default False
								{"NumStatsMin", 	"3"},		--Default 1
								{"NumStatsMax", 	"3"},		--Default 3
							},
						},						
						{	--Guns_Damage
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SGUNX", "StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{									
								{"ValueMin",	"1"}, --Default 8
								{"ValueMax",	"1"}  --Default 32
								--120=37 --180= 56 --160 = 50 --190 ??
								--200=62
								--250=78
							},
						},
						{	--Fire_Rate
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SGUNX", "StatsType","Ship_Weapons_Guns_Rate"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"1.1"}, --Default 1.001
								{"ValueMax",	"1.1"}  --Default 1.026
								--1.15 = 12 --2.1=110 --1.5=50 --1.8=59 --expected 80, maybe remembered wrong
								--1.85 = 85
								--1.9=90
							},
						},
						{	--HeatTime
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SGUNX", "StatsType","Ship_Weapons_Guns_HeatTime"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"4.5"},  --Default 1.001
								{"ValueMax",	"4.5"}  --Default 1.035
								--2=100 --1.8=80
								--2.2 = 121
								--2.8=180
							},
						}, 
						{--SHIP LAZER -- Phase Beam
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SLASRX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"},  --Default False
								{"NumStatsMin", 	"2"},		--Default 1
								--{"NumStatsMax", 	"2"},		--Default 2
							},
						},					
						{	--HeatTime
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SLASRX", "StatsType","Ship_Weapons_Lasers_HeatTime"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{									
								{"ValueMin",	"8.0"},  --Default 1.1
                                {"ValueMax",     "10"}, --Default 2
							},
						},					
						{	--Damage
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SLASRX", "StatsType","Ship_Weapons_Lasers_Damage"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ValueMin",	"60"},  	--Default 30
								{"ValueMax",	"160"}  	--Default 80
								--1.25-1.3= -74
							},
                        },
						{--SHIP SHOT -- Positron Ejector
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SSHOTX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"},  --Default False
								{"NumStatsMin", 	"3"},		--Default 1
								--{"NumStatsMax", 	"3"},		--Default 3
							},
						},					
						{	--Damage
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SSHOTX", "StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{									
								{"ValueMin",	"1"},  --Default 2
								{"ValueMax",	"1"}  	--Default 82
								--90 still kills fast, 50 still to high, chaning to 45, chaning charging to 8.2
								--90 lets see what that gets us, 
								--180 with default fire rate and cooldown 10.2
									--would very quickly kill anything in a shot or two.
							},
						},
						-- {	--Fire Rate
							-- ["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SSHOTX", "StatLevels", "Ship_Weapons_Guns_Rate"},
							-- ["SECTION_UP"]          = 1,
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {	
								-- {"ValueMin",	"0.75"}, --Default 1.05
								-- {"ValueMax",	"0.75"}  --Default 1.1	
							-- },
						-- },
						{	--HeatTime
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SSHOTX", "StatsType","Ship_Weapons_Guns_HeatTime"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"20.2"}, --Default 1.01
								{"ValueMax",	"20.2"}   --Default 1.1
								--8 much faster but slowing down a little also dropping dmg to 90 from 180 both at once
								--10.2 Cooldown is about maxed as it recharges before message saying it does happens
							},
						},
						{--SHIP MINIGUN -- Infraknife
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SMINIX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"},  --Default False
								{"NumStatsMin", 	"3"},		--Default 1
								--{"NumStatsMax", 	"3"},		--Default 3
							},
						},				
						{	--Damage
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SMINIX", "StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{									
								{"ValueMin",	"5"},  --Default 2->3->5
								{"ValueMax",	"10"}  	--Default 14 = 3? back up to 10 more than one shot on a plant?!?!
								--lowering dmg to 30 from 60 lowering HeatTime from 10.2 to 8, changing fire rate to static 1.15
								--Lowering DMG to 60 from 120 back to default fire rate
								-- 120 Lowering DMG output raised Fire rate to .95 from .75
								--200 nonstop firing, when heatTime is 10.2 fire rate was .75
										--pirates were dying but now took some continuous aiming control.
								-- 188 was good,but am slowing down shots to keep it cooler
								--38 = 27
								--50=31
							},
						},
						{	--Fire Rate
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SMINIX", "StatsType","Ship_Weapons_Guns_Rate"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"0.95"}, --Default 1.01
								{"ValueMax",	"0.95"}  --Default 1.15 = 1
								--back to default fire rate 60 DM
								--.95 looking for that sweet spot of dmg\cooldown and fire rate
								--.75 nonstop firing, when heatTime is 10.2 dmg was 200
								--1.4 =212
								--2=100								
							},
						},
						{	--HeatTime
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SMINIX", "StatsType","Ship_Weapons_Guns_HeatTime"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"16.0"}, --Default 1.01 6.2=ok
								{"ValueMax",	"16.0"}   --Default 1.13 = 5
								--2=100
							},
						},
						{--SHIP BLOB.. ?
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SBLOBX"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"AlwaysChoose",	"True"},  --Default False
								{"NumStatsMin", 	"3"},		--Default 1
								--{"NumStatsMax", 	"3"},		--Default 3
							},
						},							
						{	--Damage
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SBLOBX", "StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{									
								{"ValueMin",	"24"},  --Default 2
								{"ValueMax",	"24"}  	--Default 14
								--34-39=27
							},
						},
						{	--Fire Rate
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SBLOBX", "StatsType","Ship_Weapons_Guns_Rate"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"1.2"}, --Default 1.01
								{"ValueMax",	"1.2"}  --Default 1.2
								--3.4-3.45 = 212
							},
						},
						{	--HeatTime
							["SPECIAL_KEY_WORDS"]	= {"ID", "UP_SBLOBX", "StatsType","Ship_Weapons_Guns_HeatTime"},
							["SECTION_UP"]          = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ValueMin",	"14.2"}, --Default 1.1
								{"ValueMax",	"14.2"}   --Default 1.4
							},
						},					
					}
				}	
			}
		}
	}	
}
