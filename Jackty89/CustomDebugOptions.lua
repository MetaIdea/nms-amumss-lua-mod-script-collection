ModName = "CustomDebugOptions"
Author = "Jackty89"

DebugoptionsPath = "GCDEBUGOPTIONS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName..".pak",
    ["MOD_DESCRIPTION"] = ModName,
    ["MOD_AUTHOR"] = Author,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = DebugoptionsPath,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MultiplePlayerFreightersInASystem", "True"},
                                {"DisableProfanityFilter", "True"},
                                {"SkipIntro", "True"},
                                {"SkipLogos", "True"},
                            }
                        }
                    }
                }
            }
        }
    }
}