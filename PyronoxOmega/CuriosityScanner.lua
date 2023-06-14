Author = "PyronoxOmega"
ModName = "CuriosityScanner"
GameVersion = "4.30"
ModVersion = "1.5"
Description = "increase number curiosities spawn on planet surface"


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= ModName..""..GameVersion..-ModVersion..".pak",
["MOD_DESCRIPTION"]	= Description,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/PLACEMENTVALUES/SPAWNDENSITYLIST.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  =  {"Name", "RARE3"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",		"400"},
								{"RegionScale",		"5"},				
							}
						},
					}
				},				
			}
		}
	}	
}