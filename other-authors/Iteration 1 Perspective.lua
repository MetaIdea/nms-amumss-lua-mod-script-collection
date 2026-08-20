NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "Iteration 1 Perspective.pak",
    ["MOD_AUTHOR"] = "Antonius117",
    ["LUA_AUTHOR"] = "Antonius117",
    ["MOD_DESCRIPTION"] = "Repositions first-person Multi-Tools for improved visibility and more consistent framing across FOV settings.",
    ["NMS_VERSION"] = "6.13",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GunOffsetX", "0.14"},
                                {"GunOffsetY", "0.05"},
                                {"GunOffsetZ", "-0.29"},

                                {"GunOffsetAggressiveX", "0.14"},
                                {"GunOffsetAggressiveY", "0.05"},
                                {"GunOffsetAggressiveZ", "-0.29"}
                            }
                        }
                    }
                }
            }
        }
    }
}