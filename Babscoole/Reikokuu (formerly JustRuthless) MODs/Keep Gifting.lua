-- Custom Gift Option Settings --------------------------------------------------------
Option_Cost   = "5"    -- amount of gifts needed
Option_Reward = "5"    -- amount of rep rewarded
Remove_Option = "True" -- True / False - removes option if cant afford
Keep_Open     = "True" -- True / False - keeps the dialogue open after selecting the option
---------------------------------------------------------------------------------------

CostChanges =
{
  { -- OldID
    {"GEKGIFT1"},
    { -- NewID            CostID,       Amount,   RemoveOptionIfCantAfford
      {"GEKGIFT_C",    "TRA_CURIO1", Option_Cost, Remove_Option},
    }
  },
  {
    {"KORVAXGIFT1"},
    {
      {"KORVAXGIFT_C", "EXP_CURIO1", Option_Cost, Remove_Option},
    }
  },
  {
    {"VYKGIFT1"},
    {
      {"VYKEENGIFT_C", "WAR_CURIO1", Option_Cost, Remove_Option},
    }
  },
}

RewardChanges =
{
  { -- OldID
    {"SEC_STDLOW_TRA"},
    { -- NewID,            Race,         Amount
      {"SEC_CUSTOM_TRA", "Traders",   Option_Reward},
    }
  },
  {
    {"SEC_STDLOW_EXP"},
    {
      {"SEC_CUSTOM_EXP", "Explorers", Option_Reward},
    }
  },
  {
    {"SEC_STDLOW_WAR"},
    {
      {"SEC_CUSTOM_WAR", "Warriors",  Option_Reward},
    }
  },
}

OptionChanges =
{
  { -- ID
    {"?TRA_NPC_SECONDARY"},
    { -- OldCost,       NewCost,           Reward,      KeepOpen
      {"GEKGIFT1",    "GEKGIFT_C",    "SEC_CUSTOM_TRA", Keep_Open},
    }
  },
  {
    {"TRA_NPC_SECONDARY"},
    {
      {"GEKGIFT1",    "GEKGIFT_C",    "SEC_CUSTOM_TRA", Keep_Open},
    }
  },
  {
    {"EXP_NPC_SECONDARY"},
    {
      {"KORVAXGIFT1", "KORVAXGIFT_C", "SEC_CUSTOM_EXP", Keep_Open},
    }
  },
  {
    {"WAR_NPC_SECONDARY"},
    {
      {"VYKGIFT1",    "VYKEENGIFT_C", "SEC_CUSTOM_WAR", Keep_Open},
    }
  },
  {
    {"OUTLAW_SECONDARY"},
    {
      {"GEKGIFT1",    "GEKGIFT_C",    "SEC_CUSTOM_TRA", Keep_Open},
      {"KORVAXGIFT1", "KORVAXGIFT_C", "SEC_CUSTOM_EXP", Keep_Open},
      {"VYKGIFT1",    "VYKEENGIFT_C", "SEC_CUSTOM_WAR", Keep_Open},
    }
  },
}

---------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Keep Gifting.pak",
["MOD_AUTHOR"]      = "Reikokuu & Babscoole",
["MOD_DESCRIPTION"] = "Makes the npcs gifting dialogue stay open when gifting items to increase faction rep and also adds a gifting option for 5x",
["NMS_VERSION"]     = "4.52",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\COSTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "C_REP_TOKEN"},
                            ["SEC_SAVE_TO"] = "ADD_COST",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BATTLE"},
                            ["SEC_SAVE_TO"] = "ADD_REWARD",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ALL_REQUEST_STD_LOW"},
                            ["SEC_SAVE_TO"] = "ADD_PUZZLE",
                        },
                    }
                },
            }
        },
    }
}

local CostTable        = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local RewardTable      = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local AlienPuzzleTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]

-- CostTable --
for i = 1, #CostChanges do
  local OldID  = CostChanges[i][1][1]
  local Change = CostChanges[i][2]

  for j = 1, #Change do
    NewID  = Change[j][1]
    CostID = Change[j][2]
    Amount = Change[j][3]
    Remove = Change[j][4]

    CostTable[#CostTable+1] =
    {
      ["SEC_EDIT"] = "ADD_COST",
      ["SPECIAL_KEY_WORDS"] = {"Cost" ,"GcCostProduct.xml"},
      ["VALUE_CHANGE_TABLE"] =
      {
         {"Id",     CostID},
         {"Amount", Amount},
      }
    }

    CostTable[#CostTable+1] =
    {
      ["SEC_EDIT"] = "ADD_COST",
      ["VALUE_CHANGE_TABLE"] =
      {
         {"Id",                       NewID},
         {"RemoveOptionIfCantAfford", Remove},
      }
    }

    CostTable[#CostTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", OldID},
      ["ADD_OPTION"] = "ADDafterSECTION",
      ["SEC_ADD_NAMED"] = "ADD_COST",
    }
  end
end

-- RewardTable --
for i = 1, #RewardChanges do
  local OldID  = RewardChanges[i][1][1]
  local Change = RewardChanges[i][2]

  for j = 1, #Change do
    NewID  = Change[j][1]
    Race   = Change[j][2]
    Amount = Change[j][3]

    RewardTable[#RewardTable+1] =
    {
      ["SEC_EDIT"] = "ADD_REWARD",
      ["VALUE_CHANGE_TABLE"] =
      {
         {"Id",        NewID},
         {"AlienRace", Race},
         {"AmountMin", Amount},
         {"AmountMax", Amount},
      }
    }

    RewardTable[#RewardTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", OldID},
      ["ADD_OPTION"] = "ADDafterSECTION",
      ["SEC_ADD_NAMED"] = "ADD_REWARD",
    }
  end
end

-- AlienPuzzleTable --
for i = 1, #OptionChanges do
  local OldID  = OptionChanges[i][1][1]
  local Change = OptionChanges[i][2]

  for j = 1, #Change do
    OldCost  = Change[j][1]
    NewCost  = Change[j][2]
    Reward   = Change[j][3]
    KeepOpen = Change[j][4]

    AlienPuzzleTable[#AlienPuzzleTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", OldID, "Cost", OldCost},
      ["REPLACE_TYPE"] = "ALL",
      ["VALUE_CHANGE_TABLE"] =
      {
        {"KeepOpen", KeepOpen},
      },
    }

    AlienPuzzleTable[#AlienPuzzleTable+1] =
    {
      ["SEC_EDIT"] = "ADD_PUZZLE",
      ["VALUE_CHANGE_TABLE"] =
      {
         {"Cost",     NewCost},
         {"Value",    Reward},
         {"KeepOpen", KeepOpen},
      }
    }

    AlienPuzzleTable[#AlienPuzzleTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", OldID, "Cost", OldCost},
      ["REPLACE_TYPE"] = "ALL",
      ["ADD_OPTION"] = "ADDafterSECTION",
      ["SEC_ADD_NAMED"] = "ADD_PUZZLE"
    }
  end
end