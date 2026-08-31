NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "Realistic Space Station Docking.pak",
    ["MOD_DESCRIPTION"] = "Slower and smoother space station docking, landing and takeoff",
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
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DockingRotateSpeed", "0.550000"}
                            }
                        }
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] =
                        "GLOBALS/GCAISPACESHIPGLOBALS.GLOBAL.MBIN",

                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OutpostDockMaxApproachSpeed", "125.000000"}
                            }
                        }
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] =
                        "MODELS/SPACE/SPACESTATION/SPACESTATIONTYPEB/ENTITIES/STATIONTYPEB.ENTITY.MBIN",

                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TakeOffSpeed", "200.000000"},
                                {"TakeOffBoost", "35.000000"}
                            }
                        }
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] =
                        "MODELS/SPACE/SPACESTATION/MODULARPARTS/ENTITIES/STATION_DOCK.ENTITY.MBIN",

                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LandingHeight", "3.000000"}
                            }
                        }
                    }
                }
            }
        }
    }
}