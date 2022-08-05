-- More Words Settings --
NPC            = "2" -- NPC request to learn a word option
KnowledgeStone = "3" -- words learn from knowledge stones
WordStation    = "4" -- words learn from word stations/encyclopedias
Monolith       = "5" -- Monolith seek help with language option
Monolith_Atlas = "3" -- Monolith atlas word reward from multiple choice questions
Atlas_Orb      = "2" -- Glowing orbs on the atlas stations
-------------------------
WordChanges =
{
  { -- WordID
    {"TRA_WORD_DIRECT"},
    { -- Race, Category, UseCategory, Amount
      {"Traders", "DIRECTIONS", "True", NPC},
    }
  },
  {
    {"TRA_WORD_HELP"},
    {
      {"Traders", "HELP", "True", NPC},
    }
  },
  {
    {"TRA_WORD_TRADE"},
    {
      {"Traders", "TRADE", "True", NPC},
    }
  },
  {
    {"TRA_WORD_LORE"},
    {
      {"Traders", "LORE", "True", NPC},
    }
  },
  {
    {"TRA_WORD_TECH"},
    {
      {"Traders", "TECH", "True", NPC},
    }
  },
  {
    {"TRA_WORD_THREAT"},
    {
      {"Traders", "THREAT", "True", NPC},
    }
  },
  {
    {"TRA_WORD_MISC"},
    {
      {"Traders", "MISC", "True", NPC},
    }
  },
  {
    {"EXP_WORD_DIRECT"},
    {
      {"Explorers", "DIRECTIONS", "True", NPC},
    }
  },
  {
    {"EXP_WORD_HELP"},
    {
      {"Explorers", "HELP", "True", NPC},
    }
  },
  {
    {"EXP_WORD_TRADE"},
    {
      {"Explorers", "TRADE", "True", NPC},
    }
  },
  {
    {"EXP_WORD_LORE"},
    {
      {"Explorers", "LORE", "True", NPC},
    }
  },
  {
    {"EXP_WORD_TECH"},
    {
      {"Explorers", "TECH", "True", NPC},
    }
  },
  {
    {"EXP_WORD_THREAT"},
    {
      {"Explorers", "THREAT", "True", NPC},
    }
  },
  {
    {"EXP_WORD_MISC"},
    {
      {"Explorers", "MISC", "True", NPC},
    }
  },
  {
    {"WAR_WORD_DIRECT"},
    {
      {"Warriors", "DIRECTIONS", "True", NPC},
    }
  },
  {
    {"WAR_WORD_HELP"},
    {
      {"Warriors", "HELP", "True", NPC},
    }
  },
  {
    {"WAR_WORD_TRADE"},
    {
      {"Warriors", "TRADE", "True", NPC},
    }
  },
  {
    {"WAR_WORD_LORE"},
    {
      {"Warriors", "LORE", "True", NPC},
    }
  },
  {
    {"WAR_WORD_TECH"},
    {
      {"Warriors", "TECH", "True", NPC},
    }
  },
  {
    {"WAR_WORD_THREAT"},
    {
      {"Warriors", "THREAT", "True", NPC},
    }
  },
  {
    {"WAR_WORD_MISC"},
    {
      {"Warriors", "MISC", "True", NPC},
    }
  },
}

NewWordChanges =
{
  { -- WordID
    {"WORD_STONE_R"},
    { -- Race, Category, UseCategory, Amount
      {"None", "MISC", "False", KnowledgeStone},
    }
  },
  {
    {"WORD_STATION_R"},
    {
      {"None", "MISC", "False", WordStation},
    }
  },
  {
    {"WORD_ATLAS_ORB"},
    {
      {"Atlas", "MISC", "False", Atlas_Orb},
    }
  },
}

PlaqueChanges =
{
  { -- OptionName
    {"TRA_1_PLAQUE_OPT_1"},
    { -- WordID, Amount
      {"TEACHWORD_TRA", Monolith},
    }
  },
  {
    {"EXP_1_PLAQUE_OPT_1"},
    {
      {"TEACHWORD_EXP", Monolith},
    }
  },
  {
    {"WAR_1_PLAQUE_OPT_1"},
    {
      {"TEACHWORD_WAR", Monolith},
    }
  },
}

MonolithChanges =
{
  { -- MonolithID
    {"TRA_MON_1"},
    { -- OptionName, WordID, Amount
      {"TRA_MON_OPT_A_1", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_2"},
    {
      {"TRA_MON_OPT_A_2", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_3"},
    {
      {"TRA_MON_OPT_A_3", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"TRA_MON_OPT_B_3", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_4"},
    {
      {"TRA_MON_OPT_A_4", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_5"},
    {
      {"TRA_MON_OPT_A_5", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_6"},
    {
      {"TRA_MON_OPT_A_6", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_7"},
    {
      {"TRA_MON_OPT_A_7", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"TRA_MON_OPT_B_7", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_8"},
    {
      {"TRA_MON_OPT_A_8", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"TRA_MON_OPT_B_8", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_9"},
    {
      {"TRA_MON_OPT_A_9", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"TRA_MON_OPT_B_9", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_10"},
    {
      {"TRA_MON_OPT_A_10", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"TRA_MON_OPT_B_10", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_11"},
    {
      {"TRA_MON_OPT_A_11", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_12"},
    {
      {"TRA_MON_OPT_A_12", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"TRA_MON_OPT_B_12", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_13"},
    {
      {"TRA_MON_OPT_A_13", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"TRA_MON_OPT_B_13", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"TRA_MON_OPT_C_13", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_14"},
    {
      {"TRA_MON_OPT_B_14", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_15"},
    {
      {"TRA_MON_OPT_B_15", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_16"},
    {
      {"TRA_MON_OPT_B_16", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_17"},
    {
      {"TRA_MON_OPT_A_17", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"TRA_MON_OPT_C_17", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_18"},
    {
      {"TRA_MON_OPT_B_18", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_19"},
    {
      {"TRA_MON_OPT_A_19", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"TRA_MON_OPT_B_19", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"TRA_MON_20"},
    {
      {"TRA_MON_OPT_B_20", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_1"},
    {
      {"EXP_MON_OPT_A_1", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_2"},
    {
      {"EXP_MON_OPT_A_2", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_3"},
    {
      {"EXP_MON_OPT_A_3", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_4"},
    {
      {"EXP_MON_OPT_A_4", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_5"},
    {
      {"EXP_MON_OPT_A_5", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_6"},
    {
      {"EXP_MON_OPT_A_6", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_7"},
    {
      {"EXP_MON_OPT_A_7", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_8"},
    {
      {"EXP_MON_OPT_A_8", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"EXP_MON_OPT_B_8", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_9"},
    {
      {"EXP_MON_OPT_A_9", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"EXP_MON_OPT_B_9", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_10"},
    {
      {"EXP_MON_OPT_A_10", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"EXP_MON_OPT_B_10", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"EXP_MON_OPT_C_10", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_11"},
    {
      {"EXP_MON_OPT_B_11", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_12"},
    {
      {"EXP_MON_OPT_B_12", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_13"},
    {
      {"EXP_MON_OPT_B_13", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_14"},
    {
      {"EXP_MON_OPT_A_14", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"EXP_MON_OPT_B_14", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_15"},
    {
      {"EXP_MON_OPT_A_15", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"EXP_MON_OPT_B_15", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_16"},
    {
      {"EXP_MON_OPT_A_16", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"EXP_MON_OPT_B_16", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_17"},
    {
      {"EXP_MON_OPT_B_17", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_18"},
    {
      {"EXP_MON_OPT_B_18", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"EXP_MON_19"},
    {
      {"EXP_MON_OPT_A_19", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_1"},
    {
      {"WAR_MON_OPT_A_1", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_2"},
    {
      {"WAR_MON_OPT_A_2", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_3"},
    {
      {"WAR_MON_OPT_A_3", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_4"},
    {
      {"WAR_MON_OPT_A_4", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_5"},
    {
      {"WAR_MON_OPT_A_5", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"WAR_MON_OPT_B_5", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_6"},
    {
      {"WAR_MON_OPT_A_6", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"WAR_MON_OPT_B_6", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_7"},
    {
      {"WAR_MON_OPT_A_7", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"WAR_MON_OPT_B_7", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_8"},
    {
      {"WAR_MON_OPT_A_8", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_9"},
    {
      {"WAR_MON_OPT_A_9", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_10"},
    {
      {"WAR_MON_OPT_B_10", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"WAR_MON_OPT_C_10", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_11"},
    {
      {"WAR_MON_OPT_B_11", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_12"},
    {
      {"WAR_MON_OPT_A_12", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"WAR_MON_OPT_B_12", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"WAR_MON_OPT_C_12", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_13"},
    {
      {"WAR_MON_OPT_B_13", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_14"},
    {
      {"WAR_MON_OPT_A_14", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"WAR_MON_OPT_B_14", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_15"},
    {
      {"WAR_MON_OPT_A_15", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_16"},
    {
      {"WAR_MON_OPT_A_16", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"WAR_MON_OPT_B_16", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_17"},
    {
      {"WAR_MON_OPT_B_17", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_18"},
    {
      {"WAR_MON_OPT_B_18", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_19"},
    {
      {"WAR_MON_OPT_A_19", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"WAR_MON_20"},
    {
      {"WAR_MON_OPT_B_20", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
}

--------------------------------------------------
-- New Reward Function --
local function NewReward(id, race)
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
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="]]..race..[[" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="gcwordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
end

-- Add Word Function --
local function AddWord(race, category, usecategory)
return 
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="]]..race..[[" />
              </Property>
              <Property name="UseCategory" value="]]..usecategory..[[" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="gcwordcategorytableEnum" value="]]..category..[[" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
end

-- Add Reward Function --
local function AddReward(id)
return 
[[
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="]]..id..[[" />
            </Property>
]]
end
--------------------------------------------------

-- File Settings --
FileName    = "More Words 1.02.pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
Description = ""
NMS_Version = "Leviathan 3.93"

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"
FileSource2 = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"
FileSource3 = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/RUINPARTS/WORDSTONE/ENTITIES/WORDSTONE.ENTITY.MBIN"
FileSource4 = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/INTERACTIVE/WORDSTATION/ENTITIES/WORDSTATION.ENTITY.MBIN"
FileSource5 = "MODELS/SPACE/ATLASSTATION/MODULARPARTS/INTERIOR/PATHORB/PATHORB/ENTITIES/ORBSTONE_1.ENTITY.MBIN"

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
    {
      ["MBIN_CHANGE_TABLE"] = 
      {
        {
          ["MBIN_FILE_SOURCE"]  = FileSource2,
          ["EXML_CHANGE_TABLE"] = 
          {
            -- AlienPuzzleTable
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
            { -- replaces the reward for Knowledge Stones to a newly added reward
              ["SPECIAL_KEY_WORDS"] = {"Reward", "WORD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Reward", "WORD_STONE_R"},
              },
            }, -- to separate Knowledge Stone reward so it can be changed without affecting others that used WORD reward
          }
        },
      }
    },
    {
      ["MBIN_CHANGE_TABLE"] = 
      {
        {
          ["MBIN_FILE_SOURCE"]  = FileSource4,
          ["EXML_CHANGE_TABLE"] = 
          {
            { -- replaces the reward for Word Stations / Encyclopedias to a newly added reward
              ["SPECIAL_KEY_WORDS"] = {"Reward", "WORD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Reward", "WORD_STATION_R"},
              },
            }, -- to separate Encyclopedia rewards so it can be changed without affecting others that used WORD reward
          }
        },
      }
    },
    {
      ["MBIN_CHANGE_TABLE"] = 
      {
        {
          ["MBIN_FILE_SOURCE"]  = FileSource5,
          ["EXML_CHANGE_TABLE"] = 
          {
            { -- replaces the reward for Atlas Orbs to a newly added reward
              ["SPECIAL_KEY_WORDS"] = {"Reward", "TEACHWORD_ATLAS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Reward", "WORD_ATLAS_ORB"},
              },
            }, -- to separate Atlas Orbs reward so it can be changed without affecting others that used TEACHWORD_ATLAS reward
          }
        },
      }
    },
	}
}

local RewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local AlienPuzzleTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][2]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

-- Reward Table Changes --
for i = 1, #WordChanges do
  local WordID = WordChanges[i][1][1]
      
  RewardTable[#RewardTable+1] =
  {
    ["SPECIAL_KEY_WORDS"] = {"Id", WordID},
    ["VALUE_CHANGE_TABLE"] =
    {
      {"RewardChoice", "GiveAll"},
    },
  }
end

for i = 1, #WordChanges do
  local WordID = WordChanges[i][1][1]
      
  RewardTable[#RewardTable+1] =
  {
    ["SPECIAL_KEY_WORDS"] = {"Id", WordID, "UseCategory", "False"},
    ["SECTION_UP_SPECIAL"] = 1,
    ["REMOVE"] = "SECTION",
  }
end

for i = 1, #WordChanges do
  local WordID = WordChanges[i][1][1]
  local Change = WordChanges[i][2]

  for j = 1, #Change do
    Race        = Change[j][1]
    Category    = Change[j][2]
    UseCategory = Change[j][3]
    Amount      = Change[j][4]
      
    RewardTable[#RewardTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", WordID, "PercentageChance", "IGNORE"},
      ["ADD_OPTION"] = "ADDafterSECTION",
      ["ADD"] = string.rep(AddWord(Race, Category, UseCategory), Amount - 1),
    }
  end
end

for i = 1, #NewWordChanges do
  local NewWordID = NewWordChanges[i][1][1]
  local Change    = NewWordChanges[i][2]

  for j = 1, #Change do
    Race = Change[j][1]
      
    RewardTable[#RewardTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", "WORD"},
      ["ADD_OPTION"] = "ADDafterSECTION",
      ["ADD"] = NewReward(NewWordID, Race),
    }
  end
end

for i = 1, #NewWordChanges do
  local NewWordID = NewWordChanges[i][1][1]
  local Change    = NewWordChanges[i][2]

  for j = 1, #Change do
    Race        = Change[j][1]
    Category    = Change[j][2]
    UseCategory = Change[j][3]
    Amount      = Change[j][4]
      
    RewardTable[#RewardTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", NewWordID, "PercentageChance", "IGNORE"},
      ["ADD_OPTION"] = "ADDafterSECTION",
      ["ADD"] = string.rep(AddWord(Race, Category, UseCategory), Amount - 1),
    }
  end
end
-------------------------------------------------------------------------------

-- Alien Puzzle Table Changes --
for i = 1, #PlaqueChanges do
  local OptionName = PlaqueChanges[i][1][1]
  local Change     = PlaqueChanges[i][2]

  for j = 1, #Change do
    WordID = Change[j][1]
    Amount = Change[j][2]
      
    AlienPuzzleTable[#AlienPuzzleTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Name", OptionName},
      ["PRECEDING_KEY_WORDS"] = {"Rewards"},
      ["REPLACE_TYPE"] = "ALL",
      ["ADD"] = string.rep(AddReward(WordID), Amount - 1),
    }
  end
end

for i = 1, #MonolithChanges do
  local MonolithID = MonolithChanges[i][1][1]
  local Change     = MonolithChanges[i][2]

  for j = 1, #Change do
    OptionName = Change[j][1]
    WordID     = Change[j][2]
    Amount     = Change[j][3]
      
    AlienPuzzleTable[#AlienPuzzleTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", MonolithID, "Name", OptionName},
      ["PRECEDING_KEY_WORDS"] = {"Rewards"},
      ["ADD"] = string.rep(AddReward(WordID), Amount - 1),
    }
  end
end