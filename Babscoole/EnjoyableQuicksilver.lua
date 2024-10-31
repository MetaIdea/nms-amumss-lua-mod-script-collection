-- Mod_version = "1.22"

QUICKSILV_S = [[
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="RS_QUICKSILV_S" />
            </Property>
]]

function  REWARD_ALL (AMOUNT)
    return
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="]]..AMOUNT..[[" />
              <Property name="AmountMax" value="]]..AMOUNT..[[" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
          </Property>
]]
end

function  REWARD_ENTRIES (NAME, AMOUNT)
    return
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="]]..NAME..[[" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="]]..AMOUNT..[[" />
              <Property name="AmountMax" value="]]..AMOUNT..[[" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
]]
end

MISSIONS_QS = [[
              <Property value="GcGenericMissionStage.xml">
                <Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="UI_REWARD_FAILED_MSG" />
                  <Property name="Reward" value="RS_QUICKSILV_ML" />
                  <Property name="DoMissionBoardOverride" value="False" />
                  <Property name="Silent" value="False" />
                  <Property name="RewardInventoryOverride" value="None" />
                  <Property name="DebugText" value="Giving QS reward" />
                </Property>
              </Property>
]]

Rewards = {{
    ["REWARD"] = REWARD_ALL (10),
    ["IDS"] = {"DRONE_LOOT"}
}, {
    ["REWARD"] = REWARD_ALL (25),
    ["IDS"] = {"QUAD_LOOT", "CORRUPT_LOOT", "DE_HIVESUB", "PIRATE_BOUNTY1", "PROC_PROD_BONES", "PROC_PROD_SCRAP"}
}, {
    ["REWARD"] = REWARD_ALL (50),
    ["IDS"] = {"PIRATE_BOUNTY2", "BEGIN_SALVAGE", "PIRATE_REJECT", "MECH_LOOT", "POLICELOOT", "R_SENTINELS_OFF"}
}, {
    ["REWARD"] = REWARD_ALL (75),
    ["IDS"] = {"WALKER_LOOT"}
}, {
    ["REWARD"] = REWARD_ALL (100),
    ["IDS"] = {"PIRATE_BOUNTY3", "PROC_PROD_CHEST", "R_SEACHEST", "R_SALVAGE", "R_CRASHSITE_FLY"}
}, {
    ["REWARD"] = REWARD_ALL (250),
    ["IDS"] = {"R_ABAND_END", "R_NEXUS_MEGA_C", "FREIGHTER_SAVED"}
}}

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "EnjoyableQuicksilver.pak",
    ["MOD_DESCRIPTION"] = "Allows the player to grind Quicksilver through a wide variety of different ways",
    ["MOD_AUTHOR"] = "ArtisticMisfit",
    ["LUA_AUTHOR"] = "Leonard, TheLich, Babscoole, ArtisticMisfit",
    ["NMS_VERSION"] = "5.22",
    ["MODIFICATIONS"] = {{
        ["MBIN_CHANGE_TABLE"] = {{
            ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
            ["REGEXBEFORE"] = {{[[(.*)(".*_CRA_OPT_A_.*")]], [[\1"SECTION_TO_CHANGE" oldvalue=\2]]},
                               {[[(.*)(".*_ABAN_OPT_A_.*")]], [[\1"SECTION_TO_CHANGE" oldvalue=\2]]}},
            ["REGEXAFTER"] = {{[[(.*)("SECTION_TO_CHANGE").*(".*")]], [[\1\3]]}},
            ["EXML_CHANGE_TABLE"] = {{
                ["SPECIAL_KEY_WORDS"] = {"Name", "SECTION_TO_CHANGE"},
                ["PRECEDING_KEY_WORDS"] = "Rewards",
                ["REPLACE_TYPE"] = "ALL",
                ["ADD"] = QUICKSILV_S
            }}
        }, {
            ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
            ["EXML_CHANGE_TABLE"] = {{
                ["SPECIAL_KEY_WORDS"] = {"Id", "RS_MONEY_L"},
                ["ADD_OPTION"] = "ADDafterSECTION",
                ["ADD"] = REWARD_ENTRIES("RS_QUICKSILV_XSS",5)..REWARD_ENTRIES("RS_QUICKSILV_XXS",10)..REWARD_ENTRIES("RS_QUICKSILV_XS",25)..REWARD_ENTRIES("RS_QUICKSILV_ML",125)..REWARD_ENTRIES("RS_QUICKSILV_XL",250)
            }}
        }, {
            ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/NPCMISSIONTABLE.MBIN",
            ["EXML_CHANGE_TABLE"] = {{
                ["SPECIAL_KEY_WORDS"] = {"Message", "UI_RETURN_MISSION_OBJ1_MSG"},
                ["SECTION_UP"] = 2,
                ["REPLACE_TYPE"] = "ALL",
                ["ADD_OPTION"] = "ADDendSECTION",
                ["ADD"] = MISSIONS_QS
            }}
        }, {
            ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/PIRATEMISSIONTABLE.MBIN",
            ["EXML_CHANGE_TABLE"] = {{
                ["SPECIAL_KEY_WORDS"] = {"Message", "UI_RETURN_PIRATE_MSG"},
                ["SECTION_UP"] = 2,
                ["REPLACE_TYPE"] = "ALL",
                ["ADD_OPTION"] = "ADDendSECTION",
                ["ADD"] = MISSIONS_QS
            }}
        }, {
            ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/MULTIPLAYERMISSIONTABLE.MBIN",
            ["EXML_CHANGE_TABLE"] = {{
                ["SPECIAL_KEY_WORDS"] = {"Message", "UI_RETURN_MPMISSION_OBJ1_MSG"},
                ["SECTION_UP"] = 2,
                ["REPLACE_TYPE"] = "ALL",
                ["ADD_OPTION"] = "ADDendSECTION",
                ["ADD"] = MISSIONS_QS
            }}
        }}
    }}
}

-- Let us create a shortcut to the EXML_CHANGE_TABLE table that is inside NMS_MOD_DEFINITION_CONTAINER
local Change_Table_Array = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #Rewards do
    local reward = Rewards[i]
    for j = 1, #reward["IDS"] do
        local value = reward["IDS"][j]
        Change_Table_Array[#Change_Table_Array + 1] = {
            ["SPECIAL_KEY_WORDS"] = {"Id", value},
            ["PRECEDING_KEY_WORDS"] = {"List", "List"},
            ["ADD_OPTION"] = "ADDafterLINE",
            ["ADD"] = reward["REWARD"]
        }
    end
end