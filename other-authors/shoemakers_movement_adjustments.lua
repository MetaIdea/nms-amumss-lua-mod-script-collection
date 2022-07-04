NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] = "shoemakers Movement Adjustments.pak",
    ["MOD_AUTHOR"] = "shoemakerjones",
    ["LUA_AUTHOR"] = "shoemakerjones",
    ["NMS_VERSION"] = "3.93",
    ["MOD_DESCRIPTION"] = "Makes significant changes to they way movement is handled.",
    ["MODIFICATIONS"] = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"GroundWalkSpeed", "1.4"},
                                {"GroundRunSpeed", "5"},
                                {"AnimWalkSpeed", "0.1"},
                                {"JetpackUnderwaterFillRate", "4"},
                                {"UnderwaterMaxJetpackEscapeSpeed", "16"},
                                {"UnderwaterJetpackEscapeForce", "35"},
                                {"FreeJetpackRange", "8"},
                                {"FreeJetpackRangePrime", "8"},
                                {"FreeJetpackRangeNonTerrain", "8"},
                                {"MeleeBoostAirForce", "7"},
                                {"MeleeToAirBoostInitialImpulse", "12"},
                                {"MaxTimeInMeleeBoost", "2.8"},
                                {"JetpackDrainHorizontalFactor", "1"},
                                {"RocketBootsImpulse", "6.5"},
                                {"RocketBootsBoostForce", "74"}, -- Amount of momentum
                                {"RocketBootsDriftForce", "47"}, -- Amount of angular momentum
                                {"RocketBootsForceDuration", "0.65"},
                                {"RocketBootsMinDesiredHeight", "10"},
                                {"RocketBootsMaxDesiredHeight", "14"},
                                {"RocketBootsHeightAdjustUpStrength", "0.50"},
                                {"RocketBootsHeightAdjustDownStrength", "0.1"},
                                {"RocketBootsBoostTankDrainSpeed", "3"},
                                {"RocketBootsDriftTankDrainSpeed", "4"},
                                {"RocketBootsZigZagForceDuration", "0.8"},
                                {"RocketBootsMaxSpeed", "60"},
                                {"RocketBootsDriftDownwardForce", "0.2"},
                                {"JetpackForce", "43"}, {"JetpackBrake", "6.2"},
                                {"JetpackMaxSpeed", "15"},
                                {"JetpackMaxUpSpeed", "50"},
                                {"JetpackUpForce", "50"},
                                {"SpaceJetpackForce", "55"},
                                {"SpaceJetpackUpForce", "45"},
                                {"SpaceJetpackMaxSpeed", "17"},
                                {"JetpackIgnitionForce", "80"},
                                {"JetpackIgnitionTime", "0.95"},
                                -- {"JetpackMinIgnitionTime", "0.45"},
                                {"JetpackFillRate", "4.5"},
                                {"JetpackFillRateHardMode", "1.5"},
                                {"JetpackFillRateMidair", "3.5"},
                                {"SpaceJetpackDrainRate", "0.025"},
                                {"AbandonedFreighterRechargeMod", "1"},
                            }
                        }
                    }
                }
            }
        }
    }
}
