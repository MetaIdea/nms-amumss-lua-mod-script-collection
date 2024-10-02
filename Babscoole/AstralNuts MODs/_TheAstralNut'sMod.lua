NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_TheAstralNut'sMod.pak",
["MOD_AUTHOR"]              = "AstralNut",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.03",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCHARACTERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CharacterTurnSpeed",         "3"},
                                {"CharacterRunTurnSpeed",      "8"},
                                {"SlopeAngleForUphillClimb",   "42"},
                                {"SlopeAngleForDownhillClimb", "42"},
                                {"SlopeAngleForSlide",         "52"},
                                {"MinimumIdleToJogAnimSpeed",  "0.6"},
                                {"MinStickForIntoJogAnim",     "0.35"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"EnableFlyingSnakeTails",           "True"},
                                {"SmallCreatureFleePlayerDistance",  "4"},
                                {"LargeCreatureFleePlayerDistance",  "2"},
                                {"SmallCreatureAvoidPlayerDistance", "6"},
                                {"LargeCreatureAvoidPlayerDistance", "5"},
                                {"PassiveFleePlayerDistance",        "5"},
                                {"AllowSleeping",                    "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThirdPersonIsDefaultCameraForPlayer", "False"},
                                {"RenderCreatureDetails",               "True"},
                                {"ShaderCaching",                       "True"},
                                {"CreatureChatter",                     "True"},
                                {"DiscoveryAutoSyncIntervalSeconds",    "3600"},
                                {"AllowGlobalPartSnapping",             "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WaterChangeTime",              "180"},
                                {"WaterConditionTransitionTime", "24"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CloudProperties", "GcCloudProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimationScale",       "25"},
                                {"DetailScale",          "12"},
                                {"CloudDistortion",      "20"},
                                {"CloudDistortionScale", "2"},
                                {"MaxIterations",        "256"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AllowSpaceScanEvents",           "True"},
                                {"MaxNumSameGroupTech",            "6"},
                                {"BinocMinScanTime",               "0.5"},
                                {"BinocScanTime",                  "1"},
                                {"BinocCreatureScanTime",          "1.4"},
                                {"MissionEventAllowResetDistance", "500"},
                                {"NumMissionsPerSolarSystem",      "8"},
                                {"ChangePricesLocally",            "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TerrainAnisoLow", "6"},
                                {"TerrainAnisoMed", "8"},
                                {"TerrainAnisoHi",  "16"},
                                {"TerrainAnisoUlt", "16"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DoPlayerAppearInVehicleEffect", "True"},
                                {"GroundWalkSpeed",               "3.4"},
                                {"GroundRunSpeed",                "6.8"},
                                {"DeepWaterDepth",                "420"},
                                {"AnimWalkSpeed",                 "0.8"},
                                {"AnimRunSpeed",                  "2"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlanetRingProbability", "0.4"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LandingMaxSpeed",             "200"},
                                {"LandingMaxAngle",             "60"},
                                {"NearGroundPitchCorrectRange", "0"},
                                {"LandingPushNoseUpFactor",     "0.05"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",          "360"},
                                {"MinSpeed",          "0"},
                                {"DirectionBrakeMin", "0.5"},
                                {"DirectionBrake",    "1"},
                                {"ReverseBrake",      "0.2"},
                                {"OverspeedBrake",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",          "250"},
                                {"MinSpeed",          "0"},
                                {"DirectionBrakeMin", "0.5"},
                                {"DirectionBrake",    "1"},
                                {"OverspeedBrake",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",          "230"},
                                {"MinSpeed",          "0"},
                                {"DirectionBrakeMin", "0.5"},
                                {"DirectionBrake",    "1"},
                                {"OverspeedBrake",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",          "160"},
                                {"MinSpeed",          "0"},
                                {"DirectionBrakeMin", "0.5"},
                                {"DirectionBrake",    "1"},
                                {"OverspeedBrake",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",          "360"},
                                {"MinSpeed",          "0"},
                                {"DirectionBrakeMin", "0.5"},
                                {"DirectionBrake",    "1"},
                                {"OverspeedBrake",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",          "250"},
                                {"MinSpeed",          "0"},
                                {"DirectionBrakeMin", "0.5"},
                                {"DirectionBrake",    "1"},
                                {"OverspeedBrake",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",          "260"},
                                {"MinSpeed",          "0"},
                                {"DirectionBrakeMin", "0.5"},
                                {"DirectionBrake",    "1"},
                                {"OverspeedBrake",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",          "160"},
                                {"MinSpeed",          "0"},
                                {"DirectionBrakeMin", "0.5"},
                                {"DirectionBrake",    "1"},
                                {"OverspeedBrake",    "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "PIPELINES\PIPELINEDEFERRED.BIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "RAW",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {[[    <PipelineVariable id="CloudQuality_Low"               defaultValue="0" />]], [[    <PipelineVariable id="CloudQuality_Low"               defaultValue="2" />]]},
                                {[[    <PipelineVariable id="CloudQuality_Mid"               defaultValue="1" />]], [[    <PipelineVariable id="CloudQuality_Mid"               defaultValue="2" />]]},
                                {[[    <RenderTarget id="CLOUDSHADOWS"       depthBuf="false"        numColBufs="1" format="RED8"   applyDrs="true" scale="0.5" allowDcc="false" />]], [[    <RenderTarget id="CLOUDSHADOWS"       depthBuf="false"        numColBufs="1" format="RED8"   applyDrs="true" scale="2" allowDcc="false" />]]},
                                {[[    <RenderTarget id="CLOUDS_MRT"         depthBuf="false"        numColBufs="2" format0="RGBA16F" format1="R32FG32F" scale="0.5" applyDrs="true" allowDcc="NEXT" shareTarget0="CLOUDS_COLOUR" shareTarget1="CLOUDS_DEPTH" />]], [[    <RenderTarget id="CLOUDS_MRT"         depthBuf="false"        numColBufs="2" format0="RGBA16F" format1="R32FG32F" scale="2" applyDrs="true" allowDcc="NEXT" shareTarget0="CLOUDS_COLOUR" shareTarget1="CLOUDS_DEPTH" />]]},
                                {[[    <RenderTarget id="CLOUDS_COLOUR"      depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_COLOUR"      depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="2" applyDrs="true" allowDcc="NEXT" />]]},
                                {[[    <RenderTarget id="CLOUDS_DEPTH"       depthBuf="false"        numColBufs="1" format="R32FG32F"  scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_DEPTH"       depthBuf="false"        numColBufs="1" format="R32FG32F"  scale="2" applyDrs="true" allowDcc="NEXT" />]]},
                                {[[    <RenderTarget id="CLOUDS_HISTORY"     depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_HISTORY"     depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="2" applyDrs="true" allowDcc="NEXT" />]]},
                                {[[    <RenderTarget id="CLOUDS_FINAL"       depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_FINAL"       depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="2" applyDrs="true" allowDcc="NEXT" />]]},                            }
                        },
                    }
                },
            }
        }
    }
}