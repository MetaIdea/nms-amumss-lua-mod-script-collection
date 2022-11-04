NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "X-Pasive-Sentinels.pak",
["MOD_AUTHOR"]				= "Lowkie",
["MOD_DESCRIPTION"]			= "This Mod Pacifies Sentinels",
["NMS_VERSION"]				= "3.21",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCROBOTGLOBALS.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DroneCrimeWitnessLimit",					"30000"}, --Default 3
								{"DroneCrimeWitnessInvestigateDistance",	"0"}, --Default 3
								{"DroneCrimeProximityMultiplier",			"0"}, --Default 3
							},
						},
					},
				},
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE