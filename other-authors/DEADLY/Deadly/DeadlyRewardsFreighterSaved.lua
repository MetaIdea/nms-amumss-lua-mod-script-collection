REPUTATION_CHANCE = 50
REPUTATION_MIN = 1
REPUTATION_MAX = 2

NANITES_CHANCE = 50
NANITES_MIN = 200
NANITES_MAX = 2000

FREI_INV_TOKEN_CHANCE = 50
FREI_INV_TOKEN_MIN = 1
FREI_INV_TOKEN_MAX = 3

BONUS_LIST = [[
<Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="100" />
    <Property name="LabelID" value="" />
    <Property name="Reward" value="GcRewardSystemSpecificProductFromList.xml">
        <Property name="ProductList">
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="TRA_ALLOY4" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="TRA_COMMODITY4" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="TRA_COMPONENT4" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="TRA_ENERGY4" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="TRA_EXOTICS4" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="TRA_MINERALS4" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="TRA_TECH4" />
            </Property>
        </Property>
        <Property name="AmountMin" value="10" />
        <Property name="AmountMax" value="10" />
        <Property name="ForceSpecialMessage" value="False" />
    </Property>
</Property>
<Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="50" />
    <Property name="LabelID" value="" />
    <Property name="Reward" value="GcRewardSystemSpecificProductFromList.xml">
        <Property name="ProductList">
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="TRA_ALLOY5" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="TRA_COMMODITY5" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="TRA_COMPONENT5" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="TRA_ENERGY5" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="TRA_EXOTICS5" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="TRA_MINERALS5" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="TRA_TECH5" />
            </Property>
        </Property>
        <Property name="AmountMin" value="5" />
        <Property name="AmountMax" value="5" />
        <Property name="ForceSpecialMessage" value="False" />
    </Property>
</Property>
<Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="25" />
    <Property name="LabelID" value="" />
    <Property name="Reward" value="GcRewardSystemSpecificProductFromList.xml">
        <Property name="ProductList">
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="GEODE_LAND" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="GEODE_CAVE" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="GEODE_RARE" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="GEODE_SPACE" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="GEODE_ASTEROID" />
            </Property>
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="GEODE_CRYSTAL" />
            </Property>
        </Property>
        <Property name="AmountMin" value="25" />
        <Property name="AmountMax" value="25" />
        <Property name="ForceSpecialMessage" value="False" />
    </Property>
</Property>
]]


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyRewardsFreighterSaved.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA/REALITY/TABLES/REWARDTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "FREIGHTER_SAVED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "OverrideZeroSeed", "True" }, -- False
                            }
                        },
                        -- reputation
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "FREIGHTER_SAVED", "AlienRace", "None" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", REPUTATION_MIN }, -- 2
                                { "AmountMax", REPUTATION_MAX }, -- 3
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "FREIGHTER_SAVED", "AlienRace", "None" },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", REPUTATION_CHANCE }, -- 100
                            }
                        },
                        -- nanites
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "FREIGHTER_SAVED", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", NANITES_MIN }, -- 200
                                { "AmountMax", NANITES_MAX }, -- 300
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "FREIGHTER_SAVED", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", NANITES_CHANCE }, -- 100
                            }
                        },
                        -- Cargo Bulkhead
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "FREIGHTER_SAVED", "ID", "FREI_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", FREI_INV_TOKEN_MIN }, -- 1
                                { "AmountMax", FREI_INV_TOKEN_MAX }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "FREIGHTER_SAVED", "ID", "FREI_INV_TOKEN" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", FREI_INV_TOKEN_CHANCE }, -- 100
                            }
                        },
                        -- delete gold reward
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTER_SAVED", "ID", "ASTEROID2" },
                            ["SECTION_UP"]        = 1,
                            ["REMOVE"]            = "SECTION",
                        },
                        -- our bonus
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "Id", "FREIGHTER_SAVED", "List", "GcRewardTableItemList.xml" },
                            ["PRECEDING_KEY_WORDS"] = { "List" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = BONUS_LIST
                        },
                    }
                }
            }
        }
    }
}
