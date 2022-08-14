NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "_CAMERAS-tweaks_By_Redmas.pak",
["MOD_DESCRIPTION"] = "Overhaul of all the cameras",
["MOD_AUTHOR"]      = "Redmas",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "3.99",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"CharacterUnarmedCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance", "4.2"},
								{"BackMaxDistance", "5.2"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"CharacterRunCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance", "3.5"},
								{"BackMaxDistance", "7"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"CharacterAirborneCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance", "3.5"},
								{"BackMaxDistance", "17.2"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"CharacterMeleeBoostCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance", "8.5"},
								{"BackMaxDistance", "20"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"CharacterRocketBootsCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance", "8.5"},
								{"BackMaxDistance", "12"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"CharacterRocketBootsChargeCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance", "8.5"},
								{"BackMaxDistance", "15.5"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"CharacterSpaceCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance", "2"},
								{"BackMaxDistance", "2"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"CharacterGrabbedCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance", "1.5"},
								{"BackMaxDistance", "5.5"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"BuggyFollowCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"MinSpeed",                "10"},
								{"SpeedRange",              "15"},
								{"OffsetY",                 "3.8"},
								{"BackMinDistance",         "3"},
								{"BackMaxDistance",         "5"},
								{"UpMinDistance",           "0"},
								{"UpMaxDistance",           "1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"HovercraftFollowCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"MinSpeed",                "10"},
								{"OffsetY",                 "3.8"},
								{"OffsetYAlt",              "5"},
								{"PanNear",                 "-1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"SubmarineFollowCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"MinSpeed",                "10"},
								{"SpeedRange",              "15"},
								{"OffsetY",                 "3.8"},
								{"OffsetZFlat",             "-2.5"},
								{"BackMinDistance",         "8"},
								{"BackMaxDistance",         "18.75"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"BikeFollowCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"MinSpeed",                "10"},
								{"SpeedRange",              "15"},
								{"OffsetY",                 "3.8"},
								{"OffsetYAlt",              "3.8"},
								{"OffsetZFlat",             "0.5"},
								{"BackMinDistance",         "8"},
								{"BackMaxDistance",         "18"},
								{"UpMinDistance",           "0"},
								{"UpMaxDistance",           "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"WheeledBikeFollowCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"MinSpeed",                "10"},
								{"SpeedRange",              "15"},
								{"OffsetY",                 "0.9"},
								{"BackMinDistance",         "5"},
								{"BackMaxDistance",         "13"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TruckFollowCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"MinSpeed",                "10"},
								{"SpeedRange",              "15"},
								{"OffsetY",                 "3.8"},
								{"OffsetZFlat",             "1.5"},
								{"BackMinDistance",         "2"},
								{"BackMaxDistance",         "8"},
								{"UpMinDistance",           "0"},
								{"UpMaxDistance",           "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"SpaceshipFollowCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance",            "0"},
								{"BackMaxDistance",            "100"},
								{"UpMinDistance",              "12"},
								{"UpMaxDistance",              "80"},
								{"VertRotationMin",            "-380"},
								{"VertRotationMax",            "380"},
								{"VertRotationOffsetMinAngle", "-380"},
								{"VertRotationOffsetMaxAngle", "380"},
								{"LookStickLimitAngle",        "115"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"DropshipFollowCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance",            "8"},
								{"BackMaxDistance",            "80"},
								{"UpMinDistance",              "12"},
								{"UpMaxDistance",              "80"},
								{"VertRotationMin",            "-380"},
								{"VertRotationMax",            "380"},
								{"VertRotationOffsetMinAngle", "-380"},
								{"VertRotationOffsetMaxAngle", "380"},
								{"LookStickLimitAngle",        "115"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ShuttleFollowCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance",            "2"},
								{"BackMaxDistance",            "90"},
								{"UpMinDistance",              "5"},
								{"UpMaxDistance",              "80"},
								{"VertRotationMin",            "-380"},
								{"VertRotationMax",            "380"},
								{"VertRotationOffsetMinAngle", "-380"},
								{"VertRotationOffsetMaxAngle", "380"},
								{"LookStickLimitAngle",        "115"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"RoyalShipFollowCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance",            "0"},
								{"BackMaxDistance",            "80"},
								{"UpMinDistance",              "12"},
								{"UpMaxDistance",              "80"},
								{"VertRotationMin",            "-380"},
								{"VertRotationMax",            "380"},
								{"VertRotationOffsetMinAngle", "-380"},
								{"VertRotationOffsetMaxAngle", "380"},
								{"LookStickLimitAngle",        "115"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"SailShipFollowCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance",            "0"},
								{"BackMaxDistance",            "80"},
								{"UpMinDistance",              "12"},
								{"UpMaxDistance",              "80"},
								{"VertRotationMin",            "-380"},
								{"VertRotationMax",            "380"},
								{"VertRotationOffsetMinAngle", "-380"},
								{"VertRotationOffsetMaxAngle", "380"},
								{"LookStickLimitAngle",        "115"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ScienceShipFollowCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance",            "5"},
								{"BackMaxDistance",            "70"},
								{"UpMinDistance",              "12"},
								{"UpMaxDistance",              "80"},
								{"VertRotationMin",            "-380"},
								{"VertRotationMax",            "380"},
								{"VertRotationOffsetMinAngle", "-380"},
								{"VertRotationOffsetMaxAngle", "380"},
								{"LookStickLimitAngle",        "115"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"AlienShipFollowCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance",            "2"},
								{"BackMaxDistance",            "60"},
								{"UpMinDistance",              "12"},
								{"VertRotationMin",            "-380"},
								{"VertRotationMax",            "380"},
								{"VertRotationOffsetMinAngle", "-380"},
								{"VertRotationOffsetMaxAngle", "380"},
								{"LookStickLimitAngle",        "115"},
							}
						},
						{
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"FirstPersonFoV",  "85"},
								{"ThirdPersonFoV",  "100"},
								{"ShipFoVMiniJump", "125"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"WarpSettings","GcCameraWarpSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"FocusPointDist",   "1E+09"},
								{"OffsetZStartBias", "100"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FreighterWarpSettings","GcCameraWarpSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"OffsetZFrequency_1", "1.1"},
								{"OffsetZFrequency_2", "0.9"},
								{"OffsetZStartBias", "10"},
								{"OffsetZBias", "-7"},
								{"OffsetYFrequency_1", "1.1"},
								{"OffsetYFrequency_2", "0.9"},
								{"OffsetXFrequency", "0.25"},
								{"RollRange", "1"},
								{"YawRange", "600"},
							}
						},
					}
				}
			}
		}
	}	
}