-- Custom Gift Option Settings --
Option_Cost   = "5"    -- amount of gifts needed
Option_Reward = "5"    -- amount of rep rewarded
Remove_Option = "True" -- True / False - removes option if cant afford
Keep_Open     = "True" -- True / False - keeps the dialogue open after selecting the option
---------------------------------

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
--------------------------------------------------------------------------------

-- Cost Function --
local function Costs(id, cost, amount, removeoption)
return
[[
    <Property value="GcCostTableEntry.xml">
      <Property name="Id" value="]]..id..[[" />
      <Property name="DisplayCost" value="True" />
      <Property name="DontCharge" value="False" />
      <Property name="HideOptionAndDisplayCostOnly" value="False" />
      <Property name="DisplayOnlyCostIfCantAfford" value="False" />
      <Property name="HideCostStringIfCanAfford" value="False" />
      <Property name="RemoveOptionIfCantAfford" value="]]..removeoption..[[" />
      <Property name="MustAffordInCreative" value="False" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
      <Property name="Cost" value="GcCostProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="]]..cost..[[" />
        <Property name="Amount" value="]]..amount..[[" />
      </Property>
    </Property>
]]
end
-- Reward Function --
local function Rewards(id, race, amount)
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
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="]]..race..[[" />
              </Property>
              <Property name="AmountMin" value="]]..amount..[[" />
              <Property name="AmountMax" value="]]..amount..[[" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
end
-- Option Function --
local function Options(cost, reward, keepopen)
return
[[
        <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="ALL_REQUEST_STD_LOW" />
          <Property name="Text" value="ALL_REPLY_STANDING" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="]]..cost..[[" />
          <Property name="Rewards">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="]]..reward..[[" />
            </Property>
          </Property>
          <Property name="Mood" value="GcAlienMood.xml">
            <Property name="Mood" value="Positive" />
          </Property>
          <Property name="Prop" value="GcNPCPropTypes.xml">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="KeepOpen" value="]]..keepopen..[[" />
          <Property name="DisplayCost" value="True" />
          <Property name="TruncateCost" value="False" />
          <Property name="MarkInteractionComplete" value="True" />
          <Property name="NextInteraction" value="" />
          <Property name="SelectedOnBackOut" value="False" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
            <Property name="gcwordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
]]
end
---------------------------------------------------------------------------------------

-- File Settings --
FileName    = "Keep Gifting 1.21.pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
Description = ""
NMS_Version = "Leviathan 3.93"

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/COSTTABLE.MBIN"
FileSource2 = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"
FileSource3 = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"

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
            -- CostTable
          }
        },
      }
    },
    {
      ["MBIN_CHANGE_TABLE"] = 
      { 
        {
          ["MBIN_FILE_SOURCE"]  = FileSource2,
          ["EXML_CHANGE_TABLE"] = 
          {
            -- RewardTable
          }
        },
      }
    },
    {
      ["MBIN_CHANGE_TABLE"] = 
      { 
        {
          ["MBIN_FILE_SOURCE"]  = FileSource3,
          ["EXML_CHANGE_TABLE"] = 
          {
            -- AlienPuzzleTable
          }
        },
      }
    },
  }
}

local CostTable        = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local RewardTable      = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][2]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local AlienPuzzleTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][3]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

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
      ["SPECIAL_KEY_WORDS"] = {"Id", OldID},
      ["ADD_OPTION"] = "ADDafterSECTION",
      ["ADD"] = Costs(NewID, CostID, Amount, Remove),
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
      ["SPECIAL_KEY_WORDS"] = {"Id", OldID},
      ["ADD_OPTION"] = "ADDafterSECTION",
      ["ADD"] = Rewards(NewID, Race, Amount),
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
      ["ADD_OPTION"] = "ADDafterSECTION",
      ["ADD"] = Options(NewCost, Reward, KeepOpen),
    }
  end
end

for i = 1, #OptionChanges do
  local OldID  = OptionChanges[i][1][1]
  local Change = OptionChanges[i][2]

  for j = 1, #Change do
    OldCost = Change[j][1]
      
    AlienPuzzleTable[#AlienPuzzleTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", OldID, "Cost", OldCost},
      ["REPLACE_TYPE"] = "ALL",
      ["VALUE_CHANGE_TABLE"] =
      {
        {"KeepOpen", "True"},
      },
    }
  end
end