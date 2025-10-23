NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "FTL",
["MOD_AUTHOR"]    = "Exosolar & Babscoole",
["NMS_VERSION"]   = "6.10",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MiniWarpLinesNum",                           "1"},      --Original "4"
                                {"MiniWarpLinesSpacing",                       "300000.000000"},  --Original "3000"
                                {"MiniWarpLinesOffset",                        "100000.000000"},  --Original "1000"
                                {"MiniWarpLinesHeight",                        "2800.000000"},   --Original "800"
                                {"MiniWarpShakeStrength",                      "0.000000"},      --Original "2"
                                {"MiniWarpFuelTime",                           "7.000000"},      --Original "0.5"
                                {"MiniWarpChargeTime",                         "0.000100"}, --Original "2"
                                {"MiniWarpSpeed",                              "420000.000000"}, --Original "30000"
                                {"MiniWarpTopSpeedTime",                       "0.000100"},  --Original "0.1"
                                {"MiniWarpCooldownTime",                       "0.020000"},   --Original "2"
                                {"MiniWarpExitTime ",                          "0.005000"},  --Original "0.5"
                                --{"MiniWarpSpaceStationUnAttractMultiplier",  "1.000000"},      --Original "2.5"
                                {"MiniWarpFlashIntensity ",                    "0.400000"},    --Original "0.9"
                                {"MiniWarpFlashDuration ",                     "0.400000"},    --Original "0.9"
                                {"MiniWarpNoAsteroidRadius ",                  "15000.000000"},  --Original "1500"
                                {"BoostNoAsteroidRadius ",                     "10000.000000"}   --Original "1000"
                            }
                        }
                    }
                }
            }
        }
    }
}