NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "noclipship.pak",
["MOD_AUTHOR"]    = "EliteGamers",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.08",
["MODIFICATIONS"] =
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
                                {"ApplyHeightForce",                      "False"},
                                {"ApplyHeightAlign",                      "False"},
                                {"NearGroundPitchCorrectMinHeightRemote", "0"},
                                {"NearGroundPitchCorrectRangeRemote",     "0"},
                                {"LowAltitudeAnimationHeight",            "0"},
                                {"LowAltitudeAnimationTime",              "0"},
                                {"GroundNearEffectHeight",                "0"},
                                {"GroundNearEffectRange",                 "0"},
                                {"GroundNearEffectNormalOffset",          "0"},
                                {"GroundNearEffectBuildingFade",          "0"},
                                {"AcrobaticLowFlightLevel",               "0"},
                                {"_3rdPersonLowHeightMin",                "0"},
                                {"_3rdPersonLowHeightMax",                "0"},
                                {"_3rdPersonLowHeightSpringTime",         "0"},
                                {"AvoidancePower",                        "0"},
                                {"AvoidanceDistancePower",                "0"},
                                {"CollisionDeflectForce",                 "0"},
                                {"CollisionAlignStrength",                "0"},
                                {"AtmosphereSpeed",                       "500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BoostThrustForce", "300"},
                                {"BoostMaxSpeed",    "500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "500"},
                                {"MaxSpeed",         "500"},
                                {"BoostThrustForce", "1000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "500"},
                                {"MaxSpeed",         "500"},
                                {"BoostThrustForce", "300"},
                            }
                        },
                    }
                }
            }
        }
    }
}