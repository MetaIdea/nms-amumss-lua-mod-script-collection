-- Advice from Babscoole about animations was crucial!
-- DooDooDevan's Fly Like Iron Man - Jetpack Overhaul (Voyagers Update) showed me where the animations were!
NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "Goldenveins_Fluid_Flight_1.3b.pak",
    ["MOD_AUTHOR"]      = "Goldenveins & Gemini (Fast, some Thinking and a little Pro) & Claude Sonnet 4.5",
    ["NMS_VERSION"]     = "6.18",
    ["MOD_DESCRIPTION"] = "High-Precision flight with complete camera control, no height limits, and zeroed camera drift.",
    ["MOD_BATCHNAME"]   = "FluidFlight_Combo",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            { 
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"JetpackFillRate", "50"},
                                {"JetpackFillRateMidair", "50"},
                                {"JetpackMinLevel", "0.001"},
                                {"JetpackUpForce", "40"},
                                {"JetpackIgnitionForce", "65"},
								{"JetpackIgnitionTime", "0.2"},
								{"JetpackMinIgnitionTime", "0.15"},
                                {"JetpackMaxSpeed", "45"},
                                {"JetpackMaxUpSpeed", "40"},
                                {"FreeJetpackRange", "99999"},
                                {"FreeJetpackRangePrime", "99999"},
                                {"FreeJetpackRangeNonTerrain", "99999"},
                                {"JetpackBrake", "0.9"},
                                {"JetpackDrainHorizontalFactor", "0.001"},
                                {"JetpackForce", "50"},
                                {"MaxFallSpeed", "49"},
                                {"HardLandMin", "999"},
                                {"HardLandMax", "9999"},
                                {"RocketBootsEnabled", "True"},
                                {"RocketBootsImpulse", "1.5"},
                                {"RocketBootsBoostForce", "60"},
								{"RocketBootsBoostTankDrainSpeed", "0.001"},
								{"RocketBootsHeightAdjustDownStrength", "0.05"},
								{"RocketBootsMinDesiredHeight", "1.0"},
                                {"RocketBootsMaxDesiredHeight", "3.0"},
								{"RocketBootsDriftDownwardForce", "0.01"},
								{"RocketBootsDriftEndTime", "1.0"},
								{"RocketBootsDriftTankDrainSpeed", "0.001"},
                                {"UnderwaterMaxJetpackSpeed", "25"},
                                {"UnderwaterJetpackForce", "20"},
                                {"UnderwaterMaxJetpackEscapeSpeed", "18"},
                                {"UnderwaterJetpackEscapeForce", "35"},
                                {"JetpackUnderwaterDrainRate", "0.001"},
                                {"JetpackUnderwaterFillRate", "50"},
                                {"SpaceJetpackForce", "65"},
                                {"SpaceJetpackUpForce", "50"},
                                {"SpaceJetpackIgnitionForce", "25"},
                                {"SpaceJetpackMaxSpeed", "18"},
                                {"SpaceJetpackDrainRate", "0.001"},
                                {"SpacewalkForce", "8"},
                                {"SpacewalkMaxSpeed", "1600"},
                                {"SpacewalkBrake", "1.6"},
                                {"SpacewalkJetpackForce", "16"},
                                {"SpacewalkJetpackUpForce", "8"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCCHARACTERGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            { 
                                {"TimeFallingUntilPanic", "2.0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "0H_JPACK_IG_FWD"},
                            ["VALUE_CHANGE_TABLE"] = { {"Filename", "MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/SWIMMING/0H_SWIM_FWD_JPACK.ANIM.MBIN"}, {"Delay", "0.02"}, {"Speed", "1.1"} }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "0H_JPACK_FWD"},
                            ["VALUE_CHANGE_TABLE"] = { {"Filename", "MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/SWIMMING/0H_SWIM_FWD_JPACK.ANIM.MBIN"}, {"Delay", "0.02"} }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "1H_JPACK_FWD"},
                            ["VALUE_CHANGE_TABLE"] = { {"Filename", "MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/SWIMMING/0H_SWIM_FWD_JPACK.ANIM.MBIN"}, {"Delay", "0.02"} }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "0H_JPACK_UP"},
                            ["VALUE_CHANGE_TABLE"] = { {"Filename", "MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/JETPACK/JPACK_IDLE_SPACE.ANIM.MBIN"} }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "1H_JPACK_UP"},
                            ["VALUE_CHANGE_TABLE"] = { {"Filename", "MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/JETPACK/JPACK_IDLE_SPACE.ANIM.MBIN"} }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "1H_JPACK_MELE_B"},
                            ["VALUE_CHANGE_TABLE"] = { {"Filename", "MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/SWIMMING/0H_SWIM_FWD_JPACK.ANIM.MBIN"}, {"Speed", "1.8"} }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "2H_JPACK_MELE_B"},
                            ["VALUE_CHANGE_TABLE"] = { {"Filename", "MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/SWIMMING/0H_SWIM_FWD_JPACK.ANIM.MBIN"}, {"Speed", "1.8"} }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "0H_FALL_PANIC"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = { {"Filename", "MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/JETPACK/JPACK_SKYDIVE.ANIM.MBIN"} }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "CHARJETPACK"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"MinSpeed", "0"},
                                {"SpeedRange", "0"},
                                {"OffsetY", "0"},
                                {"OffsetYAlt", "0"},
                                {"BackMinDistance", "8.5"},
                                {"BackMaxDistance", "8.5"},
                                {"UpMinDistance", "0"},
                                {"UpMaxDistance", "0"},
                                {"UpSlopeAdjust", "0"},
                                {"PanNear", "1.5"},
                                {"PanFar", "3.0"},
                                {"VertRotationSpeed", "15"},
                                {"VertRotationMin", "-80"},          
                                {"VertRotationMax", "80"},           
                                {"VertRotationOffset", "0"},
                                {"SpringSpeed", "0.001"},
                                {"CenterStartTime", "999"},
                                {"CenterBlendTime", "999"},
                                {"CenterMaxSpring", "0"},
                                {"CenterMaxSpeed", "0"},
                                {"VelocityAnticipate", "1.0"},
                                {"VelocityAnticipateSpringSpeed", "0.5"},
                                {"VertMaxSpring", "0"},
                                {"CenterStartSpeed", "0"},
                                {"HorizRotationAngleMaxPerFrame", "360"},
                                {"DistSpeed", "0"},
                                {"DistSpeedOutsideMainRange", "0"},
                                {"UseSpeedBasedSpring", "false"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "CHARFALL"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"MinSpeed", "0"},
                                {"SpeedRange", "0"},
                                {"OffsetY", "0"},
                                {"OffsetYAlt", "0"},
                                {"BackMinDistance", "8.5"},
                                {"BackMaxDistance", "8.5"},
                                {"UpMinDistance", "0"},
                                {"UpMaxDistance", "0"},
                                {"UpSlopeAdjust", "0"},
                                {"PanNear", "1.5"},
                                {"PanFar", "3.0"},
                                {"VertRotationSpeed", "15"},
                                {"VertRotationMin", "-80"},          
                                {"VertRotationMax", "80"},           
                                {"VertRotationOffset", "0"},
                                {"SpringSpeed", "0.001"},
                                {"CenterStartTime", "999"},
                                {"CenterBlendTime", "999"},
                                {"CenterMaxSpring", "0"},
                                {"CenterMaxSpeed", "0"},
                                {"VelocityAnticipate", "1.0"},
                                {"VelocityAnticipateSpringSpeed", "0.5"},
                                {"VertMaxSpring", "0"},
                                {"CenterStartSpeed", "0"},
                                {"HorizRotationAngleMaxPerFrame", "360"},
                                {"DistSpeed", "0"},
                                {"DistSpeedOutsideMainRange", "0"},
                                {"UseSpeedBasedSpring", "false"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ROCKETBOOTS"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"MinSpeed", "0"},
                                {"SpeedRange", "0"},
                                {"OffsetY", "0"},
                                {"OffsetYAlt", "0"},
                                {"BackMinDistance", "8.5"},
                                {"BackMaxDistance", "8.5"},
                                {"UpMinDistance", "0"},
                                {"UpMaxDistance", "0"},
                                {"UpSlopeAdjust", "0"},
                                {"PanNear", "1.5"},
                                {"PanFar", "3.0"},
                                {"VertRotationSpeed", "15"},
                                {"VertRotationMin", "-80"},          
                                {"VertRotationMax", "80"},           
                                {"VertRotationOffset", "0"},
                                {"SpringSpeed", "0.001"},
                                {"CenterStartTime", "999"},
                                {"CenterBlendTime", "999"},
                                {"CenterMaxSpring", "0"},
                                {"CenterMaxSpeed", "0"},
                                {"VelocityAnticipate", "1.0"},
                                {"VelocityAnticipateSpringSpeed", "0.5"},
                                {"VertMaxSpring", "0"},
                                {"CenterStartSpeed", "0"},
                                {"HorizRotationAngleMaxPerFrame", "360"},
                                {"DistSpeed", "0"},
                                {"DistSpeedOutsideMainRange", "0"},
                                {"UseSpeedBasedSpring", "false"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ROCKETBOOTSCHRG"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"MinSpeed", "0"},
                                {"SpeedRange", "0"},
                                {"OffsetY", "0"},
                                {"OffsetYAlt", "0"},
                                {"BackMinDistance", "8.5"},
                                {"BackMaxDistance", "8.5"},
                                {"UpMinDistance", "0"},
                                {"UpMaxDistance", "0"},
                                {"UpSlopeAdjust", "0"},
                                {"PanNear", "1.5"},
                                {"PanFar", "3.0"},
                                {"VertRotationSpeed", "15"},
                                {"VertRotationMin", "-80"},          
                                {"VertRotationMax", "80"},           
                                {"VertRotationOffset", "0"},
                                {"SpringSpeed", "0.001"},
                                {"CenterStartTime", "999"},
                                {"CenterBlendTime", "999"},
                                {"CenterMaxSpring", "0"},
                                {"CenterMaxSpeed", "0"},
                                {"VelocityAnticipate", "1.0"},
                                {"VelocityAnticipateSpringSpeed", "0.5"},
                                {"VertMaxSpring", "0"},
                                {"CenterStartSpeed", "0"},
                                {"HorizRotationAngleMaxPerFrame", "360"},
                                {"DistSpeed", "0"},
                                {"DistSpeedOutsideMainRange", "0"},
                                {"UseSpeedBasedSpring", "false"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"BobAmount", "0"},
                                {"BobFactor", "0"},
                                {"BobRollFactor", "0"},
                                {"BobRollAmount", "0"},
                                {"BobFwdAmount", "0"},
                                {"MaxBob", "false"},
                            }
                        },
                    }
                },
            }
        }
    }
}