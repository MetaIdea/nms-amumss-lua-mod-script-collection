NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_PU_BALANCE.pak",
["MOD_DESCRIPTION"]         = "",
["MOD_AUTHOR"]              = "trevix",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.45",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureSmallHealth",   "400"},
                                {"CreatureMedHealth",     "2400"},
                                {"CreatureLargeHealth",   "4800"},
                                {"CreatureHugeHealth",    "10600"},
                                {"TurnRadiusMultiplier",  "2"},
                                {"MaxTurnRadius",         "50"},
                                {"DefaultWalkMoveSpeed",  "0.5"},
                                {"DefaultRunMoveSpeed",   "7"},
                                {"PredatorWalkMoveSpeed", "0.45"},
                                {"PredatorRunMoveSpeed",  "5"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ModelRenderData",       "TkModelRendererData.xml"},
                                {"InteractionCameraData", "TkModelRendererData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LightIntensityMultiplier", "0"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PirateFreighterBattleNoTargetLeaderTime", "0"},
                                {"TorchFoV",                                "70"},
                                {"TorchStrength",                           "8.5"},
                                {"TorchDimFoV",                             "70"},
                                {"TorchDimStrength",                        "7"},
                                {"InteractionTorchFoV",                     "70"},
                                {"InteractionTorchStrength",                "0"},
                                {"UndergroundTorchStrength",                "8.5"},
                                {"UndergroundTorchStrengthFar",             "10.5"},
                                {"TorchOffsetX",                            "0"},
                                {"TorchStaffOffsetY",                       "0"},
                                {"TorchStaffOffsetZMin",                    "0"},
                                {"TorchStaffOffsetZ",                       "0"},
                                {"PlayerAmbientSpotLightIntensity",         "0"},
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
                                {"JetpackForce",           "19"},
                                {"JetpackBrake",           "0"},
                                {"JetpackMinLevel",        "0.1"},
                                {"JetpackMaxSpeed",        "15"},
                                {"JetpackMaxUpSpeed",      "60"},
                                {"JetpackUpForce",         "22"},
                                {"JetpackIgnitionForce",   "410"},
                                {"JetpackIgnitionTime",    "0.03"},
                                {"JetpackMinIgnitionTime", "0.01"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "6"},
                                {"IGNORE", "8"},
                                {"IGNORE", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StickData", "GcPlayerStickData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AcceleratorStickPoint", "0"},
                                {"Accelerate",            "4"},
                                {"Turn",                  "4"},
                                {"TurnFast",              "4"},
                                {"StickyFactor",          "0.15"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCSETTLEMENTGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BuildingUpgradeTimeInSeconds", "120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SettlementBuildingTimes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Settlement_LandingZone",     "60"},
                                {"Settlement_Bar",             "60"},
                                {"Settlement_Tower",           "60"},
                                {"Settlement_Market",          "60"},
                                {"Settlement_Small",           "60"},
                                {"Settlement_SmallIndustrial", "60"},
                                {"Settlement_Medium",          "60"},
                                {"Settlement_Large",           "60"},
                                {"Settlement_Double",          "60"},
                                {"Settlement_Farm",            "60"},
                                {"Settlement_Factory",         "60"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"HandControllerValueMultiplier", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "1"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MiniWarpMarkerApproachSlowdown", "0.9"},
                                {"LandingOnGroundTip",             "-5"},
                                {"MiniWarpLinesNum",               "0"},
                                {"MiniWarpShakeStrength",          "3"},
                                {"MiniWarpChargeTime",             "1"},
                                {"MiniWarpTopSpeedTime",           "15"},
                                {"MiniWarpFlashIntensity",         "0.2"},
                                {"MiniWarpFlashDuration",          "0.3"},
                                {"CollisionSpeedDamageAmount",     "2"},
                                {"CollisionRadiusMultiplier",      "1.2"},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OverspeedBrake", "0.75"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Tox", "GcWonderCategoryConfig.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WonderCategoryComparisonType", "Max"},
                                {"ThresholdValue",               "0"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"InvSlotGradientFactorMin", "0"},
                                {"InvSlotGradientFactor",    "0"},
                                {"InvSlotGradientTime",      "0"},
                                {"CursorHoverSlowFactor",    "0.95"},
                                {"CursorHoverSlowFactorMin", "0.95"},
                                {"FrontendBGAlpha",          "0.5"},
                                {"FrontendConfirmTime",      "0.35"},
                                {"FrontendConfirmTimeSlow",  "0.8"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TimeToMake", "0.25"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "WALK"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSpeed", "0.5"},
                            }
                        },
                    }
                },
            }
        }
    }
}