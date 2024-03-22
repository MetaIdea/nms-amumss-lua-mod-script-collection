-- Quicksilver Reward Settings --
Multiplier = 2

DailyReward =
    {
        {"R_NEXUS_QS"}, -- Nexus Daily Mission
        {"R_NEXUS_QS_PQ"}, -- Nexus Weekly Mission
    }
---------------------------------
NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "QS Daily Mission Reward "..Multiplier.."x.pak",
["MOD_AUTHOR"]      = "Reikokuu & Babscoole",
["MOD_DESCRIPTION"] = "Multiples the quicksilver reward from daily and weekly nexus missions",
["NMS_VERSION"]     = "4.52",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- RewardTable
                    },
                },
            }
        }
    }
}

local RewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #DailyReward do
  local ListID = DailyReward[i][1]

    RewardTable[#RewardTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", ListID, "Currency", "Specials"},
      ["SECTION_UP_SPECIAL"] = 1,
      ["MATH_OPERATION"] = "*",
      ["VALUE_CHANGE_TABLE"] =
      {
        {"AmountMin", Multiplier},
        {"AmountMax", Multiplier},
      },
    }
end