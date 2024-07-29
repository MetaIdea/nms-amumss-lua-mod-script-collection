NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "﻿E_Only_Instant_Landing.pak",
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
                                {"LandingMaxSpeed",                      "400"},
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
                                {"NoBoostShipNearMinTime",               "6"},
                                {"HoverMaxSpeed",                        "600"},
                                {"LandGroundTakeOffTime",                "0.1"},
                                {"DockingRotateSpeed",                   "15"},
                            }
                        },                       
                    }
                },
            }
        }
    }
}