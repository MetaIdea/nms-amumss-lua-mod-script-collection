NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "FastLandings.pak",
["MOD_AUTHOR"]    = "EliteGamers",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.14",
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
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HoverTakeoffHeight", "50"}, 
                                {"HoverTime", "0.1"}, 
                                {"HoverAlignTime", "0.2"}, 
                                {"HoverTimeAlt", "0.5"}, 
                                {"HoverSpeedFactor", "90"}, 
                                {"HoverMinSpeed", "0"}, 
                                {"HoverLandReachedMinTime", "0"}, 
                                {"HoverLandReachedDistance", "90"}, 
                                {"HoverLandManeuvreTimeMin", "0"}, 
                                {"HoverLandManeuvreTimeMax", "0"}, 
                                {"HoverLandManeuvreTimeHmdMin", "0"}, 
                                {"HoverLandManeuvreTimeHmdMax", "0"}, 
                                {"LandingCheckBuildingRadiusFactor", "0"}, 
                                {"HoverMaxSpeed", "450"}, 
                                {"TakeOffCost", "0"}, 
                                {"LandGroundTakeOffTime", "0.5"}, 
                                {"DockingRotateSpeed", "10"}, 
                                {"EjectAnimSpeedFactor", "0"}, 
                            }
                        },
                    }
                },
            }
        },
    }
}
