local Mode_Name = 'MoreSalavageData'
local Author = 'Jackty89'

local Min_Amount = '10'
local Max_Amount = '20'


local Input_Min = {Min_Amount,
[[
    What is the minimal amount of salavage data you want to dig up?
    Default = >> ]] .. (Min_Amount) .. [[ <<
]]}
Min_Amount = GUIF(Input_Min, 10)

local Input_Max = {Max_Amount,
[[
    What is the maximum amount of salavage data you want to dig up?
    Default = >> ]] .. (Max_Amount) .. [[ <<
]]}
Max_Amount = GUIF(Input_Max, 10)

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = Mode_Name .. '.pak',
    MOD_DESCRIPTION = Mode_Name,
    MOD_AUTHOR = Author,
    MODIFICATIONS =
    {
        {
            MBIN_CHANGE_TABLE =
            {
                {
                    MBIN_FILE_SOURCE = 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
                    EXML_CHANGE_TABLE =
                    {
                        {
                            SPECIAL_KEY_WORDS = {'Id','BP_SALVAGE', 'ID', "BP_SALVAGE"},
                            VALUE_CHANGE_TABLE =
                            {
                                {'AmountMin', Min_Amount},
                                {'AmountMax', Max_Amount}
                            }
                        }
                    }
                }
            }
        }
    }
}
