NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Burryaga.pak",
["MOD_AUTHOR"]    = "Burryaga",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.70",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCHARACTERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CharacterTurnSpeed",            "4.4"},
                                {"CharacterRunTurnSpeed",         "11"},
                                {"CharacterTurnAimSpeed",         "14.3"},
                                {"CharacterSwimmingTurnSpeed",    "1.25"},
                                {"CharacterSwimmingTurnAimSpeed", "13.75"},
                                {"RocketBootsTurnSpeed",          "1.1"},
                                {"LadderDistanceToAutoMount",     "0.05"},
                                {"TimeFallingUntilPanic",         "80"},
                                {"SmoothVelocitySpeed",           "1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GroundWalkSpeed",                 "9.900001"},
                                {"GroundRunSpeed",                  "14"},
                                {"GroundWalkSpeedLowG",             "3.6000001"},
                                {"GroundRunSpeedLowG",              "6.125"},
                                {"UnderwaterMaxSpeed",              "16"},
                                {"UnderwaterMaxJetpackSpeed",       "32"},
                                {"UnderwaterMaxJetpackEscapeSpeed", "40"},
                                {"JetpackDrainHorizontalFactor",    "0.1"},
                                {"RocketBootsDoubleTapTime",        "0.24000001"},
                                {"RocketBootsBoostForce",           "136"},
                                {"RocketBootsBoostTankDrainSpeed",  "3"},
                                {"RocketBootsMaxSpeed",             "50"},
                                {"RocketBootsWindUpBraking",        "0.54"},
                                {"RocketBootsDriftDownwardForce",   "0.35"},
                                {"JetpackForce",                    "77.5"},
                                {"JetpackBrake",                    "2.75"},
                                {"JetpackMaxSpeed",                 "30"},
                                {"JetpackMaxUpSpeed",               "60"},
                                {"JetpackUpForce",                  "36"},
                                {"JetpackIgnitionForce",            "70"},
                                {"JetpackFillRate",                 "10"},
                                {"JetpackFillRateMidair",           "10"},
                                {"JetpackUpForceDeadPlanetExtra",   "13"},
                                {"SpaceJetpackMaxSpeed",            "60"},
                                {"SpaceJetpackDrainRate",           "0.1"},
                                {"LuckyWithTech",                   "True"},
                                {"MeleeCooldown",                   "0.24800001"},
                                {"ChargeMeleeCooldown",             "0.52"},
                                {"MeleeStaminaDrain",               "0"},
                                {"MeleeCooldownAlt",                "0.2"},
                                {"StaminaRate",                     "0.02"},
                                {"DamageRateWhenUnderNoGravity",    "0"},
                                {"AnimWalkSpeed",                   "3.375"},
                                {"AnimRunSpeed",                    "7"},
                                {"AnimWalkToRunSpeed",              "9"},
                                {"FreeJetpackSlopeAngle",           "40"},
                                {"FreeJetpackSlopeAnglePrime",      "30"},
                                {"MaxFallSpeed",                    "9"},
                            }
                        },
                    }
                },
            }
        }
    }
}