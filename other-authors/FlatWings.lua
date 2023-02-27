--Life support (PROTECT) 1h
	TakeOffEndingAtFrame = 150				--80
											--145 slight tilt up
											--150 full flat
	LandingStartFrame = 30					--1

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "FlatWings.pak",
	["MOD_DESCRIPTION"]	= "Makes exotic wings flat",
	["MOD_AUTHOR"]		= "Sin0b0l",
	["NMS_VERSION"]		= "2.4",
	["MODIFICATIONS"]	=
	{
		{
			["PAK_FILE_SOURCE"] = "",
			["MBIN_CHANGE_TABLE"] = 
				{
					{
						["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A\ENTITIES\WINGS_A.ENTITY.MBIN",
						["EXML_CHANGE_TABLE"] = 
							{
								--Cold Module
								{ --Life Support general
									["SPECIAL_KEY_WORDS"] = {"Anim", "TAKEOFF"},
									["PRECEDING_KEY_WORDS"] = {""},
									["VALUE_CHANGE_TABLE"] = { {"FrameEnd", TakeOffEndingAtFrame},}
								},
								--Hot Module
								{ --Life Support general
									["SPECIAL_KEY_WORDS"] = {"Anim", "LANDING"},
									["PRECEDING_KEY_WORDS"] = {""},
									["VALUE_CHANGE_TABLE"] = {{"FrameStart", LandingStartFrame},}
			--{"Value", ProtectValue},
								},
							},
					},
				},
		},
	},
}
