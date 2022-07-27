NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] = "shoemakers Exosuit Adjustments - Advanced Jetpack.pak",
    ["MOD_AUTHOR"] = "shoemakerjones",
    ["LUA_AUTHOR"] = "shoemakerjones",
    ["NMS_VERSION"] = "3.95",
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
                                {"GroundWalkSpeed", "1.6"},
                                {"GroundRunSpeed", "8"},
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
                                {"JetpackDrainHorizontalFactor", "0.2"},
                                {"JetpackForce", "43"}, 
                                {"JetpackBrake", "8.2"},
                                {"JetpackMaxSpeed", "21"},
                                {"JetpackMaxUpSpeed", "50"},
                                {"JetpackUpForce", "50"},
                                {"SpaceJetpackForce", "55"},
                                {"SpaceJetpackUpForce", "45"},
                                {"SpaceJetpackMaxSpeed", "17"},
                                {"JetpackIgnitionForce", "100"},
                                {"JetpackIgnitionTime", "0.1"},
                                {"JetpackFillRate", "8.2"},
                                {"JetpackFillRateHardMode", "1.5"},
                                {"JetpackFillRateMidair", "6.5"},
                                {"SpaceJetpackDrainRate", "0.12"},
                                {"AbandonedFreighterRechargeMod", "1"},
                            }
                        }
                    }
                }
            }
        }
    }
}
