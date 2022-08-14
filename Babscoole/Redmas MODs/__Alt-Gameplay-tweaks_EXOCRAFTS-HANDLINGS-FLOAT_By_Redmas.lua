NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "__Alt-Gameplay-tweaks_EXOCRAFTS-HANDLINGS-FLOAT_By_Redmas.pak",
["MOD_DESCRIPTION"] = "Every exocrafts highly maneuverable on every terrain",
["MOD_AUTHOR"]      = "Redmas",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "3.99",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"UnderwaterScannerIconRangeBoost", "0"},
								{"MechAltJumpMode",                 "True"},
								{"MechContrailAlpha",               "0.006"},
								{"MechLandBrake",                   "0.9"},
								{"MechJetpackStrafeStrength",       "1.5"},
								{"MechJetpackLandTime",             "1E-05"},
								{"MechJetpackBrake",                "1.2"},
								{"MechJetpackMaxSpeed",             "40"},
								{"MechJetpackUpForce",              "80"},
								{"MechJetpackFallForce",            "40"},
								{"MechJetpackDrainRate",            "0.05"},
								{"MechTitanFallCameraShakeDist",    "180"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"VehicleLocalScan","GcScanData.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"PulseRange", "200"},
								{"ChargeTime", "20"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","BIKE",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
    								{"WheelSuspensionForce",         "20"},
    								{"TopSpeedForward",              "65"},
    								{"TopSpeedReverse",              "60"},
    								{"WheelMaxAccelForceForward",    "350"},
    								{"WheelMaxAccelForceReverse",    "350.5"},
    								{"WheelMaxDecelForceNonBraking", "-1.1"},
    								{"WheelMaxDecelForceBraking",    "550.05"},
    								{"WheelDragginess",              "1"},
    								{"TurningWheelForce",            "-4"},
    								{"TurningWheelFrictionBraking",  "20"},
    								{"VehicleGravity",               "40.5"},
    								{"VehicleGravityWater",          "10.5"},
    								{"VehicleJumpForce",             "1875"},
    								{"VehicleJumpAirControlForce",   "220"},
    								{"VehicleBoostForce",            "800"},
    								{"VehicleBoostMaxSpeed",         "70"},
    								{"VehicleBoostExtraMaxSpeedAir", "5"},
    								{"VehicleBoostSpeedFalloff",     "0.05"},
    								{"VehicleBoostTime",             "10.5"},
    								{"VehicleBoostRechargeTime",     "0.02"},
    								{"VehicleJumpAirRotateXAmount",  "0"},
    								{"VehicleJumpAirRotateZAmount",  "0"},
    								{"WheelSpinParticleMaxRate",     "11"},
    								{"AudioBoostStart",              "DragonFly_Boost_Start"},
    								{"AudioBoostStop",               "DragonFly_Boost_Stop"},
    								{"AudioHornStart",               "DragonFly_Horn_Start"},
    								{"AudioHornStop",                "DragonFly_Horn_Stop"},
    								{"AudioIdleExterior",            "DragonFly_Idle_Exterior"},
    								{"AudioImpacts",                 "DragonFly_Impacts"},
    								{"AudioStart",                   "DragonFly_Start"},
    								{"AudioStop",                    "DragonFly_Stop"},
    								{"AudioSuspension",              "DragonFly_Suspension"},
    								{"AudioJump",                    "DragonFly_Jump"},
    								{"HeadlightIntensity",           "30"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MED_BUGGY",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
    								{"WheelSuspensionlength",        "0.7"},
    								{"TopSpeedForward",              "54"},
    								{"WheelMaxAccelForceForward",    "300.5"},
    								{"WheelMaxAccelForceReverse",    "900.1"},
    								{"WheelMaxDecelForceNonBraking", "0.02"},
    								{"WheelMaxDecelForceBraking",    "188"},
    								{"VehicleGravity",               "40"},
    								{"VehicleGravityWater",          "38"},
    								{"VehicleJumpForce",             "920"},
    								{"VehicleBoostForce",            "480"},
    								{"VehicleBoostMaxSpeed",         "60"},
    								{"VehicleBoostSpeedFalloff",     "0.001"},
    								{"VehicleBoostTime",             "1"},
    								{"VehicleBoostRechargeTime",     "0.03"},
    								{"HeadlightIntensity",           "30"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","TRUCK",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
    								{"WheelSuspensionForce",         "40"},
    								{"TopSpeedForward",              "42"},
    								{"WheelMaxDecelForceNonBraking", "0.002"},
    								{"VehicleJumpForce",             "40"},
    								{"VehicleBoostForce",            "520"},
    								{"VehicleBoostMaxSpeed",         "70"},
    								{"VehicleBoostSpeedFalloff",     "0.005"},
    								{"VehicleBoostTime",             "100.25"},
    								{"AudioImpacts",                 "Buggy_Impacts"},
    								{"AudioSuspension",              "Buggy_Suspension"},
    								{"AudioJump",                    "Buggy_Jump"},
    								{"HeadlightIntensity",           "30"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","WHEELEDBIKE",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
    								{"WheelSuspensionForce",           "12"},
    								{"TopSpeedForward",                "49"},
    								{"WheelMaxAccelForceForward",      "1060.5"},
    								{"WheelMaxAccelForceReverse",      "655.5"},
    								{"WheelMaxDecelForceNonBraking",   "0.002"},
    								{"WheelMaxDecelForceBraking",      "5528"},
    								{"WheelSpinniness",                "12"},
    								{"WheelDragginess",                "55.01"},
    								{"TurningWheelForce",              "-6"},
    								{"TurningWheelForceVR",            "0.8"},
    								{"TurningWheelFrictionNonBraking", "28"},
    								{"TurningWheelFrictionBraking",    "52"},
    								{"VehicleGravity",                 "35"},
    								{"VehicleGravityWater",            "58"},
    								{"VehicleJumpForce",               "1050"},
    								{"VehicleJumpAirControlForce",     "0"},
    								{"VehicleBoostForce",              "560"},
    								{"VehicleBoostMaxSpeed",           "65"},
    								{"VehicleBoostSpeedFalloff",       "0.001"},
    								{"VehicleBoostTime",               "10.2"},
    								{"VehicleBoostRechargeTime",       "0.4"},
    								{"VehicleJumpAirRotateXAmount",    "100"},
    								{"VehicleJumpAirRotateZAmount",    "400"},
    								{"VehicleJumpAirRotateTimeMin",    "30"},
    								{"VehicleJumpAirRotateTimeMax",    "100"},
    								{"HeadlightIntensity",             "30"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","HOVERCRAFT",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
    								{"WheelSuspensionForce",           "20"},
    								{"WheelSuspensionDamping",         "0"},
    								{"TopSpeedForward",                "45"},
    								{"TopSpeedReverse",                "10"},
    								{"WheelMaxAccelForceForward",      "30"},
    								{"WheelMaxAccelForceReverse",      "30.5"},
    								{"WheelMaxDecelForceNonBraking",   "-1.1"},
    								{"WheelMaxDecelForceBraking",      "550.05"},
    								{"WheelFrontFrictionDynamic",      "4"},
    								{"WheelFrontFrictionStatic",       "8"},
    								{"WheelSideFrictionDynamic",       "3"},
    								{"WheelSideFrictionStatic",        "8"},
    								{"TurningWheelFrictionNonBraking", "6"},
    								{"TurningWheelFrictionBraking",    "20"},
    								{"VehicleGravity",                 "40.5"},
    								{"VehicleGravityWater",            "10.5"},
    								{"VehicleJumpForce",               "875"},
    								{"VehicleJumpAirControlForce",     "220"},
    								{"VehicleBoostForce",              "800"},
    								{"VehicleBoostMaxSpeed",           "50"},
    								{"VehicleBoostExtraMaxSpeedAir",   "5"},
    								{"VehicleBoostSpeedFalloff",       "0.05"},
    								{"VehicleBoostTime",               "10.5"},
    								{"VehicleBoostRechargeTime",       "0.02"},
    								{"VehicleJumpAirRotateXAmount",    "0"},
    								{"VehicleJumpAirRotateZAmount",    "0"},
    								{"VehicleJumpAirRotateTimeMax",    "0.5"},
    								{"DriveOnTopOfWater",              "False"},
    								{"HeadlightIntensity",             "30"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","SUBMARINE",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
    								{"UnderwaterEnginePower",                  "32.2"},
    								{"UnderwaterEngineMaxSpeed",               "65"},
    								{"UnderwaterEngineFalloff",                "0.07"},
    								{"UnderwaterEngineDirectionBrakeVertical", "0.002"},
    								{"WheelSuspensionForce",                   "85"},
    								{"TopSpeedForward",                        "45"},
    								{"WheelMaxDecelForceNonBraking",           "1E-05"},
    								{"WheelMaxDecelForceBraking",              "500.05"},
    								{"VehicleGravity",                         "10"},
    								{"VehicleJumpAirControlForce",             "980"},
    								{"VehicleBoostMaxSpeed",                   "65"},
    								{"VehicleBoostExtraMaxSpeedAir",           "60"},
    								{"VehicleBoostTime",                       "12.5"},
    								{"HeadlightIntensity",                     "30"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MECH",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
    								{"WheelSuspensionForce",        "0"},
    								{"WheelSuspensionDamping",      "0"},
    								{"TopSpeedForward",             "3"},
    								{"TopSpeedReverse",             "3"},
    								{"WheelMaxAccelForceReverse",   "9.5"},
    								{"TurningWheelForce",           "-40"},
    								{"TurningWheelFrictionBraking", "-12"},
    								{"VehicleGravity",              "55"},
    								{"VehicleGravityWater",         "90.5"},
    								{"VehicleJumpAirControlForce",  "18000"},
    								{"VehicleBoostMaxSpeed",        "9"},
    								{"VehicleBoostSpeedFalloff",    "0.5"},
    								{"VehicleBoostRechargeTime",    "0.05"},
    								{"HeadlightIntensity",          "30"},
							}
						},
					}
				}
			}
		}
	}	
}