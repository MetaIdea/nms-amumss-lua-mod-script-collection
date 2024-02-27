NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Exo's FTL.pak",
["MOD_AUTHOR"]    = "Exosolar",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.52",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MiniWarpLinesNum",                           "1"},      --Original "4"
                                {"MiniWarpLinesSpacing",                       "30000"},  --Original "3000"
                                {"MiniWarpLinesOffset",                        "10000"},  --Original "1000"
                                {"MiniWarpLinesHeight",                        "2800"},   --Original "800"
                                {"MiniWarpShakeStrength",                      "0"},      --Original "2"
                                {"MiniWarpFuelTime",                           "7"},      --Original "0.5"
                                {"MiniWarpChargeTime",                         "0.0001"}, --Original "2"
                                {"MiniWarpSpeed",                              "420000"}, --Original "30000"
                                {"MiniWarpTopSpeedTime",                       "0.001"},  --Original "0.1"
                                {"MiniWarpCooldownTime",                       "0.02"},   --Original "2"
                                {"MiniWarpExitTime",                           "0.005"},  --Original "0.5"
                                --{"MiniWarpSpaceStationUnAttractMultiplier",    "1"},      --Original "2.5"
                                {"MiniWarpFlashIntensity",                     "0.4"},    --Original "0.9"
                                {"MiniWarpFlashDuration",                      "0.4"},    --Original "0.9"
                                {"MiniWarpNoAsteroidRadius",                   "15000"},  --Original "1500"
                                {"BoostNoAsteroidRadius",                      "10000"}   --Original "1000"
                            }
                        }
                    }
                }
            }
        }
    }
}