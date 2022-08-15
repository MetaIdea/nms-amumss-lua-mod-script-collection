NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] 		= "shoemakers Gameplay Changes.pak",
	["MOD_DESCRIPTION"]		= "Gameplay changes",
	["MOD_AUTHOR"]			= "shoemakerjones",
	["LUA_AUTHOR"]      	= "shoemakerjones",
	["NMS_VERSION"]			= "3.98",
	["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCGAMEPLAYGLOBALS.GLOBAL.MBIN"},
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
                    ["MBIN_FILE_SOURCE"]     = {"MODELS\EFFECTS\SPEEDLINES\SPEEDLINE.SCENE.MBIN"},
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
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MiniJump3"},
                            ["REMOVE"]     = "SECTION"
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MiniJump4"},
                            ["REMOVE"]     = "SECTION"
                        },
                    },
                },
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE