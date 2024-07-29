NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "B_All_in_One_Instant_Landing.pak",
["MOD_AUTHOR"]              = "Strange7",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.01.1",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"EnablePulseDriveSpaceStationOrient",   "True"},
                                {"LandingMaxSpeed",                      "400"},
                                {"MiniWarpMarkerApproachSlowdown",       "5"},
                                {"MiniWarpAlignSlerp",                   "0.2"},
                                {"HoverTakeoffHeight",                   "50"},
                                {"HoverTime",                            "0.1"},
                                {"HoverAlignTime",                       "0.1"},
                                {"HoverTimeAlt",                         "0.1"},
                                {"HoverAlignTimeAlt",                    "1"},
                                {"HoverSpeedFactor",                     "60"},
                                {"HoverMinSpeed",                        "0.1"},
                                {"HoverLandReachedMinTime",              "0.1"},
                                {"HoverLandReachedDistance",             "80"},
                                {"HoverLandManeuvreTimeMin",             "0.1"},
                                {"HoverLandManeuvreTimeMax",             "0.1"},
                                {"HoverLandManeuvreTimeHmdMin",          "0.1"},
                                {"HoverLandManeuvreTimeHmdMax",          "0.1"},
                                {"HoverLandManeuvreTimeWaterMultiplier", "6"},
                                {"LandingCheckBuildingRadiusFactor",     "0.1"},
                                {"LandingButtonMinTime",                 "0.1"},
                                {"LandingPushNoseUpFactor",              "0.05"},
                                {"HoverMaxSpeed",                        "350"},
                                {"MiniWarpPlanetRadius",                 "200"},
                                {"MiniWarpStationRadius",                "200"},
                                {"MiniWarpChargeTime",                   "0.5"},
                                {"MiniWarpSpeed",                        "100000"},
                                {"MiniWarpCooldownTime",                 "0.75"},
                                {"MiniWarpMinPlanetDistance",            "300"},
                                {"MiniWarpStoppingMarginDefault",        "750"},
                                {"MiniWarpTrackingMargin",               "20"},
                                {"MiniWarpExitSpeed",                    "450"},
                                {"MiniWarpExitTime",                     "0.25"},
                                {"MiniWarpHUDArrowAttractAngle",         "2"},
                                {"MiniWarpHUDArrowAttractAngleStation",  "2"},
                                {"MiniWarpHUDArrowAttractAngleDense",    "1"},
                                {"NoBoostShipNearMinTime",               "6"},
                                {"HoverMaxSpeed",                        "600"},
                                {"LandGroundTakeOffTime",                "0.1"},
                                {"DockingRotateSpeed",                   "15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       "360"},
                                {"MinSpeed",       "0.05"},
                                {"ReverseBrake",   "0.45"},
                                {"OverspeedBrake", "0.45"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",    "35"},
                                {"MaxSpeed",       "200"},
                                {"BoostMaxSpeed",  "348.75"},
                                {"ReverseBrake",   "0.9"},
                                {"OverspeedBrake", "4.8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       "230"},
                                {"MinSpeed",       "2.5"},
                                {"ReverseBrake",   "0.45"},
                                {"OverspeedBrake", "0.45"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",   "50"},
                                {"MaxSpeed",      "128"},
                                {"BoostMaxSpeed", "209.25"},
                                {"ReverseBrake",  "0.45"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",    "100"},
                                {"MaxSpeed",       "315"},
                                {"MinSpeed",       "0.05"},
                                {"ReverseBrake",   "0.45"},
                                {"OverspeedBrake", "0.9"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",    "70"},
                                {"MaxSpeed",       "200"},
                                {"BoostMaxSpeed",  "337.5"},
                                {"ReverseBrake",   "0.9"},
                                {"OverspeedBrake", "4.8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",    "100"},
                                {"MaxSpeed",       "260"},
                                {"MinSpeed",       "2.5"},
                                {"ReverseBrake",   "0.45"},
                                {"OverspeedBrake", "0.45"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",   "100"},
                                {"MaxSpeed",      "128"},
                                {"BoostMaxSpeed", "209.25"},
                                {"ReverseBrake",  "0.45"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "360"},
                                {"MinSpeed",     "0.05"},
                                {"ReverseBrake", "0.6"},
                                {"TurnBrakeMax", "3.9"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",    "35"},
                                {"MaxSpeed",       "208"},
                                {"BoostMaxSpeed",  "351.5"},
                                {"ReverseBrake",   "1.2"},
                                {"OverspeedBrake", "4.8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "200"},
                                {"MinSpeed",     "2.5"},
                                {"ReverseBrake", "0.6"},
                                {"TurnBrakeMax", "5.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",   "50"},
                                {"MaxSpeed",      "128"},
                                {"BoostMaxSpeed", "180"},
                                {"ReverseBrake",  "0.6"},
                            }
                        }, 
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "360"},
                                {"MinSpeed",     "0.05"},
                                {"ReverseBrake", "0.6"},
                                {"TurnBrakeMax", "3.9"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",    "35"},
                                {"MaxSpeed",       "208"},
                                {"BoostMaxSpeed",  "351.5"},
                                {"ReverseBrake",   "1.2"},
                                {"OverspeedBrake", "4.8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "260"},
                                {"MinSpeed",     "2.5"},
                                {"ReverseBrake", "0.6"},
                                {"TurnBrakeMax", "5.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",   "50"},
                                {"MaxSpeed",      "128"},
                                {"BoostMaxSpeed", "180"},
                                {"ReverseBrake",  "0.6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax", "45"},
                            }
                        }, 
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax", "80"},
                                {"ThrustForceMin", "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax", "150"},
                                {"ThrustForceMin", "75"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax", "450"},
                                {"ThrustForceMin", "90"},
                            }
                        },                        
                    }
                },
            }
        }
    }
}