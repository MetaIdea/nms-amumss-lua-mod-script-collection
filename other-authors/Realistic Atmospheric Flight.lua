NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "Realistic Atmospheric Flight.pak",
    ["MOD_DESCRIPTION"] = "Improved atmospheric flight, smoother landings and reduced takeoff fuel cost",
    ["MOD_AUTHOR"] = "DrBrown5",
    ["NMS_VERSION"] = "6.45.1",

    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                        "GLOBALS/GCSPACESHIPGLOBALS.GLOBAL.MBIN",

                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "PlanetEngine",
                                "GcPlayerSpaceshipEngineData"
                            },

                            ["REPLACE_TYPE"] = "ALL",

                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",      "12.000000"},
                                {"BoostMaxSpeed", "250.000000"}
                            }
                        },

                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LandingHoverOffset",                  "-1.000000"},
                                {"HoverSpeedFactor",                    "5.000000"},
                                {"HoverLandReachedDistance",            "4.000000"},
                                {"LandingPushNoseUpFactor",             "-0.050000"},
                                {"CorvetteLandingRotateNoseLiftAmount", "-0.050000"}
                            }
                        }
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] =
                        "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",

                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "StatsType",
                                "Ship_Launcher_TakeOffCost"
                            },

                            ["SECTION_UP"] = 1,

                            ["REPLACE_TYPE"] = "ALL",

                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "20.000000"}
                            }
                        }
                    }
                }
            }
        }
    }
}