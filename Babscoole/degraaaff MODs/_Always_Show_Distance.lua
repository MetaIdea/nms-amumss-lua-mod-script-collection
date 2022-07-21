NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "_Always_Show_Distance.pak",
["MOD_AUTHOR"]    = "degraaaff",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.89",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCUIGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{						
							["VALUE_CHANGE_TABLE"] = 
							{
								{"HUDMarkerDistanceOrTimeDistance", "10000000"},
							}
						},
					}
				},
			}
		},
	}	
}