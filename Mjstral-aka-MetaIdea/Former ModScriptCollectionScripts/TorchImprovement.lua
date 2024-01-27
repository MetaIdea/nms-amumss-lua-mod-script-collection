NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "TorchImprovement.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TorchFoV",						"360"}, 	-- Original "100"	
								{"TorchStrength",					"2"},		-- Original "4"
								{"TorchOffsetY",					"1"},		-- Original "0.5"
								{"TorchOffsetZ",					"-1"}		-- Original "-0.5"								
							}
						}
					} --4 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
