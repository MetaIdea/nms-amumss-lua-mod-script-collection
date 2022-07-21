NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "_Brighter_Sunlight.pak",
["MOD_AUTHOR"]    = "degraaaff",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.35",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] = 
							{
								{"SunLightIntensity", "5.5"}, -- Original "3"
							}
						},
					}
				},
			}
		},
	}	
}