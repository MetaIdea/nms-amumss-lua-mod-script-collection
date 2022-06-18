-- Quicksilver Reward Settings --
Quicksilver =
{
  { -- ListID
    {"R_MB_LOW"}, -- Mission Board Low
    { -- Currency,   Min,   Max, Chance,     Original
      {"Specials",    50,    50,    10}, -- 50, 50, 10
    }
  },
  {
    {"R_MB_MED"}, -- Mission Board Med
    {
      {"Specials",   100,   100,    10}, -- 100, 100, 10
    }
  },
  {
    {"R_MB_HIGH"}, -- Mission Board High
    {
      {"Specials",   150,   150,    10}, -- 150, 150, 10
    }
  },
  {
    {"R_MB_MEGA"}, -- Mission Board Mega
    {
      {"Specials",   200,   200,    10}, -- 200, 200, 10
    }
  },
  {
    {"R_NEXUS_MED_C"}, -- Nexus Mission Med
    {
      {"Specials",   150,   150,    20}, -- 150, 150, 20
    }
  },
  {
    {"R_NEXUS_MEGA_C"}, -- Nexus Mission Mega
    {
      {"Specials",   250,   250,    20}, -- 250, 250, 20
    }
  },
  {
    {"R_PIRATEBOARD_B"}, -- Outlaw Bounty Master
    {
      {"Specials",   100,   100,    10}, -- 100, 100, 10
    }
  },
}
-----------------------------------------------------------------

-- QS Daily Mission Reward Settings --
DailyReward =
{
  {
    {"R_NEXUS_QS"}, -- Nexus Daily Mission
    { -- Currency,   Min,    Max,    Original
      {"Specials",  2500,  2500}, -- 250, 250
    }
  },
  {
    {"R_NEXUS_QS_PQ"}, -- Nexus Weekly Mission
    {
      {"Specials", 12000, 12000}, -- 1200, 1200
    }
  },
}
------------------------------------------------------------------

-- Currency Reward Function --
local function CurrencyReward(currency, min, max, chance)
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
-----------------------------------------------------------------

-- File Settings --
FileName    = "QS Missions and Daily Reward Multiplier 10x 1.42.pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
Description = ""
NMS_Version = "Leviathan 3.92"

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]    = FileName,
  ["MOD_AUTHOR"]      = ModAuthor,
  ["LUA_AUTHOR"]      = LuaAuthor,
  ["MOD_DESCRIPTION"] = Description,
  ["NMS_VERSION"]     = NMS_Version,
  ["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] = 
      { 
        {
          ["MBIN_FILE_SOURCE"]  = FileSource1,
          ["EXML_CHANGE_TABLE"] = 
          {
            -- RewardTable
          }
        },
      }
    },
  }
}

local RewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #Quicksilver do
  local ListID = Quicksilver[i][1][1]
  local Items  = Quicksilver[i][2]
  
  for j = 1, #Items do
    Currency = Items[j][1]
    Min      = Items[j][2]
    Max      = Items[j][3]
    Chance   = Items[j][4]
      
    RewardTable[#RewardTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", ListID},
      ["PRECEDING_KEY_WORDS"] = {"List", "List"},
      ["ADD"] = CurrencyReward(Currency, Min, Max, Chance),
    }
  end
end

for i = 1, #DailyReward do
  local ListID = DailyReward[i][1][1]
  local Items  = DailyReward[i][2]
  
  for j = 1, #Items do
    Currency = Items[j][1]
    Min      = Items[j][2]
    Max      = Items[j][3]
      
    RewardTable[#RewardTable+1] =
    {
      ["SPECIAL_KEY_WORDS"]  = {"Id", ListID, "Currency", Currency},
      ["SECTION_UP_SPECIAL"] = 1,
      ["VALUE_CHANGE_TABLE"] = 
      {
        {"AmountMin", Min},
        {"AmountMax", Max},
      },
    }
  end
end