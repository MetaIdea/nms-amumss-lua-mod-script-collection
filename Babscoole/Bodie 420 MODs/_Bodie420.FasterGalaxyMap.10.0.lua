NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "_Bodie420.FasterGalaxyMap.10.0.pak", 
["MOD_AUTHOR"]      = "Bodie 420",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "3.97",
["MOD_DESCRIPTION"] = "",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCGALAXYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"HandControlMoveSpeed", "10"},
								{"HandControlZoomSpeed", "50"},
							}
						},
						{							
							["PRECEDING_KEY_WORDS"] = {"Camera"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FreePanSpeed",      "10"}, 
								{"FreePanSpeedTurbo", "50"},
							}
						}
					}
				}
			}
		}
	}	
}