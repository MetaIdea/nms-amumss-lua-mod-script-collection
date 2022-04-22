ModName = "CheapPetSlots"
Author = "Jackty89"

CostTablePath = "METADATA\\REALITY\\TABLES\\COSTTABLE.MBIN"
CostString = [[
    <Property name="Costs">
        <Property value="25" />
        <Property value="50" />
        <Property value="75" />
        <Property value="100" />
        <Property value="125" />
        <Property value="150" />
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]            = ModName..".pak",
    ["MOD_DESCRIPTION"]         = ModName,
    ["MOD_AUTHOR"]              = Author,
    ["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] 	=
            {
                {
                    ["MBIN_FILE_SOURCE"]    = CostTablePath,
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Costs"},
                            ["SPECIAL_KEY_WORDS"]   = {"Id", "C_PET_SLOT"},
                            ["REMOVE"]              = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id", "C_PET_SLOT", "Cost", "GcCostMoneyList.xml"},
                            ["ADD"]                 = CostString
                        }
                    }
                }
            }
        }
    }
}