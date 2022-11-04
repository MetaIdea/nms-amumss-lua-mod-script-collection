NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "X-FastFreighterMissionCooldowns.pak",
["MOD_AUTHOR"]				= "Lowkie",
["NMS_VERSION"]				= "3.99",
["MOD_DESCRIPTION"]			= "no recharge timer for fleet missions",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\FLEETMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{						
                            ["REPLACE_TYPE"] = "All",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"ForceAllowMissionRestart", "False"}, --default True
								{"ForceAllowMissionRestartEvent", ""}, --default "r not on damaged frigate any mor"
								{"MissionMarkup", "None"}, --default number sequence
								{"DebugText", ""}, --default string
							},
                            {
                                ["PRECEDING_KEY_WORDS"] = "Stage",
                                ["REPLACE_TYPE"] 		= "ALL",
                                ["VALUE_MATCH"] 		= "10", --make ALL that are "0" equal(=) to "1"
                                ["VALUE_MATCH"] 		= "4", 
                                ["VALUE_MATCH"] 		= "3", 
                                ["VALUE_CHANGE_TABLE"] 	= 
                                {
                                    {"Time",		"1" },
                                }
                            },
						},
					},
				},
			}
		}
	}	
}