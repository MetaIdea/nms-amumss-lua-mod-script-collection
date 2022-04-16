NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "EverySpaceEncounterDerelict.pak",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "3.82",
["MOD_DESCRIPTION"]	= "Makes every Space Encounter a lootable Derelict Freighter",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"]		= {"PulseEncounters"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "SpawnChance", "0" },
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]		= {"Id", "ABAND_FREIGHTER"},
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "SpawnChance", "9000" }, 		--Original "0.25"							
							}
						}
					}
				}
			}
		}
	}	
}	
