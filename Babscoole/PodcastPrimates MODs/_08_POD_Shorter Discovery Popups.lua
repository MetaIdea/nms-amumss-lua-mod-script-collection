NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "_08_POD_Shorter Discovery Popups.pak",
["MOD_AUTHOR"]    = "PodcastPrimate",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.03",
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
							["INTEGER_TO_FLOAT"] = "FORCE", 
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DiscoverPlanetTotalTime",   "1.5"}
								{"DiscoverPlanetMessageWait", "0"},
								{"DiscoverPlanetMessageTime", "1"},
							}
						},						
					}
				},				
			}
		}
	}	
}