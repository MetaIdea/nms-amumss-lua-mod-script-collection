Mod_version = "1.12"

-- Reward Function --
local function Reward(id)
return
[[
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="]]..id..[[" />
            </Property>
]]
end

-- Currency Reward Function --
local function Currency(currency, min, max, chance)
return
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..chance..[[" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="]]..min..[[" />
              <Property name="AmountMax" value="]]..max..[[" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="]]..currency..[[" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
end

-- New Reward Function --
local function NewReward(id, currency, min, max, chance)
return
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="]]..id..[[" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..chance..[[" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="]]..min..[[" />
              <Property name="AmountMax" value="]]..max..[[" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="]]..currency..[[" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
end

-- New Item Reward Function --
local function NewItemReward(id, min, max, chance)
return
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..chance..[[" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="]]..id..[[" />
              <Property name="AmountMin" value="]]..min..[[" />
              <Property name="AmountMax" value="]]..max..[[" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
end

-- Reward Changes --
QUICKSILV_S = Reward("RS_QUICKSILV_S")
                    -- Currency, Min, Max, Chance
REWARD_T  = Currency("Specials",  10,  10, 100)
REWARD_S  = Currency("Specials",  25,  25, 100)
REWARD_M  = Currency("Specials",  50,  50, 100)
REWARD_MM = Currency("Specials",  75,  75, 100)
REWARD_L  = Currency("Specials", 100, 100, 100)
REWARD_LL = Currency("Specials", 125, 125, 100)
REWARD_XL = Currency("Specials", 250, 250, 100)

REWARD_ENTRIES = 
{
  NewReward("RS_QUICKSILV_XSS", "Specials",   5,   5, 100), 
  NewReward("RS_QUICKSILV_XXS", "Specials",  10,  10, 100), 
  NewReward("RS_QUICKSILV_XS",  "Specials",  25,  25, 100), 
  NewReward("RS_QUICKSILV_XL",  "Specials", 250, 250, 100),
}

Rewards = 
{
  {
    ["REWARD"] = REWARD_T,
    ["IDS"] = 
    {
      "DRONE_LOOT"
    },
  },
  {
    ["REWARD"] = REWARD_S,
    ["IDS"] = 
    {
      "QUAD_LOOT", 
      "PIRATE_BOUNTY1", 
      "PROC_PROD_BONES", 
      "PROC_PROD_SCRAP", 
      "MB_STAND_LOW"
    },
  },
  {
    ["REWARD"] = REWARD_M,
    ["IDS"] = 
    {
      "PIRATE_BOUNTY2", 
      "BEGIN_SALVAGE", 
      "PIRATE_REJECT", 
      "MB_STAND_MED", 
      "MECH_LOOT", 
      "R_SENTINELS_OFF"
    },
  },
  {
    ["REWARD"] = REWARD_MM,
    ["IDS"] = 
    {
      "WALKER_LOOT"
    },
  },  
  {
    ["REWARD"] = REWARD_L,
    ["IDS"] = 
    {
      "PIRATE_BOUNTY3", 
      "PROC_PROD_CHEST", 
      "R_SEACHEST", 
      "R_SALVAGE", 
      "R_CRASHSITE_FLY", 
      "MB_STAND_HIGH"
    },
  },
    {
    ["REWARD"] = REWARD_LL,
    ["IDS"] = 
    {
      "R_PIRATEBOARD_B", 
      "R_NEXUS_MED_C"
    },
  },
  {
    ["REWARD"] = REWARD_XL,
    ["IDS"] = 
    {
      "R_ABAND_END", 
      "R_NEXUS_MEGA_C"
    },
  },
}

OptionRewards =
{
  {
    ["REWARD"] = QUICKSILV_S,
    ["Name"] = 
    {
      "TRA_CRA_OPT_A_1", 
      "TRA_CRA_OPT_A_2",
      "TRA_CRA_OPT_A_3",
      "TRA_CRA_OPT_A_4",
      "TRA_CRA_OPT_A_5",
      "TRA_CRA_OPT_A_6",
      "TRA_CRA_OPT_A_7",
      "TRA_CRA_OPT_A_8",
      "TRA_CRA_OPT_A_9",
      "TRA_CRA_OPT_A_10",
      "TRA_CRA_OPT_A_11",
      "TRA_CRA_OPT_A_12",
      "TRA_CRA_OPT_A_13",
      "TRA_CRA_OPT_A_14",
      "TRA_CRA_OPT_A_15",
      "TRA_CRA_OPT_A_16",
      "TRA_CRA_OPT_A_17",
      "TRA_CRA_OPT_A_18",
      "TRA_CRA_OPT_A_19",
      "TRA_CRA_OPT_A_20",
      "EXP_CRA_OPT_A_1",
      "EXP_CRA_OPT_A_2",
      "EXP_CRA_OPT_A_3",
      "EXP_CRA_OPT_A_4",
      "EXP_CRA_OPT_A_5",
      "EXP_CRA_OPT_A_6",
      "EXP_CRA_OPT_A_7",
      "EXP_CRA_OPT_A_8",
      "EXP_CRA_OPT_A_9",
      "EXP_CRA_OPT_A_10",
      "EXP_CRA_OPT_A_11",
      "EXP_CRA_OPT_A_12",
      "EXP_CRA_OPT_A_13",
      "EXP_CRA_OPT_A_14",
      "EXP_CRA_OPT_A_15",
      "EXP_CRA_OPT_A_16",
      "EXP_CRA_OPT_A_17",
      "EXP_CRA_OPT_A_18",
      "EXP_CRA_OPT_A_19",
      "EXP_CRA_OPT_A_20",
      "WAR_CRA_OPT_A_1",
      "WAR_CRA_OPT_A_2",
      "WAR_CRA_OPT_A_3",
      "WAR_CRA_OPT_A_4",
      "WAR_CRA_OPT_A_5",
      "WAR_CRA_OPT_A_6",
      "WAR_CRA_OPT_A_7",
      "WAR_CRA_OPT_A_8",
      "WAR_CRA_OPT_A_9",
      "WAR_CRA_OPT_A_10",
      "WAR_CRA_OPT_A_11",
      "WAR_CRA_OPT_A_12",
      "WAR_CRA_OPT_A_13",
      "WAR_CRA_OPT_A_14",
      "WAR_CRA_OPT_A_15",
      "WAR_CRA_OPT_A_16",
      "WAR_CRA_OPT_A_17",
      "WAR_CRA_OPT_A_18",
      "WAR_CRA_OPT_A_19",
      "WAR_CRA_OPT_A_20",
      "FOURTH_CRA_OPT_A_1",
      "FOURTH_CRA_OPT_A_2",
      "FOURTH_CRA_OPT_A_3",
      "FOURTH_CRA_OPT_A_4",
      "FOURTH_CRA_OPT_A_5",
      "FOURTH_CRA_OPT_A_6",
      "FOURTH_CRA_OPT_A_7",
      "FOURTH_CRA_OPT_A_8",
      "FOURTH_CRA_OPT_A_9",
      "FOURTH_CRA_OPT_A_10",
      "FOURTH_CRA_OPT_A_11",
      "FOURTH_CRA_OPT_A_12",
      "FOURTH_CRA_OPT_A_13",
      "FOURTH_CRA_OPT_A_14",
      "FOURTH_CRA_OPT_A_15",
      "FOURTH_CRA_OPT_A_16",
      "FOURTH_CRA_OPT_A_17",
      "FOURTH_CRA_OPT_A_18",
      "FOURTH_CRA_OPT_A_19",
      "FOURTH_CRA_OPT_A_20",
      "ALL_ABAN_OPT_A_1"
    },
  },
}

RemoveRewards =
{
  {
    "R_PIRATEBOARD_B",
    "R_NEXUS_MEGA_C",
    "R_NEXUS_MED_C"
  },
}

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]    = "EnjoyableQuicksilver."..Mod_version..".pak",
  ["MOD_DESCRIPTION"] = "Allows the player to grind Quicksilver through a wide variety of different ways",
  ["MOD_AUTHOR"]      = "ArtisticMisfit",
  ["LUA_AUTHOR"]      = "TheLich, Babscoole and Reikokuu",
  ["NMS_VERSION"]     = "3.93",
  ["MODIFICATIONS"]   = 
  {
    {
      ["MBIN_CHANGE_TABLE"] = 
      { 
        {
          ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
          ["EXML_CHANGE_TABLE"] = 
          {
            -- AlienPuzzleTable
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] = 
          {
            -- RewardTable
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] = 
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_PIRATEBOARD_B"},
              ["PRECEDING_KEY_WORDS"] = {"List", "List"},
              ["ADD"] = NewItemReward("REP_TOKEN", 1, 1, 25),
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "RS_MONEY_L"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = REWARD_ENTRIES,
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = "METADATA/SIMULATION/MISSIONS/TUTORIALMISSIONTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] = 
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_RESET_SAL"},
              ["PRECEDING_KEY_WORDS"] = {"List", "List"},
              ["ADD"] = REWARD_M,
            },
          }
        },
      }
    },
  }  
}

local AlienPuzzleTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local RewardTable      = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #OptionRewards do
  local REWARD = OptionRewards[i]
  for j = 1, #REWARD["Name"] do
    local Options = REWARD["Name"][j]
    -- Adds QUICKSILV_S Reward to all options listed --
    AlienPuzzleTable[#AlienPuzzleTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Name", Options},
      ["PRECEDING_KEY_WORDS"] = "Rewards",
      ["REPLACE_TYPE"] = "ALL",
      ["ADD"] = REWARD["REWARD"],
    }
  end
end

for i = 1, #RemoveRewards do
  local Remove = RemoveRewards[i]
  for j = 1, #Remove do
    local ID = Remove[j]
    -- Removes 3 rewards from R_PIRATEBOARD_B, R_NEXUS_MEGA_C, R_NEXUS_MED_C
    RewardTable[#RewardTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", ID},
      ["PRECEDING_KEY_WORDS"] = {"List", "List", "GcRewardTableItem.xml"},
      ["REPLACE_TYPE"] = "ALL",
      ["REMOVE"] = "SECTION",
    }
    RewardTable[#RewardTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", ID},
      ["PRECEDING_KEY_WORDS"] = {"List", "List", "GcRewardTableItem.xml"},
      ["REPLACE_TYPE"] = "ALL",
      ["REMOVE"] = "SECTION",
    }
    RewardTable[#RewardTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", ID},
      ["PRECEDING_KEY_WORDS"] = {"List", "List", "GcRewardTableItem.xml"},
      ["REPLACE_TYPE"] = "ALL",
      ["REMOVE"] = "SECTION",
    }
  end
end

for i = 1, #Rewards do
  local REWARD = Rewards[i]
  for j = 1, #REWARD["IDS"] do
    local ID = REWARD["IDS"][j]
    -- Adds Rewards to each of the IDS --
    RewardTable[#RewardTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", ID},
      ["PRECEDING_KEY_WORDS"] = {"List", "List"},
      ["ADD"] = REWARD["REWARD"],
    }
  end
end