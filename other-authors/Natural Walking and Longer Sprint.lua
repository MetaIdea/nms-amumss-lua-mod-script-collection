NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "Natural Walking and Longer Sprint.pak",
    ["MOD_DESCRIPTION"] = "Slower keyboard walking speed and longer sprint stamina",
    ["MOD_AUTHOR"] = "DrBrown5",
    ["NMS_VERSION"] = "6.45.1",

    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GLOBALS/GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GroundWalkSpeed", "2.0"},
                                {"StaminaRate",     "0.05"}
                            }
                        }
                    }
                }
            }
        }
    }
}