-- More Words Settings
NPC            = 2 -- NPC request to learn a word option
KnowledgeStone = 3 -- words learn from knowledge stones
WordStation    = 4 -- words learn from word stations/encyclopedias
Monolith       = 5 -- Monolith seek help with language option
Monolith_Atlas = 3 -- Monolith atlas word reward from multiple choice questions
Atlas_Orb      = 2 -- Glowing orbs on the atlas stations
-------------------------

print("           NPC = "..NPC)
print("KnowledgeStone = "..KnowledgeStone)
print("   WordStation = "..WordStation)
print("      Monolith = "..Monolith)
print("Monolith_Atlas = "..Monolith_Atlas)
print("     Atlas_Orb = "..Atlas_Orb)
print("")

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
  {
    {"BUI_WORD_DIRECT"},
    {
      {"Builders", "DIRECTIONS", "True", NPC},
    }
  },
  {
    {"BUI_WORD_HELP"},
    {
      {"Builders", "HELP", "True", NPC},
    }
  },
  {
    {"BUI_WORD_TRADE"},
    {
      {"Builders", "TRADE", "True", NPC},
    }
  },
  {
    {"BUI_WORD_LORE"},
    {
      {"Builders", "LORE", "True", NPC},
    }
  },
  {
    {"BUI_WORD_TECH"},
    {
      {"Builders", "TECH", "True", NPC},
    }
  },
  {
    {"BUI_WORD_THREAT"},
    {
      {"Builders", "THREAT", "True", NPC},
    }
  },
  {
    {"BUI_WORD_MISC"},
    {
      {"Builders", "MISC", "True", NPC},
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
    { -- NOTUSED, WordID, Amount
      {"NIL", "TEACHWORD_TRA", Monolith},
    }
  },
  {
    {"EXP_1_PLAQUE_OPT_1"},
    {
      {"NIL", "TEACHWORD_EXP", Monolith},
    }
  },
  {
    {"WAR_1_PLAQUE_OPT_1"},
    {
      {"NIL", "TEACHWORD_WAR", Monolith},
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
  {
    {"BUI_MON_1"},
    {
      {"BUI_MON_OPT_A_1", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_B_1", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_C_1", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"BUI_MON_2"},
    {
      {"BUI_MON_OPT_A_2", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_B_2", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_C_2", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"BUI_MON_3"},
    {
      {"BUI_MON_OPT_A_3", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_B_3", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"BUI_MON_4"},
    {
      {"BUI_MON_OPT_A_4", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_B_4", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_C_4", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"BUI_MON_5"},
    {
      {"BUI_MON_OPT_A_5", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_B_5", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_C_5", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"BUI_MON_6"},
    {
      {"BUI_MON_OPT_A_6", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_B_6", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_C_6", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"BUI_MON_7"},
    {
      {"BUI_MON_OPT_A_7", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_B_7", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_C_7", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"BUI_MON_8"},
    {
      {"BUI_MON_OPT_A_8", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_B_8", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"BUI_MON_9"},
    {
      {"BUI_MON_OPT_A_9", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_B_9", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_C_9", "TEACHWORD_ATLAS", Monolith_Atlas},

    }
  },
  {
    {"BUI_MON_10"},
    {
      {"BUI_MON_OPT_A_10", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_B_10", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"BUI_MON_11"},
    {
      {"BUI_MON_OPT_A_11", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_B_11", "TEACHWORD_ATLAS", Monolith_Atlas},
      {"BUI_MON_OPT_C_11", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
  {
    {"BUI_MON_12"},
    {
      {"BUI_MON_OPT_A_12", "TEACHWORD_ATLAS", Monolith_Atlas},
    }
  },
}
--------------------------------------------------
local AlienPuzzle = "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"
local RewardTable = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]        = "More Words.pak",
["MOD_AUTHOR"]          = "Reikokuu & Babscoole",
["LUA_AUTHOR"]          = "Wbertro (speedup)",
["MOD_DESCRIPTION"]     = "Increases the amount of words learn from NPCs, Knowledge Stones, Encyclopedias, Monoliths, and Atlas Orbs",
["NMS_VERSION"]         = "5.22",
["AMUMSS_SUPPRESS_MSG"] = "UNUSED_VARIABLE",
["MODIFICATIONS"]       =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = RewardTable,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WORD"},
                            ["SEC_SAVE_TO"] = "ADD_NewReward",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WORD"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["SEC_SAVE_TO"] = "ADD_AddWord",
                        },
                    },
                },
                
                {
                    ["MBIN_FILE_SOURCE"] = AlienPuzzle,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "GIVE_HYPERDRIVE"},
                            ["SEC_SAVE_TO"] = "ADD_AddReward",
                        },
                    },

                    EXT_FUNC =
                    { 
                      "ProcessAlienPuzzleTable",
                    },
                  
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\RUINPARTS\WORDSTONE\ENTITIES\WORDSTONE.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Reward", "WORD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Reward", "WORD_STONE_R"},
                            },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\WORDSTATION\ENTITIES\WORDSTATION.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Reward", "WORD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Reward", "WORD_STATION_R"},
                            },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\ATLASSTATION\MODULARPARTS\INTERIOR\PATHORB\PATHORB\ENTITIES\ORBSTONE_1.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Reward", "TEACHWORD_ATLAS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Reward", "WORD_ATLAS_ORB"},
                            },
                        },
                    },
                },
            }
        },
    }
}

local RewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

-- Helper Functions
local function tableUnion(t1,t2)
  local t = t1
  if #t1 > 0 and #t2 > 0 then

    for i=1,#t2 do
      t[#t+1] = t2[i]
    end
  elseif #t1 > 0 then

    for _,v in pairs(t2) do

      t[#t+1] = v
    end
  else

    for k,v in pairs(t2) do

      t[k] = v
    end
  end
  return t
end
-- END: Helper Functions

-- Reward Table Changes --
local changeCount = 0
for i = 1, #WordChanges do
  local WordID = WordChanges[i][1][1]
  local Change = WordChanges[i][2]

  changeCount = changeCount + #Change
  
  RewardTable[#RewardTable+1] =
  {
    ["SPECIAL_KEY_WORDS"] = {"Id", WordID},
    ["VALUE_CHANGE_TABLE"] =
    {
      {"RewardChoice", "GiveAll"},
    },
  }

  RewardTable[#RewardTable+1] =
  {
    ["SPECIAL_KEY_WORDS"] = {"Id", WordID, "UseCategory", "False"},
    ["SECTION_UP_SPECIAL"] = 1,
    ["REMOVE"] = "SECTION",
  }

  for j = 1, #Change do
    local Race        = Change[j][1]
    local Category    = Change[j][2]
    local UseCategory = Change[j][3]
    local Amount      = Change[j][4]

    RewardTable[#RewardTable+1] =
    {
      ["SEC_EDIT"] = "ADD_AddWord",
      ["VALUE_CHANGE_TABLE"] =
      {
         {"AlienRace",             Race},
         {"UseCategory",           UseCategory},
         {"wordcategorytableEnum", Category},
      }
    }

    for _ = 1, Amount - 1 do
      RewardTable[#RewardTable+1] =
      {
        ["SPECIAL_KEY_WORDS"] = {"Id", WordID, "PercentageChance", "IGNORE"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = "ADD_AddWord"
      }
    end
  end
end
print("    #WordChanges = "..#WordChanges..", changeCount = "..changeCount)


local changeCount = 0
for i = 1, #NewWordChanges do
  local NewWordID = NewWordChanges[i][1][1]
  local Change    = NewWordChanges[i][2]

  changeCount = changeCount + #Change
  
  for j = 1, #Change do
    local Race        = Change[j][1]
    local Category    = Change[j][2]
    local UseCategory = Change[j][3]
    local Amount      = Change[j][4]

    RewardTable[#RewardTable+1] =
    {
      ["SEC_EDIT"] = "ADD_NewReward",
      ["VALUE_CHANGE_TABLE"] =
      {
         {"Id",        NewWordID},
         {"AlienRace", Race},
      }
    }

    RewardTable[#RewardTable+1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"Id", "WORD"},
      ["ADD_OPTION"] = "ADDafterSECTION",
      ["SEC_ADD_NAMED"] = "ADD_NewReward",
    }

    RewardTable[#RewardTable+1] =
    {
      ["SEC_EDIT"] = "ADD_AddWord",
      ["VALUE_CHANGE_TABLE"] =
      {
         {"AlienRace",             Race},
         {"UseCategory",           UseCategory},
         {"wordcategorytableEnum", Category},
      }
    }

    for _ = 1, Amount - 1 do
      RewardTable[#RewardTable+1] =
      {
        ["SPECIAL_KEY_WORDS"] = {"Id", NewWordID, "PercentageChance", "IGNORE"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = "ADD_AddWord"
      }
    end
  end
end
print("    #NewWordChanges = "..#NewWordChanges..", changeCount = "..changeCount)

-------------------------------------------------------------------------------
-- Alien Puzzle Table Changes --

ProcessAlienPuzzleTable = nil
function ProcessAlienPuzzleTable(TheData)  
  local start = os.clock()
  print([[    ***  Processing ]]..AlienPuzzle.."  ***")
  
  local DEBUG = false
  local Dprint = print
  local Dprintf = printf
  if not DEBUG then
    Dprint = function(...) end
    Dprintf = function(...) end
  end
  
  -- NOTE: the code below is relative to the 'supplied' structure of MonolithChanges
  --       It could be simplified
  
  -- *********************************************************************************
  local function CreateFastAccessKey1Table(t)
    local fastId = {}
    local count = 0
    for i = 1, #t do
      for _ = 1, #t[i][1] do
        fastId[ t[i][1][1] ] = true
        count = count + 1
      end
    end
    Dprintf("#fastId = %d",count)
    return fastId, count
  end
  -- *********************************************************************************

  -- *********************************************************************************
  local function CreateFastAccessChangeInfoTable(t)
    local fastOptionName = {}
    local count = 0
    for i = 1, #t do
      for j = 1, #t[i][2] do
        if t[i][2][j][1] ~= "NIL" then

          fastOptionName[ t[i][1][1].."+"..t[i][2][j][1] ] = t[i][2][j]
        else

          fastOptionName[ t[i][1][1] ] = t[i][2][j]
        end
        count = count + 1
      end
    end
    Dprintf("#fastOptionName = %d",count)
    return fastOptionName, count
  end
  -- *********************************************************************************


  local AlienPuzzle_table = TheData["ModdedEXMLs"][NormalizePath(AlienPuzzle, true)]
  
  local processMonolithChanges = true
  if processMonolithChanges then
    print([[    ***  Processing MonolithChanges  ***]])
    

    local AddReward_table = TheData["Sections"]["ADD_AddReward"]
    
    local currentWordID = "__currentWordID__"
    local currentWordIDLine = 0
    for i=1,#AddReward_table do
      if string.find(AddReward_table[i],[["Value"]]) then

        currentWordID = string.match(AddReward_table[i],[[^.+ue="(.-)".+]])
        currentWordIDLine = i
        break
      end
    end

    local fastKey1Table,count = CreateFastAccessKey1Table(MonolithChanges)
    
    local fastOptionName,count = CreateFastAccessChangeInfoTable(MonolithChanges)
    
    local RewardLinesIndex = {}
    local RewardLinesSorted = {}
    
    local IsKeysFound = false
    local mOptionName = "__OptionName__"
    local mId = nil
    
    Dprint(" Scanning AlienPuzzle_table")
    local count = 0
    for i=1,#AlienPuzzle_table do
      local line = string.upper(AlienPuzzle_table[i])
      if IsKeysFound and string.find(line,[[^.+"REWARDS"]]) then

        RewardLinesIndex[i + 1] = mId.."+"..mOptionName
        RewardLinesSorted[#RewardLinesSorted + 1] = i + 1
        
        Dprintf("       > Rewards at line %d",i)
        IsKeysFound = false
      end

      if string.find(line,[[^.+ME="ID"]]) then

        mId = string.match(line,[[^.+UE="(.+)"]])
        if mId and fastKey1Table[mId] then
          count = count + 1
          Dprintf([[  %d: Id "%s" at line %d]],count,mId,i)
          IsKeysFound = false
        end
      end
      
      if mId and not IsKeysFound and string.find(line,[[^.+ME="NAME"]]) then

        mOptionName = string.match(line,[[^.+UE="(.+)"]])
        if mOptionName and fastOptionName[mId.."+"..mOptionName] then

          Dprintf("      OptionName at line %d: %s",i,AlienPuzzle_table[i])
          IsKeysFound = true
        end
      end
    end
    Dprintf(" DONE: Scanning AlienPuzzle_table, found %d Rewards lines",count)
    Dprint("")
    
    local changeCount = 0
    local previousWordID = currentWordID
    
 
    if DEBUG then
      printf("#RewardLinesSorted = %d",#RewardLinesSorted)
      for i=1,#RewardLinesSorted do
        printf(" - %d = %d (%s)",i,RewardLinesSorted[i],RewardLinesIndex[RewardLinesSorted[i]])
      end
      print("")
    end
    
    for i=#RewardLinesSorted,1,-1 do
      local addLineInExml = RewardLinesSorted[i]
      local optionNameToProcess = RewardLinesIndex[addLineInExml]
      Dprintf("%d: = = = = = =",i)

      Dprintf("  optionNameToProcess = %s",optionNameToProcess)
      

      local changeInfo = fastOptionName[optionNameToProcess]
      
          
      local OptionName = changeInfo[1]
      local WordID     = changeInfo[2]
      local Amount     = changeInfo[3]

      Dprintf([[  line %d:       {"%s", "%s", %d},]],addLineInExml,OptionName,WordID,Amount - 1)

      if WordID ~= previousWordID then

        AddReward_table[currentWordIDLine] = AddReward_table[currentWordIDLine]:gsub(previousWordID,WordID)

        previousWordID = WordID
      end
      
      local addTable = {}
      for _ = 1, Amount - 1 do

        addTable = tableUnion(addTable,AddReward_table)

        changeCount = changeCount + 1
      end
      
      if #addTable > 0 then

        Dprintf("   #AlienPuzzle_table = %d",#AlienPuzzle_table)
        

        table.move(AlienPuzzle_table, addLineInExml, #AlienPuzzle_table + #addTable, addLineInExml + #addTable)
        Dprint("         ==> grows to = "..#AlienPuzzle_table.." by "..#addTable.." lines")
        

        table.move(addTable, 1, #addTable, addLineInExml, AlienPuzzle_table)
      end
    end
    Dprint("")
    Dprint("#MonolithChanges = "..#MonolithChanges..", changeCount = "..changeCount)
  end

  local DEBUG = false
  local Dprint = print
  local Dprintf = printf
  if not DEBUG then
    Dprint = function(...) end
    Dprintf = function(...) end
  end
  
  local processPlaqueChanges = true
  if processPlaqueChanges then
    print([[    ***  Processing PlaqueChanges  ***]])

    local AddReward_table = TheData["Sections"]["ADD_AddReward"]
    
    local currentWordID = "__currentWordID__"
    local currentWordIDLine = 0
    for i=1,#AddReward_table do
      if string.find(AddReward_table[i],[["Value"]]) then

        currentWordID = string.match(AddReward_table[i],[[^.+ue="(.-)".+]])
        currentWordIDLine = i
        break
      end
    end

    local fastOptionName,count = CreateFastAccessChangeInfoTable(PlaqueChanges)
    
    local RewardLinesIndex = {}
    local RewardLinesSorted = {}
    
    local IsKeysFound = false
    local mOptionName = "__OptionName__"
    
    Dprint(" Scanning AlienPuzzle_table")
    local count = 0
    for i=1,#AlienPuzzle_table do
      local line = string.upper(AlienPuzzle_table[i])
      if IsKeysFound and string.find(line,[[^.+"REWARDS"]]) then

        RewardLinesIndex[i + 1] = mOptionName
        RewardLinesSorted[#RewardLinesSorted + 1] = i + 1
        
        Dprintf("       > Rewards at line %d",i)
        IsKeysFound = false
        count = count + 1
      end

      if not IsKeysFound and string.find(line,[[^.+ME="NAME"]]) then

        mOptionName = string.match(line,[[^.+UE="(.+)"]])
        if mOptionName and fastOptionName[mOptionName] then

          Dprintf("      OptionName at line %d: %s",i,AlienPuzzle_table[i])
          IsKeysFound = true
        end
      end
    end
    Dprintf(" DONE: Scanning AlienPuzzle_table, found %d Rewards lines",count)
    Dprint("")
    

    local changeCount = 0
    local previousWordID = currentWordID
    

    if DEBUG then
      printf("#RewardLinesSorted = %d",#RewardLinesSorted)
      for i=1,#RewardLinesSorted do
        printf(" - %d = %d (%s)",i,RewardLinesSorted[i],RewardLinesIndex[RewardLinesSorted[i]])
      end
      print("")
    end
    
    for i=#RewardLinesSorted,1,-1 do
      local addLineInExml = RewardLinesSorted[i]
      local optionNameToProcess = RewardLinesIndex[addLineInExml]
      Dprintf("%d: = = = = = =",i)

      Dprintf("  optionNameToProcess = %s",optionNameToProcess)
      

      local changeInfo = fastOptionName[optionNameToProcess]
      
      local OptionName = tostring(changeInfo[1])
      local WordID     = changeInfo[2]
      local Amount     = changeInfo[3]

      Dprintf([[  line %d:       {"%s", "%s", %d},]],addLineInExml,OptionName,WordID,Amount - 1)

      if WordID ~= previousWordID then

        AddReward_table[currentWordIDLine] = AddReward_table[currentWordIDLine]:gsub(previousWordID,WordID)

        previousWordID = WordID
      end
      
      local addTable = {}
      for _ = 1, Amount - 1 do

        addTable = tableUnion(addTable,AddReward_table)

        changeCount = changeCount + 1
      end
      
      if #addTable > 0 then

        Dprintf("   #AlienPuzzle_table = %d",#AlienPuzzle_table)
        
        table.move(AlienPuzzle_table, addLineInExml, #AlienPuzzle_table + #addTable, addLineInExml + #addTable)
        Dprint("         ==> grows to = "..#AlienPuzzle_table.." by "..#addTable.." lines")
        

        table.move(addTable, 1, #addTable, addLineInExml, AlienPuzzle_table)
      end
    end
    Dprint("")
    Dprint("#PlaqueChanges = "..#PlaqueChanges..", changeCount = "..changeCount)
  end
  
  printf("        ==> Done in %3.3f sec",os.clock() - start)
  return { [AlienPuzzle] = AlienPuzzle_table }
end