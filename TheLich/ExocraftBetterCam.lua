NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ExocraftBetterCam.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "TheLich",
["NMS_VERSION"]				= "1.0.2",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "BuggyFollowCam",
              ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"VertRotationMin", -40},
								{"VertRotationMax", 80},
								{"VertRotationOffset", 2.5},
								{"CenterStartTime", 600},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "SubmarineFollowCam",
              ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"OffsetY", -1.5},
								{"OffsetYAlt", -2.3},
								{"UpMinDistance", -10},
								{"UpMaxDistance", 10},
								{"VertRotationSpeed", 20},
								{"VertRotationMin", -30},
								{"VertRotationMax", 85},
								{"VertRotationOffset", 2.5},
								{"VertRotationOffsetMinAngle", 10},
								{"VertRotationOffsetMaxAngle", 50},
								{"CenterStartTime", 600},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "BikeFollowCam",
              ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"VertRotationMin", -60},
								{"VertRotationMax", 65},
								{"CenterStartTime", 600},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "WheeledBikeFollowCam",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"VertRotationMax", 80},
								{"CenterStartTime", 600},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "TruckFollowCam",
              ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"OffsetY", 6.5},
								{"OffsetYAlt", 6.5},
								{"UpMinDistance", 3.3},
								{"UpMaxDistance", 10},
								{"VertRotationMin", -40},
								{"VertRotationMax", 65},
								{"VertRotationOffset", -3},
								{"VertRotationOffsetMinAngle", -10},
								{"VertRotationOffsetMaxAngle", 35},
								{"CenterStartTime", 600},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "MechFollowCam",
              ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSpeed", 4},
								{"SpeedRange", 20},
								{"OffsetX", 1},
								{"OffsetY", 2.1},
								{"OffsetYAlt", 2.4},
								{"OffsetZFlat", 1},
								{"BackMinDistance", 6},
								{"BackMaxDistance", 10},
								{"UpMinDistance", 0},
								{"UpMaxDistance", 3},
								{"VertRotationMin", -55},
								{"VertRotationMax", 70},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "MechShootCam",
              ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"VertRotationMax", 45},
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