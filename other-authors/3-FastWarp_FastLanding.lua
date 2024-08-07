NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]			= "3-FastWarp_FastLanding.pak",
["MOD_AUTHOR"]				= "Strange7",
["LUA_AUTHOR"]				= "Strange7",
["NMS_VERSION"]				= "5.03",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]			= 

	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{

							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "LandingMaxSpeed", 					"200" }, 	--Original "80"
								{ "HoverTakeoffHeight", 				"50" }, 	--Original "90"
								{ "HoverTime", 							"0.5" }, 	--Original "2"
								{ "HoverAlignTime", 					"0.4" }, 	--Original "0.7"
								{ "HoverTimeAlt", 						"2" }, 		--Original "5"
								{ "HoverSpeedFactor", 					"50" }, 	--Original "20"
								{ "HoverMinSpeed", 						"0.4" }, 	--Original "1"
								{ "HoverLandReachedDistance", 			"30" }, 	--Original "10"
								{ "HoverLandManeuvreTimeMin", 			"0.3" }, 	--Original "0.7"
								{ "HoverLandManeuvreTimeMax", 			"0.4" }, 	--Original "1.2"
								{ "HoverLandManeuvreTimeHmdMin", 		"0.4" }, 	--Original "1.2"
								{ "HoverLandManeuvreTimeHmdMax", 		"0.5" }, 	--Original "2"
								{ "LandingButtonMinTime", 				"0.3" }, 	--Original "0.5"
								{ "LandingPushNoseUpFactor", 			"0.05" }, 	--Original "0.15"
								{ "HoverMaxSpeed", 						"350" }, 	--Original "150"
								{ "LandGroundTakeOffTime", 				"0.5" }, 	--Original "1.2"
								{ "DockingRotateSpeed", 				"3" }, 		--Original "1"
								{"EnablePulseDriveSpaceStationOrient",  "True"},	--Original "False"
								{"MiniWarpMarkerApproachSlowdown",      "5"},		--Original "0.5"
								{"MiniWarpAlignSlerp",                  "0.2"},		--Original "0.08"
								{"MiniWarpPlanetRadius",                "200"},		--Original "500"
								{"MiniWarpStationRadius",               "200"},		--Original "700"
								{"MiniWarpChargeTime",                  "0.5"},		--Original "2"
								{"MiniWarpSpeed",                       "100000"},	--Original "30000"
								{"MiniWarpCooldownTime",                "0.75"},	--Original "2"
								{"MiniWarpMinPlanetDistance",           "300"},		--Original "2000"
								{"MiniWarpStoppingMarginDefault",       "750"},		--Original "2500"
								{"MiniWarpTrackingMargin",              "20"},		--Original "100"
								{"MiniWarpExitSpeed",                   "450"},		--Original "1000"
								{"MiniWarpExitTime",                    "0.25"},	--Original "0.5"
								{"MiniWarpHUDArrowAttractAngle",        "2"},		--Original "10"
								{"MiniWarpHUDArrowAttractAngleStation", "2"},		--Original "5"
								{"MiniWarpHUDArrowAttractAngleDense",   "1"},		--Original "4"	
							}
						},

					}
				}
			}
		}
	}	
}	
