ModName = "noatmonodust"
GameVersion = "5_52"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
  ["MOD_DESCRIPTION"]		= "Makes planets with no atmosphere also have no dust",         
  ["MOD_AUTHOR"]			= "degraaaff",
  ["LUA_AUTHOR"]			= "Xen0nex",
  ["NMS_VERSION"]			= GameVersion,     
  ["MODIFICATIONS"] 		= 
    {
	    {
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARCOLD.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_MATCH"] = "MODELS/EFFECTS/HEAVYAIR/MARS/MARS.SCENE.MBIN",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HeavyAir",			        ""},		-- (Original value "MODELS/EFFECTS/HEAVYAIR/MARS/MARS.SCENE.MBIN")
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARWEATHER.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_MATCH"] = "MODELS/EFFECTS/HEAVYAIR/MARS/MARS.SCENE.MBIN",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HeavyAir",			        ""},		-- (Original value "MODELS/EFFECTS/HEAVYAIR/MARS/MARS.SCENE.MBIN")
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
