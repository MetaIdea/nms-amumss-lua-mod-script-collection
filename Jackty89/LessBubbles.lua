ModeName = "LessBubbles"
Author = "Jackty89"

BubblesParticlePath = "MODELS\\EFFECTS\\VEHICLE\\UNDERWATER\\BUBBLES\\BUBBLEEMITTER.PARTICLE.MBIN"

FixedValue = "50"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]            = ModeName..".pak",
    ["MOD_DESCRIPTION"]         = ModeName,
    ["MOD_AUTHOR"]              = Author,
    ["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"]    = BubblesParticlePath,
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            -- ["SPECIAL_KEY_WORDS"] = {"Burst" , "0","EmissionRate","TkEmitterFloatProperty.xml", "Authoring", "FixedValue" },
                            ["SPECIAL_KEY_WORDS"] = {"EmissionRate","TkEmitterFloatProperty.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FixedValue", FixedValue}
                            }
                        }
                    }
                }
            }
        }
    }
}