NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "UltraTerrainManipulator.pak",
["MOD_AUTHOR"]    = "Duke",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.52",
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
                            ["SPECIAL_KEY_WORDS"] = {"SaturationOverlay", "GcTerrainOverlayColours.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Scale", "0.2"},
                            }
                        },
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"EditPlaneMaxSubtractiveOffsetFactor", "1E+10"},
                                {"EditPlaneMinSubtractiveOffsetFactor", "-1E+10"},
                                {"TerrainEditBeamMaxRange",             "1E+10"},
                                {"TerrainEditBeamSpherecastRadius",     "1.2"},
                                {"TerrainBlocksSearchRadiusMultiplier", "1000.5"},
                                {"RegionMapSearchRadiusMultiplier",     "1E+15"},
                                {"RegionEditAreaMultiplier",            "20000"},
                                {"DensityBlendDistanceMultiplier",      "100000.4"},
                                {"TerrainEditBaseDistanceTolerance",    "1E+10"},
                                {"UndoBaseEditEffectiveScale",          "0.4"},
                                {"TerrainEditsNormalCostFactor",        "0"},
                                {"TerrainEditsSurvivalCostFactor",      "0"},
                                {"EditEffectScale",                     "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"EditSizes"},
                            ["LINE_OFFSET"] = "+1",
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
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "10.8"},
                                {"IGNORE", "30.6"},
                                {"IGNORE", "1000000.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"UndoEditSizes"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "1"},
                                {"IGNORE", "200.8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FlatteningSizes"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "20000"},
                            }
                        },
                    }
                },
            }
        }
    }
}