NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "_Bodie420.BaseBuilding.2.0.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "2.0",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"DisableBaseBuildingLimits",    "True"}, --Original False
								{"AllowGlobalPartSnapping",      "True"}, --Original False
								{"DisableBasePowerRequirements", "True"}, --Original False
							}
						},
					}
				}
			}
		}
	}	
}