-- Quicksliver Reward Settings --
Quicksilver =
{
  { -- ListID
    {"R_NEXUS_QS"}, -- Nexus Daily Mission
    { -- Currency,   Min,   Max,     Original
      {"Specials",   500,   500}, -- 250, 250
    }
  },
  {
    {"R_NEXUS_QS_PQ"}, -- Nexus Weekly Mission
    {
      {"Specials",  2400,  2400}, -- 1200, 1200
    }
  },
}
---------------------------------

-- File Settings --
FileName    = "QS Daily Mission Reward 2x.pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
ModMaintenance = "Babscoole"
Description = ""
NMS_Version = "4.00"

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]    = FileName,
  ["MOD_AUTHOR"]      = ModAuthor,
  ["LUA_AUTHOR"]      = LuaAuthor,
  ["MOD_MAINTENANCE"] = ModMaintenance,
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