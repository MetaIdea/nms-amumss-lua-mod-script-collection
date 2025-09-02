-- Quicksilver Reward Settings --
Quicksilver =
{  --ListID,          Min,Max,Chance
    {"R_MB_LOW",       50,50,10},   -- Mission Board Low
    {"R_MB_MED",       100,100,10}, -- Mission Board Med
    {"R_MB_HIGH",      150,150,10}, -- Mission Board High
    {"R_MB_MEGA",      200,200,10}, -- Mission Board Mega
    {"R_NEXUS_MED_C",  150,150,20}, -- Nexus Mission Med
    {"R_NEXUS_MEGA_C", 250,250,20}, -- Nexus Mission Mega
    {"R_PIRATEBOARD_B",100,100,10}, -- Outlaw Bounty Master
    {"R_CV_LOW",       50,50,10},   -- Corvette Board Low
    {"R_CV_MED",       100,100,10}, -- Corvette Board Med
    {"R_CVBOARD_MED",  100,100,10}, -- Corvette Board Med
    {"R_CV_HIGH",      150,150,10}, -- Corvette Board High
    {"R_CV_MEGA",      200,200,10}, -- Corvette Board Mega
}

-----------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "QS Missions",
["MOD_DESCRIPTION"] = "Adds quicksilver rewards to normal missions at the nexus, space station mission boards, and outlaw bounty masters",
["MOD_AUTHOR"]      = "Reikokuu & Babscoole",
["NMS_VERSION"]     = "6.00",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RS_QUICKSILV_S", "Reward", "GcRewardMoney"},
                            ["SECTION_UP"] = 1,
                            ["SEC_SAVE_TO"] = "ADD_CurrencyReward",
                        },
                    },
                },
            }
        }
    }
}

local RewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

for i = 1, #Quicksilver do
  local ListID = Quicksilver[i][1]
  local Min    = Quicksilver[i][2]
  local Max    = Quicksilver[i][3]
  local Chance = Quicksilver[i][4]

    RewardTable[#RewardTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", ListID},
      ["PRECEDING_KEY_WORDS"] = {"List", "List"},
      ["SEC_ADD_NAMED"] = "ADD_CurrencyReward",
    }
    RewardTable[#RewardTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", ListID},
      ["PRECEDING_KEY_WORDS"] = {"List", "List"},
      ["VALUE_CHANGE_TABLE"] =
      {
        {"PercentageChance", Chance},
        {"AmountMin"       , Min},
        {"AmountMax"       , Max},
      }
    }
end