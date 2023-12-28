NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "NoMansStroll-1.4Walk5Run+SOSNoRecoil3xJetBoost3xUnderWater [Interceptor].pak",
["MOD_AUTHOR"]      = "Dr Kaii",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.15",
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
                                {"GroundWalkSpeed",                       "1.4"},
                                {"GroundRunSpeed",                        "5"},
                                {"GroundRunSpeedLowG",                    "10.5"},
                                {"JetpackUnderwaterDrainRate",            "0.2"},
                                {"JetpackUnderwaterFillRate",             "2"},
                                {"UnderwaterMaxSpeed",                    "12"},
                                {"UnderwaterForce",                       "20"},
                                {"UnderwaterMaxJetpackEscapeSpeed",       "24"},
                                {"HealthRechargeMinTimeSinceDamage",      "1"},
                                {"CockpitEjectTestSphereRadius",          "2"},
                                {"EnergyDischargeRateMedium",             "0.02"},
                                {"EnergyDischargeRateHigh",               "0.02"},
                                {"FreeJetpackRange",                      "99"},
                                {"FreeJetpackRangePrime",                 "99"},
                                {"FreeJetpackRangeNonTerrain",            "99"},
                                {"JetpackDrainHorizontalFactor",          "0"},
                                {"MeleeBoostAirForce",                    "5"},
                                {"MeleeToAirBoostInitialImpulse",         "7"},
                                {"MaxTimeInMeleeBoost",                   "2"},
                                {"RocketBootsImpulse",                    "6"},
                                {"RocketBootsBoostForce",                 "80"},
                                {"RocketBootsDriftForce",                 "40"},
                                {"RocketBootsMaxDesiredHeight",           "18"},
                                {"RocketBootsHeightAdjustTime",           "0.36"},
                                {"RocketBootsHeightAdjustUpStrength",     "1"},
                                {"RocketBootsBoostTankDrainSpeed",        "0"},
                                {"RocketBootsDriftTankDrainSpeed",        "0"},
                                {"RocketBootsMaxSpeed",                   "60"},
                                {"JetpackForce",                          "45"},
                                {"JetpackBrake",                          "3.5"},
                                {"JetpackMaxSpeed",                       "50"},
                                {"JetpackMaxUpSpeed",                     "40"},
                                {"JetpackUpForce",                        "45"},
                                {"JetpackIgnitionForce",                  "90"},
                                {"JetpackIgnitionTime",                   "0.1"},
                                {"JetpackMinIgnitionTime",                "0.05"},
                                {"JetpackFillRate",                       "99"},
                                {"JetpackFillRateSpaceStationMultiplier", "10"},
                                {"JetpackUpForceDeadPlanetExtra",         "15"},
                                {"JetpackForceDeadPlanetExtra",           "80"},
                                {"JetpackIgnitionForceDeadPlanetExtra",   "80"},
                                {"MaxNumDestroyEffects",                  "0"},
                                {"MinNumDestroyEffects",                  "0"},
                                {"LaserMiningDamageMultiplier",           "4"},
                                {"ShieldRechargeMinTimeSinceDamage",      "0"},
                                {"ShieldRechargeRate",                    "20"},
                                {"SpeedLinesMinAlpha",                    "0"},
                                {"SpeedLinesMaxAlpha",                    "0"},
                                {"LaserShakeMin",                         "0"},
                                {"LaserShakeMax",                         "0"},
                                {"GunRecoil",                             "0"},
                                {"LaserRecoil",                           "0"},
                                {"BeamRecoil",                            "0"},
                                {"GrenadeRecoil",                         "0"},
                                {"GunRecoilSpring",                       "0"},
                                {"BlastRecoilSpring",                     "0"},
                                {"RailRecoilSpring",                      "0"},
                                {"PulseRecoilSpring",                     "0"},
                                {"GunRecoilSettleSpring",                 "0"},
                                {"GunRecoilMin",                          "0"},
                                {"GunRecoilMax",                          "0"},
                                {"AutoLandTime",                          "1"},
                                {"LaserBeamMineRate",                     "0.9"},
                                {"LaserBeamFlickerAmp",                   "0.5"},
                                {"LaserBeamFlickerFreq",                  "10"},
                                {"LaserBeamTerrainDeformRadius",          "1"},
                                {"HardLandMin",                           "98"},
                                {"HardLandMax",                           "99"},
                                {"AnimWalkSpeed",                         "0.1"},
                                {"AnimRunSpeed",                          "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "999"},
                                {"IGNORE", "999"},
                                {"IGNORE", "999"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "JET1", "StatsType", "Suit_Jetpack_Tank"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "9999"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "JET1", "StatsType", "Suit_Jetpack_Refill"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "9999"},
                            }
                        },
                    }
                }
            }
        }
    }
}