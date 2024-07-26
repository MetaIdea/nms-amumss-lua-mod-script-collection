NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_TheAstralNut'sMod.pak",
["MOD_AUTHOR"]              = "AstralNut",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.1.1",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AtmosphereEffectEnabled",            "True"},
                                {"AbandonedSystemShipSpawnProbablity", "0.001"},
                                {"FlybyCloseOdds",                     "7"},
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
                                {"SmallCreatureFleePlayerDistance",  "1.5"},
                                {"LargeCreatureFleePlayerDistance",  "0.5"},
                                {"LargeCreatureAvoidPlayerDistance", "10"},
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
                                {"CreatureChatter",                     "True"},
                                {"CreatureErrors",                      "True"},
                                {"DrawCreaturesInRoutines",             "True"},
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
                                {"WaterChangeTime",              "142"},
                                {"WaterConditionTransitionTime", "42"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CloudProperties", "GcCloudProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimationScale",  "14"},
                                {"DetailScale",     "10"},
                                {"CloudDistortion", "42"},
                                {"MaxIterations",   "256"},
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
                                {"TerrainAnisoUlt",         "16"},
                                {"TargetTextureMemUsageMB", "2042"},
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
                                {"GroundWalkSpeed", "2.8"},
                                {"GroundRunSpeed",  "5.8"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DayLength",           "5400"},
                                {"StormTransitionTime", "42"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LandingMaxSpeed",                 "160"},
                                {"LandingMaxAngle",                 "52"},
                                {"MaxOverspeedBrake",               "0"},
                                {"LandingPushNoseUpFactor",         "0.07"},
                                {"GroundHeightDownSpeedMultiplier", "0"},
                                {"GroundHeightBrakeMultiplier",     "0"},
                                {"PitchCorrectHeightMin",           "0"},
                                {"PitchCorrectHeightMax",           "0"},
                                {"AutoLevelMinPitchAngle",          "0"},
                                {"AutoLevelMaxPitchAngle",          "0"},
                                {"AutoLevelMinAngle",               "0"},
                                {"AutoLevelMaxAngle",               "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "360"},
                                {"Falloff",      "0"},
                                {"BoostFalloff", "0"},
                                {"TurnBrakeMin", "0"},
                                {"TurnBrakeMax", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",          "250"},
                                {"Falloff",           "0"},
                                {"BoostMaxSpeed",     "320"},
                                {"BoostFalloff",      "0"},
                                {"BoostingTurnDamp",  "0"},
                                {"DirectionBrakeMin", "0"},
                                {"DirectionBrake",    "0"},
                                {"TurnBrakeMin",      "0"},
                                {"TurnBrakeMax",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "230"},
                                {"Falloff",      "0"},
                                {"BoostFalloff", "0"},
                                {"TurnBrakeMin", "0"},
                                {"TurnBrakeMax", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "160"},
                                {"Falloff",       "0"},
                                {"BoostMaxSpeed", "200"},
                                {"TurnBrakeMin",  "0"},
                                {"TurnBrakeMax",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       "360"},
                                {"Falloff",        "0"},
                                {"BoostFalloff",   "0"},
                                {"OverspeedBrake", "0"},
                                {"TurnBrakeMin",   "0.5"},
                                {"TurnBrakeMax",   "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       "250"},
                                {"Falloff",        "0"},
                                {"BoostMaxSpeed",  "350"},
                                {"BoostFalloff",   "0"},
                                {"OverspeedBrake", "0"},
                                {"TurnBrakeMin",   "0.5"},
                                {"TurnBrakeMax",   "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "260"},
                                {"Falloff",      "0"},
                                {"BoostFalloff", "0"},
                                {"TurnBrakeMin", "0"},
                                {"TurnBrakeMax", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "160"},
                                {"Falloff",      "0"},
                                {"BoostFalloff", "0"},
                                {"TurnBrakeMin", "0"},
                                {"TurnBrakeMax", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "360"},
                                {"Falloff",      "0"},
                                {"BoostFalloff", "0"},
                                {"TurnBrakeMin", "0"},
                                {"TurnBrakeMax", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "260"},
                                {"Falloff",       "0"},
                                {"BoostMaxSpeed", "300"},
                                {"BoostFalloff",  "0"},
                                {"TurnBrakeMin",  "0"},
                                {"TurnBrakeMax",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "200"},
                                {"Falloff",      "0"},
                                {"BoostFalloff", "0"},
                                {"TurnBrakeMin", "0"},
                                {"TurnBrakeMax", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "160"},
                                {"Falloff",      "0"},
                                {"BoostFalloff", "0"},
                                {"TurnBrakeMin", "0"},
                                {"TurnBrakeMax", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "360"},
                                {"Falloff",      "0"},
                                {"BoostFalloff", "0"},
                                {"TurnBrakeMin", "0"},
                                {"TurnBrakeMax", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "260"},
                                {"Falloff",       "0"},
                                {"BoostMaxSpeed", "300"},
                                {"BoostFalloff",  "0"},
                                {"TurnBrakeMin",  "0"},
                                {"TurnBrakeMax",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "200"},
                                {"Falloff",      "0"},
                                {"BoostFalloff", "0"},
                                {"TurnBrakeMin", "0"},
                                {"TurnBrakeMax", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "160"},
                                {"Falloff",       "0"},
                                {"BoostMaxSpeed", "200"},
                                {"BoostFalloff",  "0"},
                                {"TurnBrakeMin",  "0"},
                                {"TurnBrakeMax",  "0"},
                            }
                        }, 
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "360"},
                                {"Falloff",      "0"},
                                {"BoostFalloff", "0"},
                                {"TurnBrakeMin", "0"},
                                {"TurnBrakeMax", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "260"},
                                {"Falloff",       "0"},
                                {"BoostMaxSpeed", "300"},
                                {"BoostFalloff",  "0"},
                                {"TurnBrakeMin",  "0"},
                                {"TurnBrakeMax",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "260"},
                                {"Falloff",      "0"},
                                {"BoostFalloff", "0"},
                                {"TurnBrakeMin", "0"},
                                {"TurnBrakeMax", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "160"},
                                {"Falloff",       "0"},
                                {"BoostMaxSpeed", "200"},
                                {"BoostFalloff",  "0"},
                                {"TurnBrakeMin",  "0"},
                                {"TurnBrakeMax",  "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCWATERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WaveHeight", "2.4"},
                                {"WaveCutoff", "1"},
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
                                {[[    <PipelineVariable id="CloudQuality"                   defaultValue="2" />]], [[    <PipelineVariable id="CloudQuality"                   defaultValue="2" />]]},
                                {[[    <PipelineVariable id="CloudQuality_Low"               defaultValue="0" />]], [[    <PipelineVariable id="CloudQuality_Low"               defaultValue="2" />]]},
                                {[[    <PipelineVariable id="CloudQuality_Mid"               defaultValue="1" />]], [[    <PipelineVariable id="CloudQuality_Mid"               defaultValue="2" />]]},
                                {[[    <PipelineVariable id="CloudQuality_High"              defaultValue="2" />]], [[    <PipelineVariable id="CloudQuality_High"              defaultValue="2" />]]},
                                {[[    <RenderTarget id="CLOUDSHADOWS"       depthBuf="false"        numColBufs="1" format="RED8"   applyDrs="true" scale="0.5" allowDcc="false" />]], [[    <RenderTarget id="CLOUDSHADOWS"       depthBuf="false"        numColBufs="1" format="RED8"   applyDrs="true" scale="2" allowDcc="false" />]]},
                                {[[    <RenderTarget id="CLOUDS_MRT"         depthBuf="false"        numColBufs="3" format0="RGBA16F" format1="R32FG32F" format2="RG8" scale="0.5" applyDrs="true" allowDcc="NEXT" shareTarget0="CLOUDS_COLOUR" shareTarget1="CLOUDS_DEPTH" shareTarget2="CLOUDS_MASK" />]], [[    <RenderTarget id="CLOUDS_MRT"         depthBuf="false"        numColBufs="3" format0="RGBA16F" format1="R32FG32F" format2="RG8" scale="2" applyDrs="true" allowDcc="NEXT" shareTarget0="CLOUDS_COLOUR" shareTarget1="CLOUDS_DEPTH" shareTarget2="CLOUDS_MASK" />]]},
                                {[[    <RenderTarget id="CLOUDS_COLOUR"      depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_COLOUR"      depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="2" applyDrs="true" allowDcc="NEXT" />]]},
                                {[[    <RenderTarget id="CLOUDS_DEPTH"       depthBuf="false"        numColBufs="1" format="R32FG32F"  scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_DEPTH"       depthBuf="false"        numColBufs="1" format="R32FG32F"  scale="2" applyDrs="true" allowDcc="NEXT" />]]},
                                {[[    <RenderTarget id="CLOUDS_MASK"        depthBuf="false"        numColBufs="1" format="RG8"       scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_MASK"        depthBuf="false"        numColBufs="1" format="RG8"       scale="2" applyDrs="true" allowDcc="NEXT" />]]},
                                {[[    <RenderTarget id="CLOUDS_HISTORY"     depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_HISTORY"     depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="2" applyDrs="true" allowDcc="NEXT" />]]},
                                {[[    <RenderTarget id="CLOUDS_FINAL"       depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_FINAL"       depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="2" applyDrs="true" allowDcc="NEXT" />]]},
                               -- {[[   <RenderTarget id="RINGS_BUFF"         depthBuf="false"        numColBufs="1"  format="RGBA16F"  scale="1.0" applyDrs="true" pointSampleColBuf0="false" />]], [[    <RenderTarget id="RINGS_BUFF"         depthBuf="false"        numColBufs="1"  format="RGBA16F"  scale="0.5" applyDrs="true" pointSampleColBuf0="false" />]]},
                            }
                        },
                    }
                },
            }
        }
    }
}