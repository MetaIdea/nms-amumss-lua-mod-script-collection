NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BuildingsOnPlanetsRemoved.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 		
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{		
							["REPLACE_TYPE"] 		= "ALL", -- BUT these actually need to be excluded "Harvester", "Base", "TerrainResource"
							["VALUE_MATCH"] 		= "",    -- so this script is not good as written
							["VALUE_MATCH_TYPE"] 	= "",  -- TODO: corrected script OR tool
							["VALUE_CHANGE_TABLE"] 	= 					
							{ 
								{"LSystem",						""},           --280 replacements
								{"Scene",						""},             --280 replacements
								{"UnderwaterLSystem",			""},       --280 replacements
								{"UnderwaterScene",				""},       --280 replacements
								{"AbandonedLSystem",			""},       --280 replacements
								{"AbandonedScene",				""},       --280 replacements
								{"AbandonedUnderwaterLSystem",	""}, --280 replacements
								{"AbandonedUnderwaterScene",	""}	   --280 replacements					
							}
						} --2240 global replacements
					}
				}		
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
