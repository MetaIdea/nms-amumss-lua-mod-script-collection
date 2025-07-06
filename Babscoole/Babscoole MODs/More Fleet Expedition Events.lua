Divisor = "@/4"
Multiplier = "@*4"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "More Fleet Expedition Events",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.73",
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
						            		{"TimeTakenForExpeditionEvent_Easy", Divisor}, -- default 900 , time taken between events before buying 4th freighter
						            		{"TimeTakenForExpeditionEvent",      Divisor}, -- default 5400, time taken between events after buying 4th freighter
						            	}
						            },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExpeditionDurations", "GcExpeditionDurationValues"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
								                {"VeryShort", Multiplier}, -- default 4, Number of events per expedition
								                {"Short",     Multiplier}, -- default 6, Number of events per expedition
								                {"Medium",    Multiplier}, -- default 10, Number of events per expedition
								                {"Long",      Multiplier}, -- default 14, Number of events per expedition
								                {"VeryLong",  Multiplier}, -- default 18, Number of events per expedition
                            }
                        },
                    }
                },
            }
        }
    }
}