NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "_Winder_Inertia_Drifto.pak",
["MOD_DESCRIPTION"]		= "Makes rocket boots better",
["MOD_AUTHOR"]			= "WinderTP",
["NMS_VERSION"]			= "3.38.0.1",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MiningLaserDrainSpeed",				"0.25"	},	
								{"SummoningRange",						"10000"	},	
								{"MiningLaserSpeed",					"2.4"	},	
								{"GunBaseMiningDamage",					"30"	},	
								{"VehicleMaxSummonDistance",			"500"	},
								{"VehicleMaxSummonDistanceUnderwater",	"250"	},
								{"VehicleBoostFuelRate",				"0.2"	},
								{"VehicleBoostFuelRateSurvival",		"1"		},
								{"VehicleFuelRate",						"0.15"	},
								{"VehicleFuelRateSurvival",				"0.3"	},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "BIKE"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"UnderwaterEnginePower",				"4"		},	
								{"UnderwaterEngineMaxSpeed",			"40"	},
								{"TopSpeedForward",						"55"	},
								{"TopSpeedReverse",						"18"	},
								{"VehicleBoostMaxSpeed",				"50"	},
								{"VehicleBoostExtraMaxSpeedAir",		"60"	},
								{"VehicleBoostTime",					"10"	},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MED_BUGGY"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"UnderwaterEnginePower",				"4"		},	
								{"UnderwaterEngineMaxSpeed",			"35"	},
								{"TopSpeedForward",						"50"	},
								{"TopSpeedReverse",						"12"	},
								{"WheelMaxAccelForceForward",			"7"		},
								{"WheelMaxAccelForceReverse",			"6"		},
								{"WheelSpinniness",						"2"		},
								{"TurningWheelFrictionNonBraking",		"1"		},
								{"TurningWheelFrictionBraking",			"4"		},
								{"VehicleGravityWater",					"15"	},
								{"VehicleJumpAirControlForce",			"80"	},
								{"VehicleBoostMaxSpeed",				"90"	},
								{"VehicleBoostExtraMaxSpeedAir",		"150"	},
								{"VehicleBoostSpeedFalloff",			"5"		},
								{"VehicleBoostTime",					"15"	},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TRUCK"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"UnderwaterEnginePower",				"3.5"	},	
								{"UnderwaterEngineMaxSpeed",			"30"	},
								{"TopSpeedForward",						"25"	},
								{"TopSpeedReverse",						"12"	},
								{"WheelMaxAccelForceForward",			"7.5"	},
								{"WheelMaxAccelForceReverse",			"1.6"	},
								{"VehicleBoostForce",					"300"	},
								{"VehicleBoostMaxSpeed",				"45"	},
								{"VehicleBoostExtraMaxSpeedAir",		"65"	},
								{"VehicleBoostTime",					"12.5"	},
								{"VehicleBoostRechargeTime",			"10"	},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "WHEELEDBIKE"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"UnderwaterEnginePower",				"3.5"	},	
								{"UnderwaterEngineMaxSpeed",			"50"	},
								{"TopSpeedForward",						"55"	},
								{"TopSpeedReverse",						"25"	},
								{"WheelMaxAccelForceForward",			"7.5"	},
								{"WheelMaxAccelForceReverse",			"6.5"	},
								{"HardStopSpeedThreshold",				"0.025"	},
								{"VehicleBoostMaxSpeed",				"65"	},
								{"VehicleBoostExtraMaxSpeedAir",		"80"	},
								{"VehicleBoostSpeedFalloff",			"6.5"	},
								{"VehicleBoostTime",					"60"	},
								{"VehicleBoostRechargeTime",			"6"		},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SUBMARINE"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"UnderwaterEnginePower",				"8.5"	},	
								{"UnderwaterEngineMaxSpeed",			"35"	},
								{"TopSpeedForward",						"30"	},
								{"TopSpeedReverse",						"25"	},
								{"WheelMaxAccelForceForward",			"15"	},
								{"WheelMaxAccelForceReverse",			"10"	},
								{"VehicleBoostMaxSpeed",				"40"	},
								{"VehicleBoostTime",					"25"	},
								{"VehicleBoostRechargeTime",			"6"		},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MECH"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"VehicleJumpForce",					"1650"	},
								{"VehicleJumpAirControlForce",			"220"	},
								{"VehicleBoostForce",					"1500"	},
								{"VehicleBoostMaxSpeed",				"40"	},
								{"VehicleBoostTime",					"25"	},
								{"VehicleBoostRechargeTime",			"6"		},
							}
						},
					},
				},				
			}
		}
	},
}