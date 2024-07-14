NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Bodie420.FastCharacterPlus.12.2.pak",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.72",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HandScreenActivationRange",                 "5"},
                                {"GroundWalkSpeed",                           "10"},
                                {"GroundRunSpeed",                            "20"},
                                {"GroundWalkSpeedLowG",                       "5"},
                                {"GroundRunSpeedLowG",                        "8"},
                                {"JetpackUnderwaterDrainRate",                "0.001"},
                                {"JetpackUnderwaterFillRate",                 "100"},
                                {"UnderwaterMaxSpeed",                        "1000"},
                                {"UnderwaterMaxJetpackSpeed",                 "5000"},
                                {"BinocularRangePlanet",                      "10000"},
                                {"BinocularRangeSpace",                       "100000"},
                                {"NumberOfWarpsRequiredForFreightersToSpawn", "1"},
                                {"SpawningDistanceBetweenPlayersAfterWarp",   "100"},
                                {"DefaultHitPoints",                          "100"},
                                {"DefaultHealthPips",                         "18"},
                                {"DefaultShipHealthPips",                     "18"},
                                {"MaxHealthPips",                             "18"},
                                {"HealthRechargeMinTimeSinceDamage",          "0.001"},
                                {"HealthPipRechargeRate",                     "999"},
                                {"MinEnergyPercentOnRespawn",                 "100"},
                                {"OtherPlayerTrackArrowRange",                "9999999"},
                                {"PlayerTransferRange",                       "9999999"},
                                {"PlayerSpaceTransferRange",                  "9999999"},
                                {"HazardDamageMinTime",                       "0.001"},
                                {"EnergyDamageMinTime",                       "0.001"},
                                {"EnergyDischargeRateLow",                    "0.0001"},
                                {"EnergyDischargeRateMedium",                 "0.0001"},
                                {"EnergyDischargeRateHigh",                   "0.0001"},
                                {"EnergyDischargeRateFloatingInSpace",        "0.0001"},
                                {"EnergyPainRate",                            "0.0001"},
                                {"SolarRegenFactor",                          "100"},
                                {"FreeJetpackRange",                          "9999999"},
                                {"FreeJetpackRangePrime",                     "9999999"},
                                {"FreeJetpackRangeNonTerrain",                "9999999"},
                                {"JetpackDrainHorizontalFactor",              "0.0001"},
                                {"RocketBootsBoostTankDrainSpeed",            "0.0001"},
                                {"RocketBootsDriftTankDrainSpeed",            "0.0001"},
                                {"RocketBootsMaxSpeed",                       "200"},
                                {"StealthDrainRate",                          "0.0001"},
                                {"StealthRechargeRate",                       "100"},
                                {"JetpackForce",                              "50"},
                                {"JetpackMinLevel",                           "0.0001"},
                                {"JetpackMaxSpeed",                           "5000"},
                                {"JetpackMaxUpSpeed",                         "300"},
                                {"JetpackFillRate",                           "100"},
                                {"JetpackFillRateMidair",                     "100"},
                                {"JetpackFillRateSpaceStationMultiplier",     "100"},
                                {"JetpackFillRateFleetMultiplier",            "100"},
                                {"JetpackFillRateNexusMultiplier",            "100"},
                                {"SpaceJetpackMaxSpeed",                      "5000"},
                                {"SpaceJetpackDrainRate",                     "0.0003"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "1E+09"}, --Original "4"
                                {"IGNORE", "1E+09"}, --Original "6"
                                {"IGNORE", "1E+09"}, --Original "8"
                            }
                        },
                    }
                }
            }
        }
    }
}