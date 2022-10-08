NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "IncreaseSpaceEncounterChance.pak",
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.00",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{				
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PulseEncounterCheckTimer",	 "1"},      -- Original "1"
								{"PulseEncounterChance",	 "0.0264"}, -- Original "0.00066"
								{"PulseEncounterChanceStandard", "0.0264"}, -- Original "0.00066"
								{"PulseEncounterChanceRed",	 "0.03"},   -- Original "0.001"
								{"PulseEncounterChanceGreen",	 "0.04"},   -- Original "0.002"
								{"PulseEncounterChanceBlue",	 "0.05"},   -- Original "0.003"								
							}
						},
					}
				},				
			}
		},
	}	
}