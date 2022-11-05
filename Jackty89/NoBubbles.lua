ModeName = "NoBubbles"
Author = "Jackty89"

BubblesParticlePath = "MODELS/EFFECTS/VEHICLE/UNDERWATER/BUBBLES/BUBBLEEMITTER.PARTICLE.MBIN"

EmissionRateString = '<Property name="EmissionRate" value="" />'

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModeName..".pak",
    ["MOD_DESCRIPTION"] = ModeName,
    ["MOD_AUTHOR"] = Author,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = BubblesParticlePath,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"EmissionRate","TkEmitterFloatProperty.xml"},
                            ["REMOVE"] = "Section"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BurstData", "TkParticleBurstData.xml"},
                            ["REPLACE_TYPE"] = "ADDAFTERSECTION",
                            ["ADD"] = EmissionRateString
                        }
                    }
                }
            }
        }
    }
}