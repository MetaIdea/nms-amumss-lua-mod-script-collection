ModeName = "NoNebula"
Author = "Jackty89"

Value = "0"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModeName .. ".pak",
    ["MOD_DESCRIPTION"] = ModeName,
    ["MOD_AUTHOR"] = Author,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NebulaeAlphaPow", Value},
                                {"NebulaeTraceValueMult", Value},
                                {"NebulaeTraceScale", Value},
                                {"NebulaeTraceDensity", Value},
                                {"NebulaeTraceDensityCutoff", Value},
                                {"NebulaeTraceStepRange", Value},
                                -- {"BGColourStage1", Value},
                                -- {"BGColourStage2", Value},
                                -- {"BGColourStage3", Value},
                                -- {"BGColourStage4", Value},
                                -- {"BGColourCellBlend", Value},
                                -- {"BGColourPow", Value},
                                {"StarFieldBlendAmount", Value}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "DefaultRenderSetup",
                                "GcGalaxyRenderSetupData.xml",
                                "NebulaeTraceStepRange",
                                "Vector2f.xml"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", Value},
                                {"y", Value}
                            }
                        }
                    }
                }
            }
        }
    }
}
