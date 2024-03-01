-- misc settings
landing_max_speed = "200"   --original 80
Landing_Max_Angle = "15"    --original 45
Landing_Helper_Turn_Time = "0.1"	--original 0.4
Landing_Helper_Roll_Time = "0.5"	--original 1.5
Docking_Rotate_Speed = "3"	--original 1
Hover_Land_Reached_Distance = "8"	--original 10
Hover_Speed_Factor = "60" 	--original 20
TakeOff_Cost = "50" 		--original 100
Mini_Warp_Speed = "200000"	-- original 30000 
Mini_Warp_ChargeTime = "0"		-- original 2
Ground_Height_SmoothTime = "10000000"  -- original 0
Collision_Speed_DamageAmount = "1"		-- original 1	
Collision_Distance_Ground = "10"		-- original 10


--Space engine
MaxSpeed_Space = "700"		--original 180
ThrustForce_Space = "100"		--original 40
BoostThrustForce_Space = "1000"		--original 500
BoostMaxSpeed_Space = "3000"		--original 1200
TurnStrength_Space = "3"		--original 1
Min_Speed =	"1"		-- original 1 		
Boost_Fall_off = "0"		-- original 0.7 	
Boosting_Turn_Damp = "0.5"		-- original 0.1 		
Direction_Brake_Min = "0.5"		-- original 1 				
Direction_Brake = "1"		-- original 1.5								
Over_speed_Brake = "0.2"		-- original 3 								
Turn_Brake_Min = "0.5"		-- original 1 									
Turn_Brake_Max = "1"		-- original 2

--Planet engine
Planet_MaxSpeed = "400"		--original 125
Planet_ThrustForce = "40"		--original 20
Planet_BoostThrustForce = "200"		--original 100
Planet_BoostMaxSpeed = "800"		--original 155
Planet_TurnStrength = "10"		--original 1
Planet_MinSpeed = "-5"		-- original 20																
Planet_LowSpeedTurnDamper = "1"		-- original 0.25		
Planet_TurnBrakeMin = "0.2"		-- original 2		
Planet_TurnBrakeMax = "2"		-- original 3	

--ControlLight space engine
CLS_ThrustForce = "40"		-- original 10			
CLS_MaxSpeed = "400" 	-- original 125 	
CLS_MinSpeed = "-5"	-- original 35									
CLS_BoostThrustForce = "200"		-- original 50 				
CLS_BoostMaxSpeed = "900"		-- original 150 					
CLS_LowSpeedTurnDamper = "1"		-- original 0.3 		
CLS_TurnBrakeMin = "0.2"		-- original 0.8 		
CLS_TurnBrakeMax = "5"		-- original 6 			
CLS_TurnStrength = "10"		-- original 5

--ControlLight planet engine
CLP_MinSpeed = "-5"	-- Original 50					
CLP_BoostFalloff = "0"		-- Original 0.7
CLP_BoostingTurnDamp = "0.5"		-- Original 0.1 		
CLP_DirectionBrakeMin = "0.5"		-- Original 1 					
CLP_DirectionBrake = "1"		-- Original 2 									
CLP_OverspeedBrake = "0.2"		-- Original 3 									
CLP_TurnBrakeMin = "0.5"		-- Original 1									
CLP_TurnBrakeMax = "1"		-- Original 4

--ControlHeavy space engine
CHS_ThrustForce = "50"		-- original 10			
CHS_MaxSpeed = "600" 	-- original 125 	
CHS_MinSpeed = "-5"	-- original 35									
CHS_BoostThrustForce = "400"		-- original 50 				
CHS_BoostMaxSpeed = "800"		-- original 150 					
CHS_LowSpeedTurnDamper = "1"		-- original 0.3 		
CHS_TurnBrakeMin = "0.2"		-- original 0.8 		
CHS_TurnBrakeMax = "5"		-- original 6 			
CHS_TurnStrength = "10"		-- original 5

--ControlHeavy planet engine
CHP_ThrustForce = "50"		-- original 10			
CHP_MaxSpeed = "600" 	-- original 125 	
CHP_MinSpeed = "-5"	-- original 35									
CHP_BoostThrustForce = "400"		-- original 50 				
CHP_BoostMaxSpeed = "600"		-- original 150 					
CHP_LowSpeedTurnDamper = "1"		-- original 0.3 		
CHP_TurnBrakeMin = "0.2"		-- original 0.8 		
CHP_TurnBrakeMax = "5"		-- original 6 			
CHP_TurnStrength = "10"		-- original 5

--CombatEngine		
CB_MaxSpeed = "160" 	-- original 115	
CB_MinSpeed = "1"	-- original 50									
CB_BoostThrustForce = "1000"		-- original 500 				
CB_BoostMaxSpeed = "2000"		-- original 1200					 		
CB_TurnBrakeMin = "0.2"		-- original 1		
CB_TurnBrakeMax = "2"		-- original 4 			
CB_TurnStrength = "3"		-- original 1.3

--AtmosCombatEngine	
ACB_MaxSpeed = "160" 	-- original 80	
ACB_MinSpeed = "1"	-- original 10									
ACB_BoostThrustForce = "200"		-- original 100 				
ACB_BoostMaxSpeed = "1200"		-- original 155					 		
ACB_TurnBrakeMin = "0.2"		-- original 1		
ACB_TurnBrakeMax = "2"		-- original 4 			
ACB_TurnStrength = "3"		-- original 1.3
	

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "ShipTweeks.pak",
    ["MOD_AUTHOR"] = "TwistedViking",
    ["NMS_VERSION"] = "echoes",
    ["MODIFICATIONS"] = {
        {
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {""},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
                                {"LandingMaxSpeed", landing_max_speed},
								{"LandingMaxAngle", Landing_Max_Angle},
								{"LandingHelperTurnTime", Landing_Helper_Turn_Time},
								{"LandingHelperRollTime", Landing_Helper_Roll_Time},
								{"DockingRotateSpeed", Docking_Rotate_Speed},
								{"HoverSpeedFactor", Hover_Speed_Factor},
								{"HoverLandReachedDistance", Hover_Land_Reached_Distance},
								{"MiniWarpSpeed",	Mini_Warp_Speed},	
								{"MiniWarpChargeTime",	Mini_Warp_ChargeTime},			
								{"GroundHeightSmoothTime",	Ground_Height_SmoothTime}, 	 	
								{"CollisionSpeedDamageAmount" ,Collision_Speed_DamageAmount},				
								{"CollisionDistanceGround",	Collision_Distance_Ground},
								--{"TakeOffCost", TakeOff_Cost},
                            }
                        }
                    }
                },
			
				--Space
				{
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Control","GcPlayerSpaceshipControlData.xml", "SpaceEngine", "GcPlayerSpaceshipEngineData.xml" },
                            ["VALUE_CHANGE_TABLE"] = {
                                {"ThrustForce", ThrustForce_Space},
								{"MaxSpeed", MaxSpeed_Space},
								{"BoostMaxSpeed", BoostMaxSpeed_Space},
								{"BoostThrustForce", BoostThrustForce_Space},
								{"TurnStrength", TurnStrength_Space},
								{"MinSpeed", Min_Speed},				
								{"BoostFalloff", Boost_Fall_off},			
								{"BoostingTurnDamp", Boosting_Turn_Damp},				
								{"DirectionBrakeMin", Direction_Brake_Min},						
								{"DirectionBrake", Direction_Brake},									
								{"OverspeedBrake", Over_speed_Brake},									
								{"TurnBrakeMin", Turn_Brake_Min},										
								{"TurnBrakeMax", Turn_Brake_Max},					
                            }
                        }
                    }
                },
				
				--Planet
				{
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Control","GcPlayerSpaceshipControlData.xml", "PlanetEngine", "GcPlayerSpaceshipEngineData.xml" },
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                {"ThrustForce", Planet_ThrustForce},
								{"MaxSpeed", Planet_MaxSpeed},
								{"BoostMaxSpeed", Planet_BoostMaxSpeed},
								{"BoostThrustForce", Planet_BoostThrustForce},
								{"TurnStrength", Planet_TurnStrength},
								{"MinSpeed", Planet_MinSpeed},									
								{"BoostThrustForce", Planet_BoostThrustForce},								
								{"LowSpeedTurnDamper", Planet_LowSpeedTurnDamper},		
								{"TurnBrakeMin", Planet_TurnBrakeMin},		
								{"TurnBrakeMax", Planet_TurnBrakeMax},			
                            }
                        }
                    }
                },
				
				--ControlLight planet engine
				{
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "ControlLight","GcPlayerSpaceshipControlData.xml", "PlanetEngine", "GcPlayerSpaceshipEngineData.xml" },
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                {"ThrustForce", Planet_ThrustForce},
								{"MaxSpeed", Planet_MaxSpeed},
								{"BoostMaxSpeed", Planet_BoostMaxSpeed},
								{"BoostThrustForce", Planet_BoostThrustForce},
								{"TurnStrength", Planet_TurnStrength}, 	
								{"MinSpeed", CLP_MinSpeed},		 					
								{"BoostFalloff", CLP_BoostFalloff},		 	
								{"BoostingTurnDamp", CLP_BoostingTurnDamp},		 		
								{"DirectionBrakeMin", CLP_DirectionBrakeMin},		 					
								{"DirectionBrake", CLP_DirectionBrake},		 									
								{"OverspeedBrake", CLP_OverspeedBrake},		 									
								{"TurnBrakeMin", CLP_TurnBrakeMin},		 									
								{"TurnBrakeMax", CLP_TurnBrakeMax},		 		
                            }
                        }
                    }
                },
				
				--ControlLight space engine
				{
					["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
							["SPECIAL_KEY_WORDS"] = { "ControlLight",  "GcPlayerSpaceshipControlData.xml" , "SpaceEngine",  "GcPlayerSpaceshipEngineData.xml"  },
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"ThrustForce", CLS_ThrustForce},		 			
								{"MaxSpeed", CLS_MaxSpeed}, 		
								{"MinSpeed", CLS_MinSpeed},		 									
								{"BoostThrustForce", CLS_BoostThrustForce},		 				
								{"BoostMaxSpeed", CLS_BoostMaxSpeed},							
								{"LowSpeedTurnDamper", CLS_LowSpeedTurnDamper},				
								{"TurnBrakeMin", CLS_TurnBrakeMin},				
								{"TurnBrakeMax", CLS_TurnBrakeMax},		 			
								{"TurnStrength", CLS_TurnStrength},				
							}
						}
					}	
				},
				
				--ControlHeavy space engine
				{
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "ControlHeavy","GcPlayerSpaceshipControlData.xml", "SpaceEngine", "GcPlayerSpaceshipEngineData.xml" },
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                {"ThrustForce", CHS_ThrustForce},
								{"MaxSpeed", CHS_MaxSpeed},
								{"MinSpeed", CHS_MinSpeed},
								{"BoostMaxSpeed", CHS_BoostMaxSpeed},
								{"BoostThrustForce", CHS_BoostThrustForce},
								{"TurnStrength", CHS_TurnStrength},
								{"LowSpeedTurnDamper", CHS_LowSpeedTurnDamper}, 		
								{"TurnBrakeMin", CHS_TurnBrakeMin},	
								{"TurnBrakeMax", CHS_TurnBrakeMax},		
                            }
                        }
                    }
                },
				
				--ControlHeavy planet engine
				{
					["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
							["SPECIAL_KEY_WORDS"] = { "ControlHeavy",  "GcPlayerSpaceshipControlData.xml",  "PlanetEngine",  "GcPlayerSpaceshipEngineData.xml"  },
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"ThrustForce", CHP_ThrustForce},			
								{"MaxSpeed", CHP_MaxSpeed}, 	
								{"MinSpeed", CHP_MinSpeed},										
								{"BoostThrustForce", CHP_BoostThrustForce},				
								{"BoostMaxSpeed", CHP_BoostMaxSpeed},					
								{"LowSpeedTurnDamper", CHP_LowSpeedTurnDamper},	 		
								{"TurnBrakeMin", CHP_TurnBrakeMin},	 		
								{"TurnBrakeMax", CHP_TurnBrakeMax}, 			
								{"TurnStrength", CHP_TurnStrength},	
							}
						}
					}
				},
				
				--ControlHover
				{
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "ControlHover","GcPlayerSpaceshipControlData.xml", "PlanetEngine", "GcPlayerSpaceshipEngineData.xml" },
                            ["VALUE_CHANGE_TABLE"] = {
                                {"ThrustForce", Planet_ThrustForce},
								{"MaxSpeed", Planet_MaxSpeed},
								{"BoostMaxSpeed", Planet_BoostMaxSpeed},
								{"BoostThrustForce", Planet_BoostThrustForce},
								{"TurnStrength", Planet_TurnStrength},
                            }
                        }
                    }
                },
				
				--CombatEngine
				{
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CombatEngine","GcPlayerSpaceshipEngineData.xml", "CombatEngine", "GcPlayerSpaceshipEngineData.xml" },
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MaxSpeed", CB_MaxSpeed},  
                                {"MinSpeed", CB_MinSpeed},  
                                {"BoostThrustForce", CB_BoostThrustForce},  
                                {"BoostMaxSpeed", CB_BoostMaxSpeed},  
								{"TurnStrength", CB_TurnStrength},  
								{"TurnBrakeMin", CB_TurnBrakeMin},  
								{"TurnBrakeMax", CB_TurnBrakeMax},  
                            }		
                        }
					}	
                },

				--AtmosCombatEngine
				{
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AtmosCombatEngine","GcPlayerSpaceshipEngineData.xml", "AtmosCombatEngine", "GcPlayerSpaceshipEngineData.xml" },
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MaxSpeed", ACB_MaxSpeed},  
                                {"MinSpeed", ACB_MinSpeed}, 
                                {"BoostThrustForce", ACB_BoostThrustForce},
                                {"BoostMaxSpeed", ACB_BoostMaxSpeed},   
								{"TurnStrength", ACB_TurnStrength},  
								{"TurnBrakeMin", ACB_TurnBrakeMin},  
								{"TurnBrakeMax", ACB_TurnBrakeMax},

                            }
                        }
					}
				}
            }
        }
    }
}