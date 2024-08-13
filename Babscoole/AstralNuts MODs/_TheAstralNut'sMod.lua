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
                    ["MBIN_FILE_SOURCE"] = "GCCHARACTERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CharacterTurnSpeed",    "2.4"},
                                {"CharacterRunTurnSpeed", "6.9"},
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
                                {"DrawCreaturesInRoutines",             "True"},
                                {"ShaderCaching",                       "True"},
                                {"DrawCreaturesInRoutines",             "False"},
                                {"DiscoveryAutoSyncIntervalSeconds",    "3600"},
                                {"BodyTurning",                         "True"},
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
                                {"AnimationScale",  "18"},
                                {"DetailScale",     "12"},
                                {"CloudDistortion", "42"},
                                {"MaxIterations",   "384"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"EnvironmentProperties", "GcEnvironmentProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CloudHeightMin",            "525"},
                                {"CloudHeightMax",            "1000"},
                                {"PlanetObjectSwitch",        "800"},
                                {"PlanetLodSwitch0",          "400"},
                                {"PlanetLodSwitch0Elevation", "800"},
                                {"PlanetLodSwitch1",          "3000"},
                                {"PlanetLodSwitch2",          "20000"},
                                {"PlanetLodSwitch3",          "30000"},
                                {"AtmosphereStartHeight",     "525"},
                                {"StratosphereHeight",        "4200"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"EnvironmentProperties", "GcEnvironmentProperties.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"SkyHeight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Large",  "200"},
                                {"Medium", "900"},
                                {"Small",  "800"},
                                {"Moon",   "600"},
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
                                {"MaxNumSameGroupTech",            "5"},
                                {"BinocMinScanTime",               "1.1"},
                                {"BinocScanTime",                  "1.1"},
                                {"MissionEventAllowResetDistance", "42"},
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
                                {"TerrainAnisoLow",         "4"},
                                {"TerrainAnisoMed",         "6"},
                                {"TerrainAnisoHi",          "8"},
                                {"TerrainAnisoUlt",         "16"},
                                {"TargetTextureMemUsageMB", "2560"},
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
                                {"GroundWalkSpeed",                "3"},
                                {"GroundRunSpeed",                 "7.18"},
                                {"DoPlayerAppearInVehicleEffect",  "True"},
                                {"EnableLeaning",                  "True"},
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
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlanetRingProbability", "0.42"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ExtremePlanetChance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Yellow", "0.4"},
                                {"Green",  "0.7"},
                                {"Blue",   "0.12"},
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
                                {"ShipThrustReverseThreshhold",     "0.18"},
                                {"LandingMaxSpeed",                 "420"},
                                {"LandingMaxAngle",                 "75"},
                                {"MaxOverspeedBrake",               "1000"},
                                {"LandingPushNoseUpFactor",         "0.07"},
                                {"AutoLevelWaterAngle",             "0"},
                                {"GroundHeightDownSpeedMultiplier", "5"},
                                {"GroundHeightBrakeMultiplier",     "1.2"},
                                {"PitchCorrectHeightMin",           "0"},
                                {"PitchCorrectHeightMax",           "0"},
                                {"AutoLevelMinPitchAngle",          "-10"},
                                {"AutoLevelMaxPitchAngle",          "45"},
                                {"AutoLevelMinAngle",               "5"},
                                {"AutoLevelMaxAngle",               "110"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "180"},
                                {"MinSpeed",     "1"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",          "125"},
                                {"MinSpeed",          "20"},
                                {"Falloff",           "0.5"},
                                {"BoostMaxSpeed",     "155"},
                                {"BoostFalloff",      "0.7"},
                                {"BoostingTurnDamp",  "0.25"},
                                {"DirectionBrakeMin", "1"},
                                {"DirectionBrake",    "1.5"},
                                {"TurnBrakeMin",      "2"},
                                {"TurnBrakeMax",      "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "115"},
                                {"MinSpeed",     "50"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "80"},
                                {"MinSpeed",      "10"},
                                {"Falloff",       "0.7"},
                                {"BoostMaxSpeed", "155"},
                                {"TurnBrakeMin",  "1"},
                                {"TurnBrakeMax",  "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       "420"},
                                {"MinSpeed",       "0"},
                                {"Falloff",        "0"},
                                {"BoostMaxSpeed",  "840"},
                                {"BoostFalloff",   "0"},
                                {"OverspeedBrake", "0"},
                                {"ReverseBrake",   "0.42"},
                                {"OverspeedBrake", "0.2"},
                                {"TurnBrakeMin",   "0"},
                                {"TurnBrakeMax",   "0"},
                                {"TurnStrength",   "1.8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       "250"},
                                {"MinSpeed",       "0"},
                                {"Falloff",        "0"},
                                {"BoostMaxSpeed",  "300"},
                                {"BoostFalloff",   "0.18"},
                                {"ReverseBrake",   "0.42"},
                                {"OverspeedBrake", "1.8"},
                                {"TurnBrakeMin",   "0"},
                                {"TurnBrakeMax",   "0"},
                                {"TurnStrength",   "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       "300"},
                                {"MinSpeed",       "0"},
                                {"Falloff",        "0"},
                                {"BoostMaxSpeed",  "800"},
                                {"BoostFalloff",   "0.18"},
                                {"ReverseBrake",   "0.42"},
                                {"OverspeedBrake", "1.8"},
                                {"TurnBrakeMin",   "0"},
                                {"TurnBrakeMax",   "0"},
                                {"TurnStrength",   "2.4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       "160"},
                                {"MinSpeed",       "0"},
                                {"Falloff",        "0"},
                                {"BoostMaxSpeed",  "250"},
                                {"BoostFalloff",   "0.18"},
                                {"ReverseBrake",   "0.42"},
                                {"OverspeedBrake", "1.8"},
                                {"TurnBrakeMin",   "0"},
                                {"TurnBrakeMax",   "0"},
                                {"TurnStrength",   "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "180"},
                                {"MinSpeed",     "1"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "130"},
                                {"MinSpeed",      "20"},
                                {"Falloff",       "0.5"},
                                {"BoostMaxSpeed", "185"},
                                {"BoostFalloff",  "0.7"},
                                {"TurnBrakeMin",  "1"},
                                {"TurnBrakeMax",  "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "100"},
                                {"MinSpeed",     "50"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "80"},
                                {"MinSpeed",     "10"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "180"},
                                {"MinSpeed",     "1"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "130"},
                                {"MinSpeed",      "1"},
                                {"Falloff",       "0.5"},
                                {"BoostMaxSpeed", "185"},
                                {"BoostFalloff",  "0.7"},
                                {"TurnBrakeMin",  "1"},
                                {"TurnBrakeMax",  "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "100"},
                                {"MinSpeed",     "50"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "80"},
                                {"MinSpeed",      "10"},
                                {"Falloff",       "0.7"},
                                {"BoostMaxSpeed", "120"},
                                {"BoostFalloff",  "0.7"},
                                {"TurnBrakeMin",  "1"},
                                {"TurnBrakeMax",  "4"},
                            }
                        }, 
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "180"},
                                {"MinSpeed",     "1"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "130"},
                                {"MinSpeed",      "1"},
                                {"Falloff",       "0.5"},
                                {"BoostMaxSpeed", "185"},
                                {"BoostFalloff",  "0.7"},
                                {"TurnBrakeMin",  "1"},
                                {"TurnBrakeMax",  "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "130"},
                                {"MinSpeed",     "50"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "80"},
                                {"MinSpeed",      "10"},
                                {"Falloff",       "0.7"},
                                {"BoostMaxSpeed", "120"},
                                {"BoostFalloff",  "0.7"},
                                {"TurnBrakeMin",  "1"},
                                {"TurnBrakeMax",  "4"},
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
                                {[[    <RenderTarget id="WATER_REFL"         platforms="PC|NEXT|XB1X"  depthBuf="false"  numColBufs="1" format="RED32UI"                 scale="1.0" applyDrs="true" allowDcc="false" shareTarget0="RED32UI_BUF_1" />]], [[    <RenderTarget id="WATER_REFL"         platforms="PC|NEXT|XB1X"  depthBuf="false"  numColBufs="1" format="RED32UI"                 scale="1.0" applyDrs="true" allowDcc="true" shareTarget0="RED32UI_BUF_1" />]]},
                                {[[    <RenderTarget id="WATER_REFL_FRONT"   platforms="PC|NEXT"       depthBuf="false"  numColBufs="1" format="RED32UI"                 scale="1.0" applyDrs="true" allowDcc="false" shareTarget0="RED32UI_BUF_2" esramPageColBuf0="76" />]], [[    <RenderTarget id="WATER_REFL_FRONT"   platforms="PC|NEXT"       depthBuf="false"  numColBufs="1" format="RED32UI"                 scale="1.0" applyDrs="true" allowDcc="true" shareTarget0="RED32UI_BUF_2" esramPageColBuf0="76" />]]},
                                {[[    <RenderTarget id="WATER_REFL_BACK"    platforms="PC|NEXT"       depthBuf="false"  numColBufs="1" format="RED32UI"                 scale="1.0" applyDrs="true" allowDcc="false" />]], [[    <RenderTarget id="WATER_REFL_BACK"    platforms="PC|NEXT"       depthBuf="false"  numColBufs="1" format="RED32UI"                 scale="1.0" applyDrs="true" allowDcc="true" />]]},
                            }
                        },
                    }
                },
            }
        }
    }
}