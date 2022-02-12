NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] 			= "____RANDOM_START_RemoveAfterFirstSave.pak",
	["MOD_AUTHOR"]				= "Makto",
	["NMS_VERSION"]				= "3.20",
	["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ForceInitialShip",				"False"},	
								{"ForceInitialWeapon",				"False"}
							}
						}
					} 
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED

