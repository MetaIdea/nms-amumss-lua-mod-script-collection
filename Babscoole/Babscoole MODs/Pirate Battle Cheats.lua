NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Pirate Battle Cheats",
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.18",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PirateFreighterWarpChargeTime", 3500.000000},  --Default 35.000000
                                {"PirateFreighterBeginFleeHealthFraction", 0.010000},  --Default 0.250000
                                {"MaxTorpedoesInFlight", 2},  --Default 12
                            }
                        },
                    }
                },
            }
        }
    }
}