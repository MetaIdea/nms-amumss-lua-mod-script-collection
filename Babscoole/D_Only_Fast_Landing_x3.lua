NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "D_Only_Fast_Landing_x3.pak",
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
                                {"LandingMaxSpeed",             "200"},
                                {"HoverTakeoffHeight",          "50"},
                                {"HoverTime",                   "0.5"},
                                {"HoverAlignTime",              "0.4"},
                                {"HoverTimeAlt",                "2"},
                                {"HoverSpeedFactor",            "50"},
                                {"HoverMinSpeed",               "0.4"},
                                {"HoverLandReachedDistance",    "30"},
                                {"HoverLandManeuvreTimeMin",    "0.3"},
                                {"HoverLandManeuvreTimeMax",    "0.4"},
                                {"HoverLandManeuvreTimeHmdMin", "0.4"},
                                {"HoverLandManeuvreTimeHmdMax", "0.5"},
                                {"LandingButtonMinTime",        "0.3"},
                                {"LandingPushNoseUpFactor",     "0.05"},
                                {"HoverMaxSpeed",               "350"},
                                {"LandGroundTakeOffTime",       "0.5"},
                                {"DockingRotateSpeed",          "3"},
                            }
                        },                       
                    }
                },
            }
        }
    }
}