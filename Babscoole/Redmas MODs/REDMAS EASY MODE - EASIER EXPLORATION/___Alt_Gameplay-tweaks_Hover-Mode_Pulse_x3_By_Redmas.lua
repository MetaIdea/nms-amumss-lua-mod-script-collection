NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "___Alt_Gameplay-tweaks_Hover-Mode_Pulse_x3_By_Redmas.pak",
["MOD_DESCRIPTION"] = "REDMAS EASY MODE - EASIER EXPLORATION",
["MOD_AUTHOR"]      = "Redmas",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "3.99",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"HoverTakeoffHeight", "590"},
								{"HoverMinSpeed", "0.1"},
								{"CameraPostWarpFov", "120"},
								{"MiniWarpLinesNum", "0"},
								{"MiniWarpSpeed", "90000"},
								{"LandGroundTakeOffTime", "0.2"},
								{"ShakePowerScaler", "0.07"}, 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine" },
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"MinSpeed", "0.1"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Control", "AtmosCombatEngine" },
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"MinSpeed", "0.1"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"MinSpeed", "0.1"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"MinSpeed", "0.1"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "AtmosCombatEngine" },
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"MinSpeed", "0.1"},
							}
						},
					}
				}
			}
		}
	}	
}