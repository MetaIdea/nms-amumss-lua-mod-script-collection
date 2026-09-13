NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_MOD_NoRandomSentinels", 
["MOD_AUTHOR"]				= "Mjjstral AKA MetaIdea & NooBzPoWaH",
["LUA_AUTHOR"]				= "NooBzPoWaH",
["NMS_VERSION"]				= "6.+",
["MOD_DESCRIPTION"]			= "This mods removes random (drones) sentinels spawns on planets.",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpawnRobots",	"False"}  --Original "True"
							}
						}
					} --1 global replacement
				}	
			}
		}
	}	
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE