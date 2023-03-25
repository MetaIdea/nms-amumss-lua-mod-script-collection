NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "FleetExpTimes.pak",
["MOD_DESCRIPTION"]	= "messing around with mods",
["NMS_VERSION"]		= "",
["MODIFICATIONS"]	=
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] 	= "GCFLEETGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumberOfExpeditionChoices", "5"},				-- default 5, values over 5 do nothing
								{"TimeTakenForExpeditionEvent_Easy", "900"},	-- default 900 , time taken between events before buying 4th freighter
								{"TimeTakenForExpeditionEvent", "5400"},		-- default 5400, time taken between events after buying 4th freighter
								{"LightYearsPerExpeditionEvent_Easy", "75"},	-- default 75
								{"LightYearsPerExpeditionEvent", "250"},		-- default 250
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ExpeditionDurations","GcExpeditionDurationValues.xml",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"VeryShort", "16"},	-- default 4, Number of events per expedition
								{"Short", "24"},		-- default 6, Number of events per expedition
								{"Medium", "40"},		-- default 10, Number of events per expedition
								{"Long", "56"},			-- default 14, Number of events per expedition
								{"VeryLong", "68"},		-- default 18, Number of events per expedition
							}
						}
					}
				},
			}
		}
	}
}