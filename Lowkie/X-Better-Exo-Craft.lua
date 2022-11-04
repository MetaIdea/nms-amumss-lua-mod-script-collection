NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "X-Better-Exo-Craft.pak", 
["MOD_AUTHOR"]				= "Personal Built",
["NMS_VERSION"]				= "3.3",
["MOD_DESCRIPTION"]			= "Better Exo control",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] = {"GCVEHICLEGLOBALS.GLOBAL.MBIN"},
					["EXML_CHANGE_TABLE"]= 
					{	
						{
							["PRECEDING_KEY_WORDS"] = {""},
							["VALUE_CHANGE_TABLE"] 	= 
							{ 
								{"MechContrailAlpha", "0.006"}, -- Original value 0.6
								{"MechJetpackBrake", "1.2"}, -- Original value 0.2
								{"MechJetpackDrainRate", "0.05"}, -- Original value .05
								{"MechJetpackFallForce", "40"}, -- Original value 80
								{"MechJetpackLandTime", "0.001"}, -- Original value 0.6
								{"MechJetpackMaxSpeed", "40"}, -- Original value 20  
								{"MechJetpackStrafeStrength", "1.5"}, -- Original value 0.5
								{"MechJetpackTurnSpeed", "30"}, -- Original value 3
								{"MechJetpackUpForce", "80"}, -- Original value 100
								--{"MechLandBrake", "0.4"}, -- Original value 4
								{"MechTitanFallCameraShakeDist", "180"}, -- Original value 80
								{"MechTurnSpeed", "0.4"}, -- Original value 1.5
							}
						},	
                        {
							["PRECEDING_KEY_WORDS"] = {""},
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{ 
								 {"MechLandBrake", "0.4"}, -- Original value 4
                            }
						},
						{						
							["PRECEDING_KEY_WORDS"] = {"VehicleScan"},
							["VALUE_CHANGE_TABLE"] 	= 
							{								
								{"PulseRange","15000"},--Default 1500
								{"ChargeTime","1"},--Default 20
							}
						},				
						{								
							["PRECEDING_KEY_WORDS"] = {"VehicleLocalScan"},
							["VALUE_CHANGE_TABLE"] 	= 
							{								
								{"PulseRange","2000"},--Default 20
								{"ChargeTime","1"},--Default 20
							}
						},	
                        {
							["SPECIAL_KEY_WORDS"] = {"Name", "BIKE"},
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
                                {"VehicleBoostRechargeTime", "1.2"}, -- Original value 2  
                            }
                         },
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "BIKE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AudioBoostStart", "DragonFly_Boost_Start"}, -- Original value Hovercraft_Boost_Start
								{"AudioBoostStop", "DragonFly_Boost_Stop"}, -- Original value Hovercraft_Boost_Start
								{"AudioHornStart", "DragonFly_Horn_Start"}, -- Original value Hovercraft_Boost_Start
								{"AudioHornStop", "DragonFly_Horn_Stop"}, -- Original value 
								{"AudioIdleExterior", "DragonFly_Idle_Exterior"}, -- Original value Hovercraft_Boost_Start
								{"AudioImpacts", "DragonFly_Impacts"}, -- Original value Hovercraft_Boost_Start
								{"AudioJump", "DragonFly_Jump"}, -- Original value Hovercraft_Boost_Start
								{"AudioStart", "DragonFly_Start"}, -- Original value Hovercraft_Boost_Start
								{"AudioStop", "DragonFly_Stop"}, -- Original value Hovercraft_Boost_Start
								{"AudioSuspension", "DragonFly_Suspension"}, -- Original value Hovercraft_Boost_Start
								{"HeadlightIntensity", "30"}, -- Original value 6
								{"TopSpeedForward", "65"}, -- Original value 18
								{"TopSpeedReverse", "60"}, -- Original value 10
								{"TurningWheelForce", "-4"}, -- Original value -3
								{"TurningWheelFrictionBraking", "20"}, -- Original value 110
								{"VehicleBoostExtraMaxSpeedAir", "5"}, -- Original value 40
								{"VehicleBoostMaxSpeed", "70"}, -- Original value 32
								-- see above{"VehicleBoostRechargeTime", "1.2"}, -- Original value 2
								{"VehicleBoostSpeedFalloff", "0.05"}, -- Original value 7.5
								{"VehicleBoostTime", "10.5"}, -- Original value .5
								{"VehicleGravity", "30.5"}, -- Original value 17.5
								{"VehicleGravityWater", "10.5"}, -- Original value 17.5
								{"VehicleJumpAirControlForce", "220"}, -- Original value  100  
								{"VehicleJumpAirRotateXAmount", "0"}, -- Original value 40
								{"VehicleJumpAirRotateZAmount", "0"}, -- Original value 40
								{"VehicleJumpForce", "1875"}, -- Original value 475
								{"WheelDragginess", "1"}, -- Original value 5
								{"WheelMaxAccelForceForward", "350"}, -- Original value 9
								{"WheelMaxAccelForceReverse", "350.5"}, -- Original value 5.5 
								{"WheelMaxDecelForceBraking", "550.05"}, -- Original value 5.5
								{"WheelMaxDecelForceNonBraking", "0"}, -- Original value 1
								{"WheelSpinParticleMaxRate", "11"}, -- Original value 10
								{"WheelSuspensionForce", "20"}, -- Original value 10
							}
						},
                        {
							["SPECIAL_KEY_WORDS"] = {"Name", "MED_BUGGY"},
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
                                {"VehicleBoostRechargeTime",		".05"}, -- Original value "3" --Mod 3 
                                {"VehicleBoostSpeedFalloff",		".005"}, -- Original value "10" --Mod .001 
								{"WheelMaxDecelForceNonBraking",	".5"}, -- Original value "2" --Mod .02
                            }
                         },	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MED_BUGGY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DriveOnTopOfWater",				"True"}, -- Original value "False" --Mod "False" 
								{"HeadlightIntensity",				"30"}, -- Original value "6" --Mod 30
								{"TopSpeedForward",					"85"}, -- Original value "16" --Mod 54
							    {"TurningWheelFrictionBraking", 	"80"}, -- Original value "5" --Mod 5 tried 12 still slippery
							    {"TurningWheelFrictionNonBraking",	"40"}, -- Original value "3" --Mod 3 tried 8 still slippery
								{"VehicleBoostForce",				"500"}, -- Original value "300" --Mod 280
								{"VehicleBoostMaxSpeed",			"90"}, -- Original value "30" --Mod 60										
								{"VehicleBoostTime",				"4"}, -- Original value "1.5"   --Mod 4  
								{"VehicleGravity",					"50"}, -- Original value "20" --Mod 40
								--{"VehicleGravityWater",				"38"}, -- Original value "8" --Mod 38
								{"VehicleJumpForce",				"1220"}, -- Original value "420"  --Mod 920
								{"WheelMaxAccelForceForward",		"30.5"}, -- Original value "5.5"  --Mod 13.5
								{"WheelMaxAccelForceReverse",		"30.5"}, -- Original value "5.5"  --Mod 12.5
								{"WheelMaxDecelForceBraking",		"50"}, -- Original value "8" --Mod  88
							    {"WheelSuspensionlength", 			"2"}, -- Original value "1.05" --Mod .7
							   -- {"WheelSuspensionlength", 			"2"}, -- Original value "1.05" --Mod 
								
							}
						},	{
							["SPECIAL_KEY_WORDS"] = {"Name", "TRUCK"},
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
                                {"VehicleBoostSpeedFalloff", "0.005"}, -- Original value "5"
								
                            }
                         },	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TRUCK"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HeadlightIntensity", "30"}, -- Original value "6"
								{"TopSpeedForward", "42"}, -- Original value "12"
								{"VehicleBoostMaxSpeed", "40"}, -- Original value "30"
								{"VehicleBoostTime", "100.25"}, -- Original value "1.25"
								{"VehicleJumpForce", "40"}, -- Original value "400"
								{"WheelMaxDecelForceNonBraking", "0.02"}, -- Original value "0.2"     
								{"WheelSuspensionForce", "40"}, -- Original value "10"
							}
						},		
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "WHEELEDBIKE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HeadlightIntensity", "30"}, -- Original value "6"     
								{"TopSpeedForward", "49"}, -- Original value "19"
								{"TurningWheelForce", "-3"}, -- Original value "-3"
								{"TurningWheelForceVR", "0.4"}, -- Original value "0.4"
								{"TurningWheelFrictionBraking", "2"}, -- Original value "2"      
								{"TurningWheelFrictionNonBraking", "8"}, -- Original value "8"
								{"VehicleBoostForce", "1060"}, -- Original value "600"
								{"VehicleBoostMaxSpeed", "65"}, -- Original value "35"     
								{"VehicleBoostRechargeTime", "0.4"}, -- Original value "1.5"
								--{"VehicleBoostSpeedFalloff", "0.01"}, -- Original value "10"
								{"VehicleBoostTime", "60.6"}, -- Original value "0.6"
								{"VehicleGravity", "20"}, -- Original value "20"
								{"VehicleGravityWater", "8"}, -- Original value "8"
								{"VehicleJumpAirControlForce", "0"}, -- Original value "75"
								{"VehicleJumpAirRotateTimeMax", "1"}, -- Original value "1"     
								{"VehicleJumpAirRotateTimeMin", "3"}, -- Original value "3"
								{"VehicleJumpAirRotateXAmount", "10"}, -- Original value "10"
								{"VehicleJumpAirRotateZAmount", "40"}, -- Original value "40"
								{"VehicleJumpForce", "1050"}, -- Original value "450"
								{"WheelDragginess", "5"}, -- Original value "5"      
								{"WheelMaxAccelForceForward", "1060.5"}, -- Original value "5.5"
								{"WheelMaxAccelForceReverse", "55.5"}, -- Original value "5.5"
								{"WheelMaxDecelForceBraking", "1080"}, -- Original value "8"
								{"WheelMaxDecelForceNonBraking", "1"}, -- Original value "2"
								{"WheelSpinniness", "2"}, -- Original value "2"
								{"WheelSuspensionDamping", "10"}, -- Original value "3"
								{"WheelSuspensionForce", "1"}, -- Original value "8"
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "WHEELEDBIKE"},
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"VehicleBoostSpeedFalloff", "0.01"}, -- Original value "10"
							}
						},		
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "HOVERCRAFT"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HeadlightIntensity", "30"}, -- Original value "6"
								{"TopSpeedForward", "65"}, -- Original value "15"
								{"TopSpeedReverse", "60"}, -- Original value "15"
								{"TurningWheelFrictionBraking", "20"}, -- Original value "12"    
								{"TurningWheelFrictionNonBraking", "6"}, -- Original value "12"
								{"VehicleBoostExtraMaxSpeedAir", "5"}, -- Original value "10"
								{"VehicleBoostForce", "400"}, -- Original value "900"
								{"VehicleBoostMaxSpeed", "70"}, -- Original value "25"
								{"VehicleBoostRechargeTime", "1.2"}, -- Original value "2.5"
								{"VehicleBoostSpeedFalloff", "0.05"}, -- Original value "7.5"
								{"VehicleBoostTime", "10.5"}, -- Original value "1.5"
								{"VehicleGravity", "50"}, -- Original value "30"
								{"VehicleGravityWater", "10.5"}, -- Original value "17.5"
								{"VehicleJumpAirControlForce", "220"}, -- Original value "180"
								{"VehicleJumpAirRotateTimeMax", "1"}, -- Original value "3"      
								{"VehicleJumpAirRotateXAmount", "0"}, -- Original value "5"
								{"VehicleJumpAirRotateZAmount", "0"}, -- Original value "5"
								{"VehicleJumpForce", "1875"}, -- Original value "1200"
								{"WheelFrontFrictionDynamic", "4"}, -- Original value "12"
								{"WheelFrontFrictionStatic", "8"}, -- Original value "12"
								{"WheelMaxAccelForceForward", "350"}, -- Original value "9"
								{"WheelMaxAccelForceReverse", "350.5"}, -- Original value "5.5"
								{"WheelMaxDecelForceBraking", "550.5"}, -- Original value "5.5"
								{"WheelMaxDecelForceNonBraking", "0"}, -- Original value "1"
								{"WheelSideFrictionDynamic", "3"}, -- Original value "12"
								{"WheelSideFrictionStatic", "8"}, -- Original value "12"
								{"WheelSuspensionDamping", "0"}, -- Original value "1"
								{"WheelSuspensionForce", "20"}, -- Original value "25"
							}
						},		
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SUBMARINE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HeadlightIntensity", "30"}, -- Original value "6"
								{"TopSpeedForward", "45"}, -- Original value "15"     
								{"UnderwaterEngineDirectionBrakeVertical", "0.02"}, -- Original value "0.2"     
								{"UnderwaterEngineFalloff", "0.07"}, -- Original value "0.7"     
								{"UnderwaterEngineMaxSpeed", "65"}, -- Original value "15"
								{"UnderwaterEnginePower", "32"}, -- Original value "6"
								{"VehicleBoostExtraMaxSpeedAir", "60"}, -- Original value "10"
								{"VehicleBoostMaxSpeed", "65"}, -- Original value "25"
								{"VehicleBoostTime", "12.5"}, -- Original value "2.5"	  
								{"VehicleGravity", "10"}, -- Original value "30"
								{"VehicleJumpAirControlForce", "980"}, -- Original value "180"
								{"WheelMaxDecelForceBraking", "500.05"}, -- Original value "5.5"
								{"WheelMaxDecelForceNonBraking", "0"}, -- Original value "1"
								{"WheelSuspensionForce", "85"}, -- Original value "25"
							}
						},		
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MECH"},
							["VALUE_CHANGE_TABLE"] 	= 
							{    
								{"HeadlightIntensity", "30"}, --  Original value "8" />
								{"TopSpeedForward", "3"}, --  Original value "2" />
								{"TopSpeedReverse", "3"}, --  Original value "15" />    
								{"TurningWheelForce", "-40"}, --  Original value "-4" />     
								{"TurningWheelFrictionBraking", "-12"}, --  Original value "12" />     
								{"VehicleBoostForce", "9"}, --  Original value "900" />
								{"VehicleBoostMaxSpeed", "9"}, --  Original value "25" />     
								{"VehicleBoostRechargeTime", "0.05"}, --  Original value "2.5" />     
								{"VehicleBoostSpeedFalloff", "0.5"}, --  Original value "7.5" />
								{"VehicleGravity", "55"}, --  Original value "70" />
								{"VehicleGravityWater", "90.5"}, --  Original value "17.5" />
								{"VehicleJumpAirControlForce", "1800"}, --  Original value "180" />
								{"WheelMaxAccelForceReverse", "9.5"}, --  Original value "5.5" />
								{"WheelSuspensionDamping", "0"}, --  Original value "1" />
								{"WheelSuspensionForce", "0"}, --  Original value "25" />
							}
						},	
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE