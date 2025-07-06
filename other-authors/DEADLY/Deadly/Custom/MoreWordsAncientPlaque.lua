WORDS_MIN = 1
WORDS_MAX = 16

local function Create_GcRewardTeachWord(NAME, RACE, MIN, MAX)
    return [[
<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="]] .. NAME .. [[">
    <Property name="Id" value="]] .. NAME .. [[" />
    <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
            <Property name="List" value="GcRewardTableItem" _index="0">
                <Property name="PercentageChance" value="100.000000" />
                <Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardTeachWord">
                    <Property name="GcRewardTeachWord">
                        <Property name="Race" value="GcAlienRace">
                            <Property name="AlienRace" value="]] .. RACE .. [[" />
                        </Property>
                        <Property name="UseCategory" value="False" />
                        <Property name="Category" value="GcWordCategoryTableEnum">
                            <Property name="wordcategorytableEnum" value="MISC" />
                        </Property>
                        <Property name="AmountMin" value="]] .. MIN .. [[" />
                        <Property name="AmountMax" value="]] .. MAX .. [[" />
                    </Property>
                </Property>
            </Property>
        </Property>
    </Property>
</Property>
]]
end

REWARDTABLE_MWAP_REWARDS_TABLE = {
    Create_GcRewardTeachWord("MWAP_EXP", "Explorers", WORDS_MIN, WORDS_MAX),
    Create_GcRewardTeachWord("MWAP_TRA", "Traders", WORDS_MIN, WORDS_MAX),
    Create_GcRewardTeachWord("MWAP_WAR", "Warriors", WORDS_MIN, WORDS_MAX),
    Create_GcRewardTeachWord("MWAP_BUI", "Builders", WORDS_MIN, WORDS_MAX),
    Create_GcRewardTeachWord("MWAP_ATLAS", "Atlas", WORDS_MIN, WORDS_MAX),
}

REWARDTABLE_MWAP_REWARDS = table.concat(REWARDTABLE_MWAP_REWARDS_TABLE, "\n")

--#region GCALIENPUZZLETABLE_REWARDS

GCALIENPUZZLETABLE_REWARD_EXP = [[
<Property name="Rewards">
    <Property name="Rewards" value="MWAP_EXP" _index="0" />
    <Property name="Rewards" value="STD_INC_EXP" _index="1" />
</Property>
]]

GCALIENPUZZLETABLE_REWARD_TRA = [[
<Property name="Rewards">
    <Property name="Rewards" value="MWAP_TRA" _index="0" />
    <Property name="Rewards" value="STD_INC_EXP" _index="1" />
</Property>
]]

GCALIENPUZZLETABLE_REWARD_WAR = [[
<Property name="Rewards">
    <Property name="Rewards" value="MWAP_WAR" _index="0" />
    <Property name="Rewards" value="STD_INC_EXP" _index="1" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_A_1 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_KORVAXCASING" _index="0" />
    <Property name="Rewards" value="STD_INC_EXP" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_A_2 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECH_WEAPON" _index="0" />
    <Property name="Rewards" value="STD_INC_EXP" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_A_3 = [[
<Property name="Rewards">
    <Property name="Rewards" value="HEALTHLARGE" _index="0" />
    <Property name="Rewards" value="R_KORVAXCASING" _index="1" />
    <Property name="Rewards" value="STD_INC_EXP" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_A_4 = [[
<Property name="Rewards">
    <Property name="Rewards" value="STD_INC_EXP" _index="0" />
    <Property name="Rewards" value="WEAPON" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_A_5 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_KORVAXCASING" _index="0" />
    <Property name="Rewards" value="STD_INC_EXP" _index="1" />
    <Property name="Rewards" value="HEALTHLARGE" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_A_6 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECH_WEAPON" _index="0" />
    <Property name="Rewards" value="STD_INC_EXP" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_A_7 = [[
<Property name="Rewards">
    <Property name="Rewards" value="HEALTHLARGE" _index="0" />
    <Property name="Rewards" value="R_KORVAXCASING" _index="1" />
    <Property name="Rewards" value="REPAIR_TECH" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_A_8 = [[
<Property name="Rewards">
    <Property name="Rewards" value="HEALTHLARGE" _index="0" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="1" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_B_8 = [[
<Property name="Rewards">
    <Property name="Rewards" value="STD_INC_EXP" _index="0" />
    <Property name="Rewards" value="R_KORVAXCASING" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_A_9 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECH_WEAPON" _index="0" />
    <Property name="Rewards" value="STD_INC_EXP" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_B_9 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECH_SUIT" _index="0" />
    <Property name="Rewards" value="STD_INC_EXP" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_A_10 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_KORVAXCASING" _index="0" />
    <Property name="Rewards" value="STD_INC_EXP" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_B_10 = [[
<Property name="Rewards">
    <Property name="Rewards" value="WEAPON" _index="0" />
    <Property name="Rewards" value="STD_INC_EXP" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_C_10 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECH_ALL" _index="0" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="1" />
    <Property name="Rewards" value="STD_INC_EXP" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_B_11 = [[
<Property name="Rewards">
    <Property name="Rewards" value="HEALTHLARGE" _index="0" />
    <Property name="Rewards" value="STD_INC_EXP" _index="1" />
    <Property name="Rewards" value="R_KORVAXCASING" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_B_12 = [[
<Property name="Rewards">
    <Property name="Rewards" value="MWAP_EXP" _index="0" />
    <Property name="Rewards" value="MWAP_EXP" _index="1" />
    <Property name="Rewards" value="STD_INC_EXP" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_B_13 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_KORVAXCASING" _index="0" />
    <Property name="Rewards" value="STD_INC_EXP" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_A_14 = [[
<Property name="Rewards">
    <Property name="Rewards" value="HEALTHLARGE" _index="0" />
    <Property name="Rewards" value="R_KORVAXCASING" _index="1" />
    <Property name="Rewards" value="STD_INC_EXP" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_B_14 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECH_ALL" _index="0" />
    <Property name="Rewards" value="STD_DEC_EXP" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_A_15 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECHFRAG_S" _index="0" />
    <Property name="Rewards" value="R_KORVAXCASING" _index="1" />
    <Property name="Rewards" value="STD_INC_EXP" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_B_15 = [[
<Property name="Rewards">
    <Property name="Rewards" value="STD_DEC_EXP" _index="0" />
    <Property name="Rewards" value="DAMAGESMALL" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_A_16 = [[
<Property name="Rewards">
    <Property name="Rewards" value="STD_INC_EXP" _index="0" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="1" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_B_16 = [[
<Property name="Rewards">
    <Property name="Rewards" value="MONEY" _index="0" />
    <Property name="Rewards" value="MONEY" _index="1" />
    <Property name="Rewards" value="R_KORVAXCASING" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_B_17 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_KORVAXCASING" _index="0" />
    <Property name="Rewards" value="STD_INC_EXP" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_B_18 = [[
<Property name="Rewards">
    <Property name="Rewards" value="STD_INC_EXP" _index="0" />
    <Property name="Rewards" value="TECH_SHIP" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_EXP_MON_OPT_A_19 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECH_ALL" _index="0" />
    <Property name="Rewards" value="MONEY" _index="1" />
    <Property name="Rewards" value="STD_INC_EXP" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_A_1 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="STD_INC_TRA" _index="1" />
    <Property name="Rewards" value="HEALTHLARGE" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_A_2 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="STD_INC_TRA" _index="1" />
    <Property name="Rewards" value="HEALTHLARGE" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_A_3 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="STD_INC_TRA" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_B_3 = [[
<Property name="Rewards">
    <Property name="Rewards" value="WEAPON" _index="0" />
    <Property name="Rewards" value="DAMAGELARGE" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_A_4 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="STD_INC_TRA" _index="1" />
    <Property name="Rewards" value="HEALTHLARGE" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_A_5 = [[
<Property name="Rewards">
    <Property name="Rewards" value="SHIELDLARGE" _index="0" />
    <Property name="Rewards" value="REPAIR_TECH" _index="1" />
    <Property name="Rewards" value="R_GEKRELIC" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_A_6 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="HEALTHLARGE" _index="1" />
    <Property name="Rewards" value="STD_INC_TRA" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_A_7 = [[
<Property name="Rewards">
    <Property name="Rewards" value="SHIELDLARGE" _index="0" />
    <Property name="Rewards" value="R_GEKRELIC" _index="1" />
    <Property name="Rewards" value="STD_DEC_TRA" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_B_7 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="STD_INC_TRA" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_A_8 = [[
<Property name="Rewards">
    <Property name="Rewards" value="SHIELDLARGE" _index="0" />
    <Property name="Rewards" value="HEALTHLARGE" _index="1" />
    <Property name="Rewards" value="R_GEKRELIC" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_B_8 = [[
<Property name="Rewards">
    <Property name="Rewards" value="SHIELDLARGE" _index="0" />
    <Property name="Rewards" value="REPAIR_TECH" _index="1" />
    <Property name="Rewards" value="R_GEKRELIC" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_A_9 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECH_WEAPON" _index="0" />
    <Property name="Rewards" value="STD_INC_TRA" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_B_9 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECH_SUIT" _index="0" />
    <Property name="Rewards" value="STD_INC_TRA" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_A_10 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="STD_INC_TRA" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_B_10 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="STD_DEC_TRA" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_A_11 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="HEALTHLARGE" _index="1" />
    <Property name="Rewards" value="STD_INC_TRA" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_A_12 = [[
<Property name="Rewards">
    <Property name="Rewards" value="MWAP_TRA" _index="0" />
    <Property name="Rewards" value="MWAP_TRA" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_B_12 = [[
<Property name="Rewards">
    <Property name="Rewards" value="MWAP_TRA" _index="0" />
    <Property name="Rewards" value="MWAP_TRA" _index="1" />
    <Property name="Rewards" value="R_GEKRELIC" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_C_12 = [[
<Property name="Rewards">
    <Property name="Rewards" value="DAMAGESMALL" _index="0" />
    <Property name="Rewards" value="MWAP_TRA" _index="1" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_A_13 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="MONEY" _index="1" />
    <Property name="Rewards" value="STD_DEC_TRA" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_B_13 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="1" />
    <Property name="Rewards" value="STD_INC_TRA" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_C_13 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="MONEY" _index="1" />
    <Property name="Rewards" value="STD_DEC_TRA" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_B_14 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="STD_INC_TRA" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_B_15 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="R_STELLAR2" _index="1" />
    <Property name="Rewards" value="STD_INC_TRA" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_B_16 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="STD_INC_TRA" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_A_17 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="STD_INC_TRA" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_C_17 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECH_ALL" _index="0" />
    <Property name="Rewards" value="STD_DEC_TRA" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_B_18 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="STD_INC_TRA" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_A_19 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECH_ALL" _index="0" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="1" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_B_19 = [[
<Property name="Rewards">
    <Property name="Rewards" value="MWAP_TRA" _index="0" />
    <Property name="Rewards" value="MWAP_TRA" _index="1" />
    <Property name="Rewards" value="MWAP_TRA" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_TRA_MON_OPT_B_20 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_GEKRELIC" _index="0" />
    <Property name="Rewards" value="HEALTHLARGE" _index="1" />
    <Property name="Rewards" value="STD_INC_TRA" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_A_1 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="0" />
    <Property name="Rewards" value="STD_INC_WAR" _index="1" />
    <Property name="Rewards" value="R_LAUNCHFUEL" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_A_2 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="0" />
    <Property name="Rewards" value="STD_INC_WAR" _index="1" />
    <Property name="Rewards" value="HEALTHSMALL" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_A_3 = [[
<Property name="Rewards">
    <Property name="Rewards" value="WEAPON" _index="0" />
    <Property name="Rewards" value="STD_INC_WAR" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_A_4 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="0" />
    <Property name="Rewards" value="STD_INC_WAR" _index="1" />
    <Property name="Rewards" value="USEFUL_PROD" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_A_5 = [[
<Property name="Rewards">
    <Property name="Rewards" value="HEALTHLARGE" _index="0" />
    <Property name="Rewards" value="STD_INC_WAR" _index="1" />
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_B_5 = [[
<Property name="Rewards">
    <Property name="Rewards" value="REPAIR_TECH" _index="0" />
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="1" />
    <Property name="Rewards" value="SHIELDLARGE" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_A_6 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECH_WEAPON" _index="0" />
    <Property name="Rewards" value="STD_INC_WAR" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_B_6 = [[
<Property name="Rewards">
    <Property name="Rewards" value="DAMAGESMALL" _index="0" />
    <Property name="Rewards" value="STD_INC_WAR" _index="1" />
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_A_7 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECH_ALL" _index="0" />
    <Property name="Rewards" value="STD_DEC_WAR" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_B_7 = [[
<Property name="Rewards">
    <Property name="Rewards" value="HEALTHLARGE" _index="0" />
    <Property name="Rewards" value="SHIELDSMALL" _index="1" />
    <Property name="Rewards" value="STD_INC_WAR" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_A_8 = [[
<Property name="Rewards">
    <Property name="Rewards" value="HEALTHLARGE" _index="0" />
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="1" />
    <Property name="Rewards" value="STD_INC_WAR" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_A_9 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="0" />
    <Property name="Rewards" value="STD_INC_WAR" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_B_10 = [[
<Property name="Rewards">
    <Property name="Rewards" value="HEALTHLARGE" _index="0" />
    <Property name="Rewards" value="STD_INC_WAR" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_C_10 = [[
<Property name="Rewards">
    <Property name="Rewards" value="HEALTHLARGE" _index="0" />
    <Property name="Rewards" value="SHIELDLARGE" _index="1" />
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_B_11 = [[
<Property name="Rewards">
    <Property name="Rewards" value="HEALTHLARGE" _index="0" />
    <Property name="Rewards" value="STD_INC_WAR" _index="1" />
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_A_12 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TEACHWORD_WAR" _index="0" />
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="1" />
    <Property name="Rewards" value="STD_INC_WAR" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_B_12 = [[
<Property name="Rewards">
    <Property name="Rewards" value="MWAP_EXP" _index="0" />
    <Property name="Rewards" value="MWAP_EXP" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_C_12 = [[
<Property name="Rewards">
    <Property name="Rewards" value="MWAP_TRA" _index="0" />
    <Property name="Rewards" value="MWAP_TRA" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_B_13 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="0" />
    <Property name="Rewards" value="STD_INC_WAR" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_A_14 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECH_SUIT" _index="0" />
    <Property name="Rewards" value="STD_INC_WAR" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_B_14 = [[
<Property name="Rewards">
    <Property name="Rewards" value="WEAPON" _index="0" />
    <Property name="Rewards" value="STD_INC_WAR" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_A_15 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="0" />
    <Property name="Rewards" value="STD_INC_WAR" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_A_16 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECH_WEAPON" _index="0" />
    <Property name="Rewards" value="HEALTHLARGE" _index="1" />
    <Property name="Rewards" value="STD_INC_WAR" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_B_16 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECH_SUIT" _index="0" />
    <Property name="Rewards" value="HEALTHLARGE" _index="1" />
    <Property name="Rewards" value="STD_INC_WAR" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_B_17 = [[
<Property name="Rewards">
    <Property name="Rewards" value="DAMAGESMALL" _index="0" />
    <Property name="Rewards" value="DAMAGE_TECH" _index="1" />
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_B_18 = [[
<Property name="Rewards">
    <Property name="Rewards" value="STD_INC_WAR" _index="0" />
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="1" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_A_19 = [[
<Property name="Rewards">
    <Property name="Rewards" value="MONEY" _index="0" />
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="1" />
    <Property name="Rewards" value="STD_INC_WAR" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_WAR_MON_OPT_B_20 = [[
<Property name="Rewards">
    <Property name="Rewards" value="HEALTHLARGE" _index="0" />
    <Property name="Rewards" value="R_VYKEENEFFIGY" _index="1" />
    <Property name="Rewards" value="STD_INC_WAR" _index="2" />
    <Property name="Rewards" value="MWAP_ATLAS" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_A_1=  [[
<Property name="Rewards">
    <Property name="Rewards" value="DE_SENT_CRYS" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_A_2 = [[
<Property name="Rewards">
    <Property name="Rewards" value="SUBST_CATA2" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
    <Property name="Rewards" value="R_BUI_MONO_2_A" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_B_2 = [[
<Property name="Rewards">
    <Property name="Rewards" value="DAMAGE_TECH" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
    <Property name="Rewards" value="R_BUI_MONO_2_B" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_C_2 = [[
<Property name="Rewards">
    <Property name="Rewards" value="SUBST_CATA2" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
    <Property name="Rewards" value="R_BUI_MONO_2_C" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_A_3 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_RUST" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_B_3 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_PROC_FOSSIL" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_A_4 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_SOULFRAG" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_B_4 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECHFRAG_L" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_C_4 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECHFRAG_L" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_A_5 = [[
<Property name="Rewards">
    <Property name="Rewards" value="TECHFRAG_L" _index="0" />
    <Property name="Rewards" value="STD_INC_EXP" _index="1" />
    <Property name="Rewards" value="MWAP_EXP" _index="2" />
    <Property name="Rewards" value="R_BUI_MONO_5_A" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_A_6 = [[
<Property name="Rewards">
    <Property name="Rewards" value="DE_GEM_S_LARGE" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_A_7 = [[
<Property name="Rewards">
    <Property name="Rewards" value="DE_SENT_CRYS" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_A_8 = [[
<Property name="Rewards">
    <Property name="Rewards" value="DE_EYEBALL" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
    <Property name="Rewards" value="R_BUI_MONO_8_A" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_B_8 = [[
<Property name="Rewards">
    <Property name="Rewards" value="PROC_PRODUCT" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
    <Property name="Rewards" value="R_BUI_MONO_8_B" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_A_9 = [[
<Property name="Rewards">
    <Property name="Rewards" value="DE_GEM_S_LARGE" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
    <Property name="Rewards" value="R_BUI_MONO_9_A" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_C_9 = [[
<Property name="Rewards">
    <Property name="Rewards" value="DE_GEM_S_LARGE" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
    <Property name="Rewards" value="R_BUI_MONO_9_C" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_A_10 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_RUST" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
    <Property name="Rewards" value="R_BUI_MONO_10_A" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_B_10 = [[
<Property name="Rewards">
    <Property name="Rewards" value="PROC_TECH_ALL" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
    <Property name="Rewards" value="R_BUI_MONO_10_B" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_A_11 = [[
<Property name="Rewards">
    <Property name="Rewards" value="PROC_SUIT_ONLY" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
    <Property name="Rewards" value="R_BUI_MONO_11_A" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_B_11 = [[
<Property name="Rewards">
    <Property name="Rewards" value="PROC_SHIP_ONLY" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
    <Property name="Rewards" value="R_BUI_MONO_11_B" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_C_11 = [[
<Property name="Rewards">
    <Property name="Rewards" value="PROC_WEAP_ONLY" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
    <Property name="Rewards" value="R_BUI_MONO_11_C" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_A_12 = [[
<Property name="Rewards">
    <Property name="Rewards" value="R_CRABFOOD" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
    <Property name="Rewards" value="R_BUI_MONO_12_A" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_B_12 = [[
<Property name="Rewards">
    <Property name="Rewards" value="DE_WORMSPAWN" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
    <Property name="Rewards" value="R_BUI_MONO_12_B" _index="3" />
</Property>
]]

GCALIENPUZZLETABLE_BUI_MON_OPT_C_12 = [[
<Property name="Rewards">
    <Property name="Rewards" value="DAMAGE_TECH" _index="0" />
    <Property name="Rewards" value="STD_INC_BUI" _index="1" />
    <Property name="Rewards" value="MWAP_BUI" _index="2" />
    <Property name="Rewards" value="R_BUI_MONO_12_C" _index="3" />
</Property>
]]

--#endregion


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "MoreWordsAncientPlaque.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Increases amount of learning words given by Ancient Plaque.",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "5.63",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- Korvax / Explorers
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_1_PLAQUE_OPT_1", "Rewards", "TEACHWORD_EXP" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_REWARD_EXP
                        },
                        -- Gek / Traders
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_1_PLAQUE_OPT_1", "Rewards", "TEACHWORD_TRA" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_REWARD_TRA
                        },
                        -- Vy'keen / Warriors
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_1_PLAQUE_OPT_1", "Rewards", "TEACHWORD_WAR" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_REWARD_WAR
                        },

                        --#region ATLAS

                        --#region Atlas / Explorers
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_A_1", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_A_1
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_A_2", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_A_2
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_A_3", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_A_3
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_A_4", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_A_4
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_A_5", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_A_5
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_A_6", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_A_6
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_A_7", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_A_7
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_A_8", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_A_8
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_B_8", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_B_8
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_A_9", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_A_9
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_B_9", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_B_9
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_A_10", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_A_10
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_B_10", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_B_10
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_C_10", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_C_10
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_B_11", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_B_11
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_B_12", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_B_12
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_B_13", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_B_13
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_A_14", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_A_14
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_B_14", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_B_14
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_A_15", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_A_15
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_B_15", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_B_15
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_A_16", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_A_16
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_B_16", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_B_16
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_B_17", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_B_17
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_B_18", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_B_18
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "EXP_MON_OPT_A_19", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_EXP_MON_OPT_A_19
                        },
                        --#endregion

                        --#region Atlas / Traders
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_A_1", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_A_1
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_A_2", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_A_2
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_A_3", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_A_3
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_B_3", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_B_3
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_A_4", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_A_4
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_A_5", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_A_5
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_A_6", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_A_6
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_A_7", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_A_7
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_B_7", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_B_7
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_A_8", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_A_8
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_B_8", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_B_8
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_A_9", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_A_9
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_B_9", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_B_9
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_A_10", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_A_10
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_B_10", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_B_10
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_A_11", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_A_11
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_A_12", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_A_12
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_B_12", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_B_12
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_C_12", "Rewards", "TEACHWORD_TRA" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_C_12
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_A_13", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_A_13
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_B_13", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_B_13
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_C_13", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_C_13
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_B_14", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_B_14
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_B_15", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_B_15
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_B_16", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_B_16
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_A_17", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_A_17
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_C_17", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_C_17
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_B_18", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_B_18
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_A_19", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_A_19
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_B_19", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_B_19
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "TRA_MON_OPT_B_20", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_TRA_MON_OPT_B_20
                        },
                        --#endregion

                        --#region Atlas / Warriors
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_A_1", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_A_1
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_A_2", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_A_2
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_A_3", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_A_3
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_A_4", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_A_4
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_A_5", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_A_5
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_B_5", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_B_5
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_A_6", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_A_6
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_B_6", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_B_6
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_A_7", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_A_7
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_B_7", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_B_7
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_A_8", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_A_8
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_A_9", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_A_9
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_B_10", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_B_10
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_C_10", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_C_10
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_B_11", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_B_11
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_A_12", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_A_12
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_B_12", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_B_12
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_C_12", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_C_12
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_B_13", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_B_13
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_A_14", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_A_14
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_B_14", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_B_14
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_A_15", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_A_15
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_A_16", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_A_16
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_B_16", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_B_16
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_B_17", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_B_17
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_B_18", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_B_18
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_A_19", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_A_19
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "WAR_MON_OPT_B_20", "Rewards", "TEACHWORD_ATLAS" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_WAR_MON_OPT_B_20
                        },
                        --#endregion

                        --#endregion

                        --#region Autophage / Builders
                        {
                            ["SPECIAL_KEY_WORDS"] = {
                                { "Name", "BUI_MON_OPT_A_1", "Rewards", "TEACHWORD_BUI" },
                                { "Name", "BUI_MON_OPT_B_1", "Rewards", "TEACHWORD_BUI" },
                                { "Name", "BUI_MON_OPT_C_1", "Rewards", "TEACHWORD_BUI" },
                            },
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_A_1
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_A_2", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_A_2
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_B_2", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_B_2
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_C_2", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_C_2
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_A_3", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_A_3
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_B_3", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_B_3
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_A_4", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_A_4
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_B_4", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_B_4
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_C_4", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_C_4
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_A_5", "Rewards", "TEACHWORD_EXP" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_A_5
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {
                                { "Name", "BUI_MON_OPT_A_6", "Rewards", "TEACHWORD_BUI" },
                                { "Name", "BUI_MON_OPT_B_6", "Rewards", "TEACHWORD_BUI" },
                                { "Name", "BUI_MON_OPT_C_6", "Rewards", "TEACHWORD_BUI" },
                            },
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_A_6
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {
                                { "Name", "BUI_MON_OPT_A_7", "Rewards", "TEACHWORD_BUI" },
                                { "Name", "BUI_MON_OPT_B_7", "Rewards", "TEACHWORD_BUI" },
                                { "Name", "BUI_MON_OPT_C_7", "Rewards", "TEACHWORD_BUI" },
                            },
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_A_7
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_A_8", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_A_8
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_B_8", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_B_8
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {
                                { "Name", "BUI_MON_OPT_A_9", "Rewards", "TEACHWORD_BUI" },
                                { "Name", "BUI_MON_OPT_B_9", "Rewards", "TEACHWORD_BUI" },
                            },
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_A_9
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_C_9", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_C_9
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_A_10", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_A_10
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_B_10", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_B_10
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_A_11", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_A_11
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_B_11", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_B_11
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Name", "BUI_MON_OPT_C_11", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_C_11
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Text", "BUI_MON_RES_A_12", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_A_12
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Text", "BUI_MON_RES_B_12", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_B_12
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Text", "BUI_MON_RES_C_12", "Rewards", "TEACHWORD_BUI" },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["ADD_OPTION"]        = "REPLACEwholeSECTION",
                            ["ADD"]               = GCALIENPUZZLETABLE_BUI_MON_OPT_C_12
                        },
                        --#endregion
                    }
                },
                { -- METADATA/REALITY/TABLES/REWARDTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = { "InteractionTable" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = REWARDTABLE_MWAP_REWARDS
                        },
                    }
                },
            }
        }
    }
}
