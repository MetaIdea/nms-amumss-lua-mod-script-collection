ModName = "CheapPetSlots"
Author = "Jackty89"

CostTablePath = "METADATA/REALITY/TABLES/COSTTABLE.MBIN"
Cost_List = [[
    <Property name="Costs" value="25" _index="0" />
    <Property name="Costs" value="50" _index="1" />
    <Property name="Costs" value="75" _index="2" />
    <Property name="Costs" value="100" _index="3" />
    <Property name="Costs" value="125" _index="4" />
    <Property name="Costs" value="150" _index="5" />
]]

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
                            PRECEDING_KEY_WORDS = {"Costs"},
                            CREATE_HOES = "TRUE",
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "C_PET_SLOT"},
                            PRECEDING_KEY_WORDS = {'Costs'},
                            CREATE_HOS = "TRUE",
                            ADD = Cost_List
                        }
                    }
                }
            }
        }
    }
}