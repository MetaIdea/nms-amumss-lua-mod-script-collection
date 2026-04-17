ModName = "CheapPetSlotsHalf"
Author = "Jackty89"

CostTablePath = "METADATA/REALITY/TABLES/COSTTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = ModName,
    MOD_DESCRIPTION = ModName,
    MOD_AUTHOR = Author,
    MODIFICATIONS =
    {
        {
            MBIN_CHANGE_TABLE =
            {
                {
                    MBIN_FILE_SOURCE = CostTablePath,
                    MXML_CHANGE_TABLE =
                    {
                        {
                            SPECIAL_KEY_WORDS = {"Id", "C_PET_SLOT"},
                            PRECEDING_KEY_WORDS = {'Costs'},
                            REPLACE_TYPE = "ALLINSIDESECTION",
                            CREATE_HOS = "TRUE",
                            VALUE_CHANGE_TABLE =
                            {
                                {"IGNORE", "@/2"},
                            }
                        }
                    }
                }
            }
        }
    }
}