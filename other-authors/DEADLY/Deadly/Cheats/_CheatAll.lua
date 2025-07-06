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

ADD_MORE_SPECIALS = [[
<Property name="List" value="GcRewardTableItem" _index="3">
    <Property name="PercentageChance" value="100.000000" />
    <Property name="LabelID" value="" />
    <Property name="Reward" value="GcRewardMoney">
        <Property name="GcRewardMoney">
            <Property name="AmountMin" value="50000" />
            <Property name="AmountMax" value="50000" />
            <Property name="RoundNumber" value="False" />
            <Property name="Currency" value="GcCurrency">
                <Property name="Currency" value="Specials" />
            </Property>
        </Property>
    </Property>
</Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "CheatAll.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.63",
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
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "NAVDATA", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "AmountMin", 50000 },
                                { "AmountMax", 100000 },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "Id", "NAVDATA", "List", "GcRewardTableItemList" },
                            ["PRECEDING_KEY_WORDS"] = { "List" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = ADD_MORE_UNITS
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "Id", "NAVDATA", "List", "GcRewardTableItemList" },
                            ["PRECEDING_KEY_WORDS"] = { "List" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = ADD_MORE_SPECIALS
                        },
                    }
                }
            }
        }
    }
}
