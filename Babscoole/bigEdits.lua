NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = " bigEdits.pak",
["MOD_AUTHOR"]    = "Azure",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.44",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCTERRAINGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"EditPlaneMaxAdditiveOffsetFactor",    "1"},
                                {"EditPlaneMaxSubtractiveOffsetFactor", "1E+10"},
                                {"EditPlaneMinSubtractiveOffsetFactor", "-1E+10"},
                                {"TerrainEditBeamMaxRange",             "1E+10"},
                                {"TerrainEditBeamSpherecastRadius",     "1.2"},
                                {"TerrainBlocksSearchRadiusMultiplier", "1000.5"},
                                {"RegionMapSearchRadiusMultiplier",     "1E+15"},
                                {"RegionEditAreaMultiplier",            "20000"},
                                {"DensityBlendDistanceMultiplier",      "100000.4"},
                                {"TerrainEditBaseDistanceTolerance",    "1E+10"},
                                {"EditEffectScale",                     "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"EditSizes"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "1.8"},
                                {"IGNORE", "15.2"},
                                {"IGNORE", "20.6"},
                                {"IGNORE", "25"},
                                {"IGNORE", "30.4"},
                                {"IGNORE", "40.8"},
                                {"IGNORE", "50.2"},
                                {"IGNORE", "60.6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SubtractSizes"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "5.8"},
                                {"IGNORE", "30.6"},
                                {"IGNORE", "60.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"UndoEditSizes"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "1"},
                                {"IGNORE", "200.8"},
                            }
                        },
                    }
                },
            }
        }
    }
}