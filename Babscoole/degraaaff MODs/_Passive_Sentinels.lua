NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Passive_Sentinels.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "degraaaff",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "3.89",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCROBOTGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DroneInvestigateMinWitnessRange",      "0"},     -- Original  22
                                {"DroneCrimeWitnessInvestigateDistance", "0"},     -- Original  30
                                {"DroneCrimeWitnessLimit",               "30000"}, -- Original  3
                                {"DroneCrimeWitnessInvestigateDistance", "0"},     -- Original  30
                                {"DroneCrimeProximityMultiplier",        "0"},     -- Original  3
                            }
                        },
                    }
                },
            }
        }
    }
}