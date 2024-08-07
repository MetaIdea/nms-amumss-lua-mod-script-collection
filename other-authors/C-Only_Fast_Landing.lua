NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]			= "C-Only_Fast_Landing.pak",
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
							}
						}
					}
				}
			}
		}
	}	
}	
