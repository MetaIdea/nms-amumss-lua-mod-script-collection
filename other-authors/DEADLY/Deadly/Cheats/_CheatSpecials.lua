NEED_MORE_SPECIALS = [[
<Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="100" />
    <Property name="LabelID" value="" />
    <Property name="Reward" value="GcRewardMoney.xml">
        <Property name="AmountMin" value="50000" />
        <Property name="AmountMax" value="50000" />
        <Property name="RoundNumber" value="False" />
        <Property name="Currency" value="GcCurrency.xml">
            <Property name="Currency" value="Specials" />
        </Property>
    </Property>
</Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "CheatSpecials.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.44",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "NAVDATA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RewardChoice", "GiveAll" }, -- SelectAlways
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "Id", "NAVDATA", "List", "GcRewardTableItemList.xml" },
                            ["PRECEDING_KEY_WORDS"] = { "List" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = NEED_MORE_SPECIALS
                        },
                    }
                },
            }
        },
    }
}
