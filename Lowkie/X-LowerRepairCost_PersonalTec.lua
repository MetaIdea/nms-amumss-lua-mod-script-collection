--these are for resistance modules
ProtectChargeAmount = 3600				--80 
ProtectChargeMultiplier = 4			--1->22=>4
--Set all repair costs of crashed ships to (Original * This Value)
CrashedShipRepairCost = .25


NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]		= "X-LowerRepairCost_PersonalTec.pak", 
  ["MOD_AUTHOR"]		= "Lowkie",
  ["LUA_AUTHOR"]		= "Lowkie",
  ["NMS_VERSION"]		= "3.3",
  ["MOD_DESCRIPTION"]	= "Lower cost repair for ships, Personl tech updates. Better freighter hyperdrive units",
  ["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					 ["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					 ["EXML_CHANGE_TABLE"] = 
					 {                    
					-- --Jetpack
						{ --JetpackTank
						   ["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},	
						   ["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
						   ["VALUE_CHANGE_TABLE"] = 
                          {
							{"Bonus", 9999},--2.75 
						  },
						},
						{ --JetpackDrain No Effect
						  ["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},
						  ["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
						  ["VALUE_CHANGE_TABLE"] = 
                          {
							{"Bonus", 1},
						  },
						},
						{ --JetpackIgnition
						  ["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},
						  ["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
						  ["VALUE_CHANGE_TABLE"] = 
                          {
							{"Bonus", 1},
						  },
						},
						{ --JetpackRegen
						  ["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},
						  ["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
						  ["VALUE_CHANGE_TABLE"] = 
                          {
							{"Bonus", 1},
						  },
						},
						{-- better transfer range for primary ship
							["SPECIAL_KEY_WORDS"]  = {"ID", "SHIP_TELEPORT"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Teleport",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Bonus", "400"}  --default 100
							}
						},					
						{--LAUNCHER - Ship_Launcher_TakeOffCost
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "15"}	-- Original "50"   
							}
						},				
						{--HYPERDRIVE - Freighter_Hyperdrive_JumpDistance
							["SPECIAL_KEY_WORDS"] = {"ID", "HYPERDRIVE"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpDistance"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "1000"}	-- Original "100"   
							}
						},			
						{--HYPERDRIVE - Ship_Hyperdrive_JumpsPerCell
							["SPECIAL_KEY_WORDS"] = {"ID", "HYPERDRIVE"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpsPerCell"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "5"}	-- Original "1"   
							}
						},			
						{--F_HYPERDRIVE - Freighter_Hyperdrive_JumpDistance
							["SPECIAL_KEY_WORDS"] = {"ID", "F_HYPERDRIVE"},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "1000"}	-- Original "100"   
							}
						},			
						{--F_HYPERDRIVE - Freighter_Hyperdrive_JumpsPerCell
							["SPECIAL_KEY_WORDS"] = {"ID", "F_HYPERDRIVE"},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpsPerCell"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "50"}	-- Original "1"   
							}
						},
						{--F_HDRIVEBOOST1 - Freighter_Hyperdrive_JumpDistance
							["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST1"},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "5000"}	-- Original "200"   
							}
						},
						{--F_HDRIVEBOOST2 - Freighter_Hyperdrive_JumpDistance
							["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST2"},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "50000"}	-- Original "300"   
							}
						},
						{--F_HDRIVEBOOST3 - Freighter_Hyperdrive_JumpDistance
							["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST3"},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "100000"}	-- Original "800"  
							}
						},
						{--F_HACCESS1 - Freighter_Hyperdrive_JumpDistance
							["SPECIAL_KEY_WORDS"] = {"ID", "F_HACCESS1"},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"50000"}		-- Original "50"  
							}
						},
						{--F_HACCESS2 -Freighter_Hyperdrive_JumpDistance 
							["SPECIAL_KEY_WORDS"] = {"ID", "F_HACCESS2"},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "50000"}	-- Original "50"  
							}
						},
						{--F_HACCESS3 - Freighter_Hyperdrive_JumpDistance 
							["SPECIAL_KEY_WORDS"] = {"ID", "F_HACCESS3"},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "50000"}	-- Original "50"  
							}
						},
						{--WARP_ALIEN - Ship_Hyperdrive_JumpDistance
							["SPECIAL_KEY_WORDS"] = {"ID", "WARP_ALIEN"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpDistance"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"50000"}		-- Original "100"  
							}
						},
						{--WARP_ALIEN - Ship_Hyperdrive_JumpsPerCell
							["SPECIAL_KEY_WORDS"] = {"ID", "WARP_ALIEN"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpsPerCell"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "5"}	-- Original "1"  
							}
						},
						{--T_BOBBLE_ATLAS - Ship_Hyperdrive_JumpDistance
							["SPECIAL_KEY_WORDS"] = {"ID", "T_BOBBLE_ATLAS"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpDistance"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "1000"}	-- Original 50 
							}
						},
						{--MECH_ENGINE - Vehicle_EngineFuelUse
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ENGINE"},
							["PRECEDING_KEY_WORDS"] = {"Vehicle_EngineFuelUse"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "0.05"}	-- Original 0.5 
							}
						},
						{--MECH_ENGINE - Vehicle_EngineTopSpeed
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ENGINE"},
							["PRECEDING_KEY_WORDS"] = {"Vehicle_EngineTopSpeed"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "100"}	-- Original 1 
							}
						},
						{--MECH_ENGINE - Vehicle_Grip
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ENGINE"},
							["PRECEDING_KEY_WORDS"] = {"Vehicle_Grip"},                           
							["SECTION_UP"] = 1, 
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "0.001"}	-- Original 1 
							}
						},
						{--MECH_ENGINE - Vehicle_SkidGrip
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ENGINE"},
							["PRECEDING_KEY_WORDS"] = {"Vehicle_SkidGrip"},
							["SECTION_UP"] = 1,
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "0.001"}	-- Original 1 
							}
						},
						{--MECH_BOOST - Vehicle_Boost
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_BOOST"},
							["PRECEDING_KEY_WORDS"] = {"Vehicle_Boost"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "100"}	-- Original 1 
							}
						},
						{--MECH_BOOST - Vehicle_BoostSpeed
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_BOOST"},
							["PRECEDING_KEY_WORDS"] = {"Vehicle_BoostSpeed"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", "500"}	-- Original 1 
							}
						},
						{--MECH_BOOST - Vehicle_BoostSpeed
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_BOOST"},
							["PRECEDING_KEY_WORDS"] = {"Vehicle_BoostSpeed"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"3"}	-- Original 1 
							}
						},						
						{--SHIPSLOT_DMG1 - STELLAR2
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG1", "ID", "STELLAR2"},
							["MATH_OPERATION"] 	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 700 
							}
						},
						{--SHIPSLOT_DMG2 - LAND3
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG2", "ID", "LAND3"},
							["MATH_OPERATION"] 	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 200 Set to 25%
							}
						},
						{--SHIPSLOT_DMG2 - WATER2
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG2", "ID", "WATER2"},
							["MATH_OPERATION"] 	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},
						{--SHIPSLOT_DMG3 - ASTEROID3
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG3", "ID", "ASTEROID3"},
							["MATH_OPERATION"] 	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 250 Set to 25% 
							}
						},
						{--SHIPSLOT_DMG4 - LUSH1
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG4", "ID", "LUSH1"},
							["MATH_OPERATION"] 	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 820 Set to 25% 
							}
						},
						{--SHIPSLOT_DMG4 - ROBOT1
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG4", "ID", "ROBOT1"},
							["MATH_OPERATION"] 	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25% 
							}
						},
						{--SHIPSLOT_DMG5 - LAND3
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG5", "ID", "LAND3"},
							["MATH_OPERATION"] 	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 200 Set to 25% 
							}
						},
						{--SHIPSLOT_DMG5 - STELLAR2
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG5", "ID", "STELLAR2"},
							["MATH_OPERATION"] 	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 300
							}
						},
						{--SHIPSLOT_DMG5 - ASTEROID2
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG5", "ID", "ASTEROID2"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 180 Set to 25% 
							}
						},
						{--SHIPSLOT_DMG6 - STELLAR2
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG6", "ID", "STELLAR2"},
							["MATH_OPERATION"] 	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 600 
							}
						},
						{--SHIPSLOT_DMG6 - TECH_COMP
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG6", "ID", "TECH_COMP"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 10 Set to 25%
							}
						},
						{--SHIPSLOT_DMG7 - OXYGEN
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG7", "ID", "OXYGEN"},
							["MATH_OPERATION"] 	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 200 Set to 25%
							}
						},
						{--SHIPSLOT_DMG7 - COLD1
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG7", "ID", "COLD1"},
							["MATH_OPERATION"] 	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 150 Set to 25%
							}
						},
						{--SHIPSLOT_DMG8 - LAND2
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG8", "ID", "LAND2"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 500 Set to 25%
							}
						},
						{--SHIPSLOT_DMG8 - ASTEROID2
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG8", "ID", "ASTEROID2"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 300 Set to 25%
							}
						},
						{--SHIPSLOT_DMG9 - EX_YELLOW
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG9", "ID", "EX_YELLOW"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 150 Set to 25%
							}
						},
						{--SHIPSLOT_DMG10 - TECH_COMP
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG10", "ID", "TECH_COMP"},
							["MATH_OPERATION"] 	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 8 Set to 25%
							}
						},
						{--SHIPSLOT_DMG10 - ANTIMATTER
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG10", "ID", "ANTIMATTER"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 5 Set to 25%
							}
						},
						{--SHIPSLOT_DMG11 - STELLAR2
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG11", "ID", "STELLAR2"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 150
							}
						},	
						{--SHIPSLOT_DMG11 - ROBOT1						
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG11", "ID", "ROBOT1"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}	
						},	
						{--SHIPSLOT_DMG11 - ASTEROID3
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG11", "ID", "ASTEROID3"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},	
						{--SHIPSLOT_DMG12 - DUSTY1
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG12", "ID", "DUSTY1"},
							["MATH_OPERATION"] 	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 120 Set to 25%
							}
						},	
						{--SHIPSLOT_DMG12 - HOT1
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG12", "ID", "HOT1"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 150 Set to 25%
							}
						},	
						{--SHIPSLOT_DMG12 - CASING
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSLOT_DMG12", "ID", "CASING"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 5 Set to 25%
							}
						},	
						{--WEAPSLOT_DMG1 - STELLAR2
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG1", "ID", "STELLAR2"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 200
							}
						},
						{--WEAPSLOT_DMG2 - TECH_COMP
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG2", "ID", "TECH_COMP"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", ".50"}	-- Original 2 Set to 50%
							}
						},
						{--WEAPSLOT_DMG3 - MICROCHIP
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG3", "ID", "MICROCHIP"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 6 Set to 25%
							}
						},
						{--WEAPSLOT_DMG3 - CARBON_SEAL
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG3", "ID", "CARBON_SEAL"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 8 Set to 25%
							}
						},
						{--WEAPSLOT_DMG3 - CATALYST1
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG3", "ID", "CATALYST1"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 126 Set to 25%
							}
						},
						{--WEAPSLOT_DMG4 - CAVE2
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG4", "ID", "CAVE2"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},
						{--WEAPSLOT_DMG5 - HOT1
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG5", "ID", "HOT1"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},
						{--WEAPSLOT_DMG5 - TOXIC1
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG5", "ID", "TOXIC1"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},
						{--WEAPSLOT_DMG5 - RADIO1
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG5", "ID", "RADIO1"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},
						{--WEAPSLOT_DMG6 - DUSTY1
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG6", "ID", "DUSTY1"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},
						{--WEAPSLOT_DMG6 - COLD1
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG6", "ID", "COLD1"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},
						{--WEAPSLOT_DMG6 - LUSH1
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG6", "ID", "LUSH1"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},
						{--WEAPSLOT_DMG7 - LUSH1
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG7", "ID", "TECH_COMP"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 3 Set to 25%
							}
						},
						{--WEAPSLOT_DMG7 - QUAD_PROD
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG7", "ID", "QUAD_PROD"},
							["MATH_OPERATION"] 	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "1"}	-- Original 1
							}
						},
						{--WEAPSLOT_DMG8 - TECH_COMP
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG8", "ID", "TECH_COMP"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "1"}	-- Original 3
							}
						},
						{--WEAPSLOT_DMG8 - CARBON_SEAL
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG8", "ID", "CARBON_SEAL"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 5 Set to 25%
							}
						},
						{--WEAPSLOT_DMG8 - ASTEROID2
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG8", "ID", "ASTEROID2"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},
						{--WEAPSLOT_DMG9 - LAND3
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG9", "ID", "LAND3"},
							["MATH_OPERATION"] 	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 120 Set to 25%
							}
						},
						{--WEAPSLOT_DMG9 - ASTEROID1
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG9", "ID", "ASTEROID1"},
							["MATH_OPERATION"] 	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 100 Set to 25%
							}
						},
						{--WEAPSLOT_DMG10 - FARMPROD3
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG10", "ID", "FARMPROD3"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 2 Set to 25%
							}
						},
						{--WEAPSLOT_DMG10 - WATER1
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG10", "ID", "WATER1"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},
						{--WEAPSLOT_DMG11 - FUEL2
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG11", "ID", "FUEL2"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},
						{--WEAPSLOT_DMG11 - RADIO1
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG11", "ID", "RADIO1"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},
						{--WEAPSLOT_DMG11 - TOXIC1
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG11", "ID", "TOXIC1"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},
						{--WEAPSLOT_DMG12 - CAVE2
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG12", "ID", "CAVE2"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},
						{--WEAPSLOT_DMG12 - COLD1
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG12", "ID", "COLD1"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},
						{--WEAPSLOT_DMG12 - DUSTY1
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSLOT_DMG12", "ID", "DUSTY1"},
							["MATH_OPERATION"] 	= "*",
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", CrashedShipRepairCost}	-- Original 50 Set to 25%
							}
						},						
						{ --Cold Module
							["SPECIAL_KEY_WORDS"] = {"ID", "T_COLDPROT"},
							["PRECEDING_KEY_WORDS"] = {""},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"ChargeAmount", ProtectChargeAmount},
									{"ChargeMultiplier", ProtectChargeMultiplier},
									--{"Value", ProtectValue},
								}
						},					
						{ --Hot Module
							["SPECIAL_KEY_WORDS"] = {"ID", "T_HOTPROT"},
							["PRECEDING_KEY_WORDS"] = {""},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"ChargeAmount", ProtectChargeAmount},
									{"ChargeMultiplier", ProtectChargeMultiplier},
									--{"Value", ProtectValue},
								}
						},					
						{--Tox Module
							["SPECIAL_KEY_WORDS"] = {"ID", "T_TOX"},
							["PRECEDING_KEY_WORDS"] = {""},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"ChargeAmount", ProtectChargeAmount},
									{"ChargeMultiplier", ProtectChargeMultiplier},
									--{"Value", ProtectValue},
								}
						},					
						{ --Rad Module
							["SPECIAL_KEY_WORDS"] = {"ID", "T_RAD"},
							["PRECEDING_KEY_WORDS"] = {""},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"ChargeAmount", ProtectChargeAmount},
									{"ChargeMultiplier", ProtectChargeMultiplier},
									--{"Value", ProtectValue},
								}
						},					
						{ --Water Module
							["SPECIAL_KEY_WORDS"] = {"ID", "T_UNW"},
							["PRECEDING_KEY_WORDS"] = {""},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"ChargeAmount", ProtectChargeAmount},
									{"ChargeMultiplier", ProtectChargeMultiplier},
									--{"Value", ProtectValue},
								}
						},
					},
				},	
			}
		}
	}	
}
