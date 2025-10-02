NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Passive Sentinels",
["MOD_DESCRIPTION"] = "sentinels will completely ignore your plundering of the environment",
["MOD_AUTHOR"]      = "degraaaff",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.00",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCROBOTGLOBALS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
					                      {"DisableDronePerception",               "true"},  -- Original false
					                      {"DroneAggressiveInvestigateAttackTime", "9999"},	 -- Original 1
                                {"DroneInvestigateMinWitnessRange",      "0"},     -- Original 22
                                {"DroneCrimeWitnessInvestigateDistance", "0"},     -- Original 30
                            }
                        },
                    }
                },
            }
        }
    }
}