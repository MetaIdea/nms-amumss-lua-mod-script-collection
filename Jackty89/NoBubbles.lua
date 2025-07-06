ModeName = "NoBubbles"
Author = "Jackty89"

BubblesParticlePath = "MODELS/EFFECTS/VEHICLE/UNDERWATER/BUBBLES/BUBBLEEMITTER/BUBBLES.PARTICLE.MBIN"
EmissionRateString = '<Property name="EmissionRate" value="" />'

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
                    MBIN_FILE_SOURCE = BubblesParticlePath,
                    EXML_CHANGE_TABLE =
                    {
                        {
                            SPECIAL_KEY_WORDS = {"EmissionRate","TkEmitterFloatProperty"},
                            REMOVE = "Section"
                        },
                        {
                            SPECIAL_KEY_WORDS = {"BurstData", "TkParticleBurstData"},
                            REPLACE_TYPE = "ADDAFTERSECTION",
                            ADD = EmissionRateString
                        }
                    }
                }
            }
        }
    }
}