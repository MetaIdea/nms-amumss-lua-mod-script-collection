NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "JetpackWalkSwimLaserMiningSpeed.pak",
["MOD_DESCRIPTION"]			= "JetpackWalkSwimLaserMiningSpeed",
["MOD_AUTHOR"]				= "",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {},
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
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE