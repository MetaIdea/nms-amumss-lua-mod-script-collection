NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_LASAGNA_VideoMode_v1.2.pak",
["MOD_AUTHOR"]				= "Lasagna_original_idea_by_Rohtang13",
["NMS_VERSION"]				= "3.70",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "UI\BUILDINTERACT.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "...",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IsHidden",		"True"},
							}
						},
					}
				},
			}
		},
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
						["PRECEDING_KEY_WORDS"] = "",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "BuildingModeMaxDistance", 			"900000" }, --Original "60"
								{ "PhotoModeMoveSpeed", 				"22" }, --Original "11"
								{ "PhotoModeMaxDistance", 				"900000" }, --Original "150"
								{ "PhotoModeMaxDistanceSpace", 			"900000" }, --Original "200"
								{ "PhotoModeCollisionRadius", 			"0.0" }, --Original "0.5"
								{ "PhotoModeRollSpeed", 				"15" }, --Original "45"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "SpaceshipFollowCam", },
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "LookStickLimitAngle", 				"360" }, --Original "45"
							}
						},
					}
				},
			}
		},
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\EFFECTS\SCREENFILTERS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
						["PRECEDING_KEY_WORDS"] = "",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "SelectableInPhotoMode", 			"True" }, --Original "60"
							}
						},
					}
				},
			}
		}
	}	
}	
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE