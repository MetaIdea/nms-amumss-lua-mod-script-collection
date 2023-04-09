NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    =   "shoemakers Gameplay Adjustments.pak",
    ["MOD_AUTHOR"]      =   "shoemakerjones",
    ["LUA_AUTHOR"]      =   "shoemakerjones",
    ["NMS_VERSION"]     =   "4.x",
    ["MOD_DESCRIPTION"] =   "v1.2 - Makes significant changes to they way gameplay is handled.",
	["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BinocTimeBeforeScan", "1"},
								{"BinocMinScanTime", "0.5"},
								{"BinocScanTime", "0.5"},
								{"BinocCreatureScanTime", "0.5"},
								{"WaypointScanTime", "0.5"},
								{"SurveyMaxDistance",  "800"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BinocularSelectedUnknownColour"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"R", "1"},
								{"G", "0.265"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BinocularSelectedColour"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"R", "0.211"},
								{"G", "1"},
								{"B", "0.351"},
							}
						},
						
					}
				},
				{
                    ["MBIN_FILE_SOURCE"]     = "MODELS\\EFFECTS\\SPEEDLINES\\SPEEDLINE.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"]     = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NormalLines1"},
                            ["REMOVE"]     = "SECTION"
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NormalLines2"},
                            ["REMOVE"]     = "SECTION"
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BigLines"},
                            ["REMOVE"]     = "SECTION"
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MiniJump2"},
                            ["REMOVE"]     = "SECTION"
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MiniJump1"},
                            ["REMOVE"]     = "SECTION"
                        },
                    },
                },
                {
					["MBIN_FILE_SOURCE"] 	= "GCCHARACTERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"LadderDistanceToAutoMount", "-1"},
                                {"SitPostureChangeTimeMin", "0.1"},
                                {"SitPostureChangeTimeMax", "1"}
							}
						}
                    }
				}
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE