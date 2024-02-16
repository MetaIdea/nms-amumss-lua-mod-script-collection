WORDS_MIN = 1
WORDS_MAX = 16
NEW_REWARDS = [[
<Property value="GcGenericRewardTableEntry.xml">
    <Property name="Id" value="MWAP_EXP" />
    <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
            <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardTeachWord.xml">
                    <Property name="Race" value="GcAlienRace.xml">
                        <Property name="AlienRace" value="Explorers" />
                    </Property>
                    <Property name="UseCategory" value="False" />
                    <Property name="Category" value="GcWordCategoryTableEnum.xml">
                        <Property name="wordcategorytableEnum" value="MISC" />
                    </Property>
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                </Property>
            </Property>
        </Property>
    </Property>
</Property>
<Property value="GcGenericRewardTableEntry.xml">
    <Property name="Id" value="MWAP_TRA" />
    <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
            <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardTeachWord.xml">
                    <Property name="Race" value="GcAlienRace.xml">
                        <Property name="AlienRace" value="Traders" />
                    </Property>
                    <Property name="UseCategory" value="False" />
                    <Property name="Category" value="GcWordCategoryTableEnum.xml">
                        <Property name="wordcategorytableEnum" value="MISC" />
                    </Property>
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                </Property>
            </Property>
        </Property>
    </Property>
</Property>
<Property value="GcGenericRewardTableEntry.xml">
    <Property name="Id" value="MWAP_WAR" />
    <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
            <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardTeachWord.xml">
                    <Property name="Race" value="GcAlienRace.xml">
                        <Property name="AlienRace" value="Warriors" />
                    </Property>
                    <Property name="UseCategory" value="False" />
                    <Property name="Category" value="GcWordCategoryTableEnum.xml">
                        <Property name="wordcategorytableEnum" value="MISC" />
                    </Property>
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                </Property>
            </Property>
        </Property>
    </Property>
</Property>
<Property value="GcGenericRewardTableEntry.xml">
    <Property name="Id" value="MWAP_BUI" />
    <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
            <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardTeachWord.xml">
                    <Property name="Race" value="GcAlienRace.xml">
                        <Property name="AlienRace" value="Builders" />
                    </Property>
                    <Property name="UseCategory" value="False" />
                    <Property name="Category" value="GcWordCategoryTableEnum.xml">
                        <Property name="wordcategorytableEnum" value="MISC" />
                    </Property>
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                </Property>
            </Property>
        </Property>
    </Property>
</Property>
<Property value="GcGenericRewardTableEntry.xml">
    <Property name="Id" value="MWAP_ATLAS" />
    <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
            <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardTeachWord.xml">
                    <Property name="Race" value="GcAlienRace.xml">
                        <Property name="AlienRace" value="Atlas" />
                    </Property>
                    <Property name="UseCategory" value="False" />
                    <Property name="Category" value="GcWordCategoryTableEnum.xml">
                        <Property name="wordcategorytableEnum" value="MISC" />
                    </Property>
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                </Property>
            </Property>
        </Property>
    </Property>
</Property>
]]


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "MoreWordsAncientPlaque.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Increases amount of learning words given by Ancient Plaque.",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- Korvax / Explorers
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Name", "EXP_1_PLAQUE_OPT_1", "Value", "TEACHWORD_EXP" },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Value", "MWAP_EXP" },
                            },
                        },
                        -- Gek / Traders
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Name", "TRA_1_PLAQUE_OPT_1", "Value", "TEACHWORD_TRA" },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Value", "MWAP_TRA" },
                            },
                        },
                        -- Vy'keen / Warriors
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Name", "WAR_1_PLAQUE_OPT_1", "Value", "TEACHWORD_WAR" },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Value", "MWAP_WAR" },
                            },
                        },
                        -- Atlas
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "InteractionType", "Monolith" },
                            ["SECTION_UP"]         = 1,
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "TEACHWORD_ATLAS",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Value", "MWAP_ATLAS" },
                            },
                        },
                        -- Autophage / Builders
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "BUI_MON_1",  "Value", "TEACHWORD_BUI" },
                                { "Id", "BUI_MON_2",  "Value", "TEACHWORD_BUI" },
                                { "Id", "BUI_MON_3",  "Value", "TEACHWORD_BUI" },
                                { "Id", "BUI_MON_4",  "Value", "TEACHWORD_BUI" },
                                { "Id", "BUI_MON_5",  "Value", "TEACHWORD_BUI" },
                                { "Id", "BUI_MON_6",  "Value", "TEACHWORD_BUI" },
                                { "Id", "BUI_MON_7",  "Value", "TEACHWORD_BUI" },
                                { "Id", "BUI_MON_8",  "Value", "TEACHWORD_BUI" },
                                { "Id", "BUI_MON_9",  "Value", "TEACHWORD_BUI" },
                                { "Id", "BUI_MON_10", "Value", "TEACHWORD_BUI" },
                                { "Id", "BUI_MON_11", "Value", "TEACHWORD_BUI" },
                                { "Id", "BUI_MON_12", "Value", "TEACHWORD_BUI" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Value", "MWAP_BUI" },
                            },
                        },
                    }
                },
                --
                -- METADATA/REALITY/TABLES/REWARDTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = { "InteractionTable" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = NEW_REWARDS
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "MWAP_EXP" },
                                { "Id", "MWAP_TRA" },
                                { "Id", "MWAP_WAR" },
                                { "Id", "MWAP_BUI" },
                                { "Id", "MWAP_ATLAS" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", WORDS_MIN },
                                { "AmountMax", WORDS_MAX },
                            }
                        },
                    }
                },
            }
        }
    }
}
