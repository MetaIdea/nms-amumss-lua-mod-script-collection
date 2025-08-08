DIVISOR = 4
MULTIPLIER = 4

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "More Fleet Expedition Events",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.75",
["MOD_DESCRIPTION"] = "Increase events per fleet expedition",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCFLEETGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
						            {
						            	["VALUE_CHANGE_TABLE"] 	= 
						            	{
						            		{"TimeTakenForExpeditionEvent_Easy", "@/"..DIVISOR}, -- default 900 , time taken between events before buying 4th freighter
						            		{"TimeTakenForExpeditionEvent",      "@/"..DIVISOR}, -- default 5400, time taken between events after buying 4th freighter
						            	}
						            },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExpeditionDurations", "GcExpeditionDurationValues"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
								                {"VeryShort", "@*"..MULTIPLIER}, -- default 4, Number of events per expedition
								                {"Short",     "@*"..MULTIPLIER}, -- default 6, Number of events per expedition
								                {"Medium",    "@*"..MULTIPLIER}, -- default 10, Number of events per expedition
								                {"Long",      "@*"..MULTIPLIER}, -- default 14, Number of events per expedition
								                {"VeryLong",  "@*"..MULTIPLIER}, -- default 18, Number of events per expedition
                            }
                        },
                    }
                },
            }
        }
    }
}