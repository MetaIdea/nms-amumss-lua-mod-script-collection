NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "PlayerSpawnLocationOverride.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PlayerSpawnLocationOverride",	"SpaceStation"}, --ORIGINAL: "GameStartPlanet"
								--None, FromSettings, Space, SpaceStation, RandomPlanet, GameStartPlanet
							}
						}
					}
				}
			}
		}
	}	
}