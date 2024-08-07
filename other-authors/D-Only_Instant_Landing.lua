NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]			= "D-Only_Instant_Landing.pak",
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
								{ "LandingMaxSpeed", 					"400" }, 	--Original "80"
								{ "HoverTakeoffHeight", 				"50" }, 	--Original "90"
								{ "HoverTime", 							"0.1" }, 	--Original "2"
								{ "HoverAlignTime", 					"0.1" }, 	--Original "0.7"
								{ "HoverTimeAlt", 						"0.1" }, 	--Original "5"
								{ "HoverAlignTimeAlt", 					"1" }, 		--Original "1.5"
								{ "HoverSpeedFactor", 					"60" }, 	--Original "20"
								{ "HoverMinSpeed", 						"0.1" }, 	--Original "1"
								{ "HoverLandReachedMinTime", 			"0.1" }, 	--Original "0.2"
								{ "HoverLandReachedDistance", 			"80" }, 	--Original "10"
								{ "HoverLandManeuvreTimeMin", 			"0.1" }, 	--Original "0.7"
								{ "HoverLandManeuvreTimeMax", 			"0.1" }, 	--Original "1.2"
								{ "HoverLandManeuvreTimeHmdMin", 		"0.1" }, 	--Original "1.2"
								{ "HoverLandManeuvreTimeHmdMax", 		"0.1" }, 	--Original "2"
								{ "HoverLandManeuvreTimeWaterMultiplier", "6" }, 		--Original "2"
								{ "LandingCheckBuildingRadiusFactor", 	"0.1" }, 	--Original "1.1"
								{ "LandingButtonMinTime", 				"0.1" }, 	--Original "0.5"
								{ "LandingPushNoseUpFactor", 			"0.05" }, 	--Original "0.15"
								{ "NoBoostShipNearMinTime", 			"6" }, 		--Original "3"
								{ "HoverMaxSpeed", 						"600" }, 	--Original "150"
								{ "LandGroundTakeOffTime", 				"0.1" }, 	--Original "1.2"
								{ "DockingRotateSpeed", 				"15" }, 	--Original "1"
							}
						}
					}
				}
			}
		}
	}	
}	
