ModeName = "NoNebula"
Author = "Jackty89"

Value = "0"

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = ModeName,
    MOD_DESCRIPTION = ModeName,
    MOD_AUTHOR = Author,
    MODIFICATIONS =
    {
        {
            MBIN_CHANGE_TABLE =
            {
                {
                    MBIN_FILE_SOURCE = "GCGALAXYGLOBALS.GLOBAL.MBIN",
                    EXML_CHANGE_TABLE =
                    {
                        {
                            VALUE_CHANGE_TABLE =
                            {
                                {"Nebulae Alpha Pow", Value},
                                {"Nebulae Trace Value Mult", Value},
                                {"Nebulae Trace Scale", Value},
                                {"Nebulae Trace Density", Value},
                                {"Nebulae Trace Density Cutoff", Value},
                                {"Star Field Blend Amount", Value}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"DefaultRenderSetup", "GcGalaxyRenderSetupData"},
                            PRECEDING_KEY_WORDS = {"Nebulae Trace Step Range"}, --, "Vector2f"
                            VALUE_CHANGE_TABLE =
                            {
                                {"X", Value},
                                {"Y", Value}
                            }
                        }
                    }
                }
            }
        }
    }
}