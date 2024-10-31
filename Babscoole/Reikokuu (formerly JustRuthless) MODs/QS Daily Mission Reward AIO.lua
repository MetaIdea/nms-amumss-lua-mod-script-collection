-- Quicksilver Reward Settings --
Multiplier = 1

InputMultiplier = {Multiplier,
[[
    Choose a reward multiplier:
    1 - 2x
    2 - 5x
    3 - 10x
    Default = 1 | Current = >> ]] .. (Multiplier) .. [[ <<
]]}

while Multiplier do
  Multiplier = GUIF(InputMultiplier,10)

  local minChoice = 1
  local maxChoice = 3

  if Multiplier < minChoice or Multiplier > maxChoice then
    print("         >>> ["..Multiplier.."] is NOT a valid choice.  Must be a number between "..minChoice.."-"..maxChoice..".  Please retry! <<<")
  else
    break
  end
end

if Multiplier == 1 then
  Multiplier = 2
elseif Multiplier == 2 then
  Multiplier = 5
elseif Multiplier == 3 then
  Multiplier = 10
end

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
["NMS_VERSION"]     = "5.22",
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