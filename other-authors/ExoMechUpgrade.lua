NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MechUpgrade.pak",
["MOD_DESCRIPTION"]			= "MechUpgrade",
["MOD_AUTHOR"]				= "Gobi42",
["NMS_VERSION"]				= "4.23",
["MODIFICATIONS"] 			= 
	{
		{
			
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"VehicleSolarRegenFactor",     "0.25"},       -- Original "0.1"
								{"MechJetpackTurnSpeed",		"0.5"},		-- Original "3"
								{"MechTurretMaxAngleAir",        "360"},
								{"MechWalkToRunTimeIdle",		"1"},		-- Original "2"
								{"MechLandBrake",				"6"},		-- Original "4"
								{"MechJetpackLandTime",			"0.4"},		-- Original "0.6"
								{"MechTitanFallLandIntroTime",			"3.5"},		-- Original "4.5"
								{"MechJetpackMaxSpeed", 		"30"},
								{"VehicleBoostTime",           "3.0"},      -- Original "2.5"
								{"VehicleBoostRechargeTime",   "1.5"},      -- Original "2.5"
								{"VehicleBoostSpeedMultiplierPercent", 	"100"},
								{"TopSpeedForward",             "3"},
								{"TopSpeedReverse",            "18"}
							},
							
							
						}
					}
				}
				
			}
			
		}
		
	}
}