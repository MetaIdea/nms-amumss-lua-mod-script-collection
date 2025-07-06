ADD_MORE_UNITS = [[
<Property name="List" value="GcRewardTableItem" _index="2">
    <Property name="PercentageChance" value="100.000000" />
    <Property name="LabelID" value="" />
    <Property name="Reward" value="GcRewardMoney">
        <Property name="GcRewardMoney">
            <Property name="AmountMin" value="500000000" />
            <Property name="AmountMax" value="900000000" />
            <Property name="RoundNumber" value="False" />
            <Property name="Currency" value="GcCurrency">
                <Property name="Currency" value="Units" />
            </Property>
        </Property>
    </Property>
</Property>
]]


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "CheatMoney.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.63",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- METADATA/REALITY/TABLES/REWARDTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "NAVDATA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RewardChoice", "GiveAll" }, -- SelectAlways
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "Id", "NAVDATA", "List", "GcRewardTableItemList" },
                            ["PRECEDING_KEY_WORDS"] = { "List" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = ADD_MORE_UNITS
                        },
                    }
                },
            }
        },
    }
}
