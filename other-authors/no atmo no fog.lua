ModName = "noatmonofog"
GameVersion = "3_81"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
  ["MOD_DESCRIPTION"]		= "Makes planets with no atmosphere also have no fog",         
  ["MOD_AUTHOR"]			= "degraaaff",
  ["LUA_AUTHOR"]			= "Xen0nex",
  ["NMS_VERSION"]			= GameVersion,     
  ["MODIFICATIONS"] 		= 
    {
	    {
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCSKYGLOBALS.GLOBALS.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NoAtmosphereFogStrength",			        0},		-- (Original value 0.3)
								{"NoAtmosphereFogMax",                     0},		-- (Original value 0.97)
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