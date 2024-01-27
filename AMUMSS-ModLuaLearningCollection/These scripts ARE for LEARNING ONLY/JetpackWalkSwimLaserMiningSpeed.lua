NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "JetpackWalkSwimLaserMiningSpeed.pak",
["MOD_DESCRIPTION"]			= "JetpackWalkSwimLaserMiningSpeed",
["MOD_AUTHOR"]				= "",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"JetpackMaxSpeed",					"50"}, 	-- Original "5"
								{"GroundRunSpeed",					"24"}, 	-- Original "8"
								{"UnderwaterMaxSpeed",				"12"}, 	-- Original "4"
								{"LaserBeamMineRate",				"0.9"} 	-- Original "0.3"					
							}	
						}						
					} --4 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
