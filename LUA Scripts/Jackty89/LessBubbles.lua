GameVersion = "3_81"
ModeName = "LessBubbles"
Author = "Jackty89"

BubblesParticlePath = "MODELS\\EFFECTS\\VEHICLE\\UNDERWATER\\BUBBLES\\BUBBLEEMITTER.PARTICLE.MBIN"

FixedValue = "50"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]            = ModeName..GameVersion..".pak",
    ["MOD_DESCRIPTION"]         = ModeName,
    ["MOD_AUTHOR"]              = Author,
    ["NMS_VERSION"]             = GameVersion,
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
                            ["SPECIAL_KEY_WORDS"] = {"Burst" , "0","EmissionRate","TkEmitterFloatProperty.xml", "Authoring", "FixedValue" },
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