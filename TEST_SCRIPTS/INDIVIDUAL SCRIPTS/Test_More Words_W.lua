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

WordChanges = -- affects REWARDTABLE
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

NewWordChanges = -- affects REWARDTABLE
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

PlaqueChanges = -- affects NMS_DIALOG_GCALIENPUZZLETABLE
{ -- modified to keep the same structure as MonolithChanges
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

MonolithChanges = -- affects NMS_DIALOG_GCALIENPUZZLETABLE
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
["MOD_FILENAME"]    = "More Words.pak",
["MOD_AUTHOR"]      = "Reikokuu & Babscoole",
["LUA_AUTHOR"]      = "Wbertro (speedup changes to GCALIENPUZZLETABLE)",
["MOD_DESCRIPTION"] = "Increases the amount of words learn from NPCs, Knowledge Stones, Encyclopedias, Monoliths, and Atlas Orbs",
["NMS_VERSION"]     = "5.1.1",
AMUMSS_SUPPRESS_MSG = "UNUSED_VARIABLE",
["MODIFICATIONS"]   =
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
                            -- SEC_KEEP = true,
                            ["SEC_SAVE_TO"] = "ADD_NewReward",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WORD"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            -- SEC_KEEP = true,
                            ["SEC_SAVE_TO"] = "ADD_AddWord",
                        },
                    }, -- RewardTable
                },
                
                { -- 1st: create the saved section
                    ["MBIN_FILE_SOURCE"] = AlienPuzzle,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "GIVE_HYPERDRIVE"},
                            -- SEC_KEEP = true,
                            ["SEC_SAVE_TO"] = "ADD_AddReward",
                        },
                    }, -- AlienPuzzleTable

                    -- 2nd: execute the required changes
                    EXT_FUNC = { 
                      "ProcessAlienPuzzleTable",
                    },
                  
                },

                -- NOTE: If 'ADD_AddReward' had lines added to it by the preceding section (and it's associated for-loop below):
                --   ==> we would add this section here to reset it to the original instead of doing the EXT_FUNC above
                -- {
                    -- ["MBIN_FILE_SOURCE"] = AlienPuzzle,
                    -- ["EXML_CHANGE_TABLE"] =
                    -- {
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Value", "GIVE_HYPERDRIVE"},
                            -- -- SEC_KEEP = true,
                            -- ["SEC_SAVE_TO"] = "ADD_AddReward",
                        -- },
                    -- }, -- AlienPuzzleTable

                    -- EXT_FUNC = { 
                      -- "ProcessAlienPuzzleTable",
                    -- },
                  
                -- },

                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\RUINPARTS\WORDSTONE\ENTITIES\WORDSTONE.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        { -- replaces the reward for Knowledge Stones to a newly added reward
                            ["SPECIAL_KEY_WORDS"] = {"Reward", "WORD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Reward", "WORD_STONE_R"},
                            },
                        }, -- to separate Knowledge Stone reward so it can be changed without affecting others that used WORD reward
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\WORDSTATION\ENTITIES\WORDSTATION.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        { -- replaces the reward for Word Stations / Encyclopedias to a newly added reward
                            ["SPECIAL_KEY_WORDS"] = {"Reward", "WORD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Reward", "WORD_STATION_R"},
                            },
                        }, -- to separate Encyclopedia rewards so it can be changed without affecting others that used WORD reward
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\ATLASSTATION\MODULARPARTS\INTERIOR\PATHORB\PATHORB\ENTITIES\ORBSTONE_1.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        { -- replaces the reward for Atlas Orbs to a newly added reward
                            ["SPECIAL_KEY_WORDS"] = {"Reward", "TEACHWORD_ATLAS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Reward", "WORD_ATLAS_ORB"},
                            },
                        }, -- to separate Atlas Orbs reward so it can be changed without affecting others that used TEACHWORD_ATLAS reward
                    },
                },
                
            }
        }, --199 global replacements
    }
}

local RewardTable      = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local AlienPuzzleTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

-- Helper Functions
local function tableUnion(t1,t2)
  local t = t1
  if #t1 > 0 and #t2 > 0 then
    -- two ARRAY tables
    for i=1,#t2 do
      t[#t+1] = t2[i]
    end
  elseif #t1 > 0 then
    -- t1 is an ARRAY table
    -- t2 is DICTIONARY table
    for _,v in pairs(t2) do
      -- we keep the returned table an ARRAY table, not MIXED
      t[#t+1] = v
    end
  else
    -- t1 and t2 are DICTIONARY tables
    for k,v in pairs(t2) do
      -- we keep the returned table as a DICTIONARY table, not MIXED
      t[k] = v
    end
  end
  return t
end
-- END: Helper Functions

-- Reward Table Changes --
---[=[ 22 sec: NOT WORTH the trouble to speed up
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

    for _ = 1, Amount - 1 do -- -1 because one word already exist
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
--]=]

---[=[ 13 sec: NOT WORTH the trouble to speed up
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

    for _ = 1, Amount - 1 do -- -1 because one word already exist
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
--]=]

-------------------------------------------------------------------------------
-- Alien Puzzle Table Changes --
--[=[ 22 sec: OK to speed up WITH the next one
local changeCount = 0
for i = 1, #PlaqueChanges do
  local OptionName = PlaqueChanges[i][1][1]
  local Change     = PlaqueChanges[i][2]

  changeCount = changeCount + #Change

  for j = 1, #Change do
    local WordID = Change[j][1]
    local Amount = Change[j][2]

    AlienPuzzleTable[#AlienPuzzleTable+1] =
    {
      ["SEC_EDIT"] = "ADD_AddReward",
      ["VALUE_CHANGE_TABLE"] =
      {
         {"Value", WordID},
      }
    }

    for _ = 1, Amount - 1 do -- -1 because one word already exist
      AlienPuzzleTable[#AlienPuzzleTable+1] =
      {
        ["SPECIAL_KEY_WORDS"] = {"Name", OptionName},
        ["PRECEDING_KEY_WORDS"] = {"Rewards"},
        ["REPLACE_TYPE"] = "ALL",
        ["ADD_OPTION"] = "ADDafterLINE",
        ["SEC_ADD_NAMED"] = "ADD_AddReward"
      }
    end
  end
end
print("  #PlaqueChanges = "..#PlaqueChanges..", changeCount = "..changeCount)
--]=]

--[=[ 2:42: very slow, OK to speed up
-- replaced by function ProcessAlienPuzzleTable(TheData) below
local changeCount = 0
for i = 1, #MonolithChanges do
  local MonolithID = MonolithChanges[i][1][1]
  local Change     = MonolithChanges[i][2]
  
  changeCount = changeCount + #Change
  
  for j = 1, #Change do
    local OptionName = Change[j][1]
    local WordID     = Change[j][2]
    local Amount     = Change[j][3]

    AlienPuzzleTable[#AlienPuzzleTable+1] =
    {
      ["SEC_EDIT"] = "ADD_AddReward",
      ["VALUE_CHANGE_TABLE"] =
      {
         {"Value", WordID}, -- this is always TEACHWORD_ATLAS in this case, could be done once !!!
      }
    }

    for _ = 1, Amount - 1 do -- -1 because one word already exist
      AlienPuzzleTable[#AlienPuzzleTable+1] =
      {
        ["SPECIAL_KEY_WORDS"] = {"Id", MonolithID, "Name", OptionName},
        ["PRECEDING_KEY_WORDS"] = {"Rewards"},
        ["ADD_OPTION"] = "ADDafterLINE",
        ["SEC_ADD_NAMED"] = "ADD_AddReward"
      }
    end
  end
end
print("#MonolithChanges = "..#MonolithChanges..", changeCount = "..changeCount)
--]=]

ProcessAlienPuzzleTable = nil -- to prevent selene complaining
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
          --               key1        +     key2          = change info table
          fastOptionName[ t[i][1][1].."+"..t[i][2][j][1] ] = t[i][2][j]
        else
          --               key1        = change info table
          fastOptionName[ t[i][1][1] ] = t[i][2][j]
        end
        count = count + 1
      end
    end
    Dprintf("#fastOptionName = %d",count)
    return fastOptionName, count
  end
  -- *********************************************************************************

  -- reference the EXML in TheData
  local AlienPuzzle_table = TheData["ModdedEXMLs"][NormalizePath(AlienPuzzle, true)]
  
  local processMonolithChanges = true
  if processMonolithChanges then
    print([[    ***  Processing MonolithChanges  ***]])
    
    -- *** Step 1: detect current value that needs to be changed in AddReward_table, save in currentWordID
    -- reference the SavedSection
    local AddReward_table = TheData["Sections"]["ADD_AddReward"]
    
    local currentWordID = "__currentWordID__" -- as a check
    local currentWordIDLine = 0
    for i=1,#AddReward_table do
      if string.find(AddReward_table[i],[["Value"]]) then
        -- save both line and value for fast reference later
        currentWordID = string.match(AddReward_table[i],[[^.+ue="(.-)".+]])
        currentWordIDLine = i
        break
      end
    end
    -- now we can use currentWordID as the 'string_to_change' in ADD_AddReward
    --   using the very fast string.gsub
    -- Dprintf("currentWordID = %s",currentWordID)

    -- example data from MonolithChanges table:
    -- MonolithChanges =
    -- {
      -- { -- MonolithID (key1)
        -- {"TRA_MON_1"},
        -- { -- OptionName (key2), WordID, Amount
          -- {"TRA_MON_OPT_A_1", "TEACHWORD_ATLAS", Monolith_Atlas},
        -- }
      -- },
    -- }
      
    -- *** Step 2A: create a fast access table to MonolithChanges by Id
    local fastKey1Table,count = CreateFastAccessKey1Table(MonolithChanges)
    
    -- *** Step 2B: create a fast access table to MonolithChanges by OptionName
    local fastOptionName,count = CreateFastAccessChangeInfoTable(MonolithChanges)
    
    -- *** Step 3: locating all Id + OptionName "in one pass" of AlienPuzzle_table
    --         create tables of the line numbers to be used
    local RewardLinesIndex = {}  -- to relate the sorted index to the Id + OptionName index
    local RewardLinesSorted = {} -- to be able to go thru the line numbers in reverse order
    
    local IsKeysFound = false
    local mOptionName = "__OptionName__" -- as a check
    local mId = nil
    
    Dprint(" Scanning AlienPuzzle_table")
    local count = 0
    for i=1,#AlienPuzzle_table do
      local line = string.upper(AlienPuzzle_table[i]) -- case-insensitive
      if IsKeysFound and string.find(line,[[^.+"REWARDS"]]) then
        -- we found the Reward line
        RewardLinesIndex[i + 1] = mId.."+"..mOptionName -- to have a reference to OptionName from the line
        RewardLinesSorted[#RewardLinesSorted + 1] = i + 1 -- to have them in line order
        
        Dprintf("       > Rewards at line %d",i)
        IsKeysFound = false -- reset
      end

      if string.find(line,[[^.+ME="ID"]]) then
        -- found a line like: <Property name="Id"
        mId = string.match(line,[[^.+UE="(.+)"]])
        if mId and fastKey1Table[mId] then
          -- the line has a value AND that value exist as a key in our fastKey1Table table
          count = count + 1
          Dprintf([[  %d: Id "%s" at line %d]],count,mId,i)
          IsKeysFound = false -- reset
        end
      end
      
      if mId and not IsKeysFound and string.find(line,[[^.+ME="NAME"]]) then
        -- found a line like: <Property name="Name"
        mOptionName = string.match(line,[[^.+UE="(.+)"]])
        if mOptionName and fastOptionName[mId.."+"..mOptionName] then
          -- the line has a value AND that value exist as a key in our fastOptionName table
          --    a line like: <Property name="Name" value=OptionName />
          Dprintf("      OptionName at line %d: %s",i,AlienPuzzle_table[i])
          IsKeysFound = true
        end
      end
    end
    Dprintf(" DONE: Scanning AlienPuzzle_table, found %d Rewards lines",count)
    Dprint("")
    
    -- *** Step 4: here we apply changes
    local changeCount = 0 -- counts the total number of times we make a change
    local previousWordID = currentWordID
    
    if DEBUG then -- only when debugging
      printf("#RewardLinesSorted = %d",#RewardLinesSorted)
      for i=1,#RewardLinesSorted do
        printf(" - %d = %d (%s)",i,RewardLinesSorted[i],RewardLinesIndex[RewardLinesSorted[i]])
      end
      print("")
    end
    
    -- WE NEED to do this from bottom to top of AddReward_table **********************************    
    for i=#RewardLinesSorted,1,-1 do
      local addLineInExml = RewardLinesSorted[i]
      local optionNameToProcess = RewardLinesIndex[addLineInExml]
      Dprintf("%d: = = = = = =",i)
      -- Dprintf("  line where ADD goes = %d",addLineInExml)
      Dprintf("  optionNameToProcess = %s",optionNameToProcess)
      
      -- retrieve changeinfo of that OptionName
      local changeInfo = fastOptionName[optionNameToProcess]
      
      -- local MonolithID = changeInfo[1][1] -- NOT USED
          
      local OptionName = changeInfo[1] -- NOT USED, except for debug
      local WordID     = changeInfo[2]
      local Amount     = changeInfo[3]

      Dprintf([[  line %d:       {"%s", "%s", %d},]],addLineInExml,OptionName,WordID,Amount - 1)

      if WordID ~= previousWordID then -- only do it if WordID changed
        -- update AddReward_table
        AddReward_table[currentWordIDLine] = AddReward_table[currentWordIDLine]:gsub(previousWordID,WordID)
        -- remember it as previousWordID
        previousWordID = WordID
      end
      
      local addTable = {}
      for _ = 1, Amount - 1 do -- -1 because one word already exist
        -- build the ADD table
        addTable = tableUnion(addTable,AddReward_table)
        -- Dprintf("   ==> #addTable = %d",#addTable)
        changeCount = changeCount + 1
      end
      
      if #addTable > 0 then
        -- Insert the string into AlienPuzzle_table at addLineInExml
        Dprintf("   #AlienPuzzle_table = %d",#AlienPuzzle_table)
        
        -- grow the main table by #addTable, moving the insertion position down
        table.move(AlienPuzzle_table, addLineInExml, #AlienPuzzle_table + #addTable, addLineInExml + #addTable)
        Dprint("         ==> grows to = "..#AlienPuzzle_table.." by "..#addTable.." lines")
        
        -- insert addTable into the main table
        table.move(addTable, 1, #addTable, addLineInExml, AlienPuzzle_table)
      end
    end -- for i=#RewardLinesSorted,1,-1 do
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

    -- *** Step 1: detect current value that needs to be changed in AddReward_table, save in currentWordID
    -- reference the SavedSection
    local AddReward_table = TheData["Sections"]["ADD_AddReward"]
    
    local currentWordID = "__currentWordID__" -- as a check
    local currentWordIDLine = 0
    for i=1,#AddReward_table do
      if string.find(AddReward_table[i],[["Value"]]) then
        -- save both line and value for fast reference later
        currentWordID = string.match(AddReward_table[i],[[^.+ue="(.-)".+]])
        currentWordIDLine = i
        break
      end
    end
    -- now we can use currentWordID as the 'string_to_change' in ADD_AddReward at line currentWordIDLine
    --   using the very fast string.gsub
    -- Dprintf("currentWordID = %s",currentWordID)

    -- example data from PlaqueChanges table:
    -- PlaqueChanges =
    -- {
      -- { -- OptionName (key1)
        -- {"TRA_1_PLAQUE_OPT_1"},
        -- { -- NOTUSED (key2), WordID, Amount
          -- {nil, "TEACHWORD_TRA", Monolith},
        -- }
      -- },
    -- }
    
    -- NOT required for PlaqueChanges
    -- -- *** Step 2A: create a fast access table to PlaqueChanges by OptionName
    -- local fastKey1Table,count = CreateFastAccessKey1Table(PlaqueChanges)
    
    -- *** Step 2B: create a fast access table to PlaqueChanges by OptionName
    local fastOptionName,count = CreateFastAccessChangeInfoTable(PlaqueChanges)
    
    -- *** Step 3: locating all OptionName "in one pass" of AlienPuzzle_table
    -- -- reference the EXML in TheData
    -- ALREADY DONE
    -- local AlienPuzzle_table = TheData["ModdedEXMLs"][NormalizePath(AlienPuzzle, true)]

    --         create tables of the line numbers to be used
    local RewardLinesIndex = {}  -- to relate the sorted index to the OptionName index
    local RewardLinesSorted = {} -- to be able to go thru the line numbers in reverse order
    
    local IsKeysFound = false
    local mOptionName = "__OptionName__" -- as a check
    
    Dprint(" Scanning AlienPuzzle_table")
    local count = 0
    for i=1,#AlienPuzzle_table do
      local line = string.upper(AlienPuzzle_table[i]) -- case-insensitive
      if IsKeysFound and string.find(line,[[^.+"REWARDS"]]) then
        -- we found the Reward line
        RewardLinesIndex[i + 1] = mOptionName -- to have a reference to OptionName from the line
        RewardLinesSorted[#RewardLinesSorted + 1] = i + 1 -- to have them in line order
        
        Dprintf("       > Rewards at line %d",i)
        IsKeysFound = false -- reset
        count = count + 1
      end

      if not IsKeysFound and string.find(line,[[^.+ME="NAME"]]) then
        -- found a line like: <Property name="Name"
        mOptionName = string.match(line,[[^.+UE="(.+)"]])
        if mOptionName and fastOptionName[mOptionName] then
          -- the line has a value AND that value exist as a key in our fastOptionName table
          --    a line like: <Property name="Name" value=OptionName />
          Dprintf("      OptionName at line %d: %s",i,AlienPuzzle_table[i])
          IsKeysFound = true
        end
      end
    end
    Dprintf(" DONE: Scanning AlienPuzzle_table, found %d Rewards lines",count)
    Dprint("")
    
    -- *** Step 4: here we apply changes
    local changeCount = 0 -- counts the total number of times we make a change
    local previousWordID = currentWordID
    
    if DEBUG then -- for debugging only
      printf("#RewardLinesSorted = %d",#RewardLinesSorted)
      for i=1,#RewardLinesSorted do
        printf(" - %d = %d (%s)",i,RewardLinesSorted[i],RewardLinesIndex[RewardLinesSorted[i]])
      end
      print("")
    end
    
    -- WE NEED to do this from bottom to top of AlienPuzzle_table **********************************    
    for i=#RewardLinesSorted,1,-1 do
      local addLineInExml = RewardLinesSorted[i]
      local optionNameToProcess = RewardLinesIndex[addLineInExml]
      Dprintf("%d: = = = = = =",i)
      Dprintf("  optionNameToProcess = %s",optionNameToProcess)
      
      -- retrieve changeinfo of that OptionName
      local changeInfo = fastOptionName[optionNameToProcess]
      
      local OptionName = tostring(changeInfo[1]) -- NOT USED
      local WordID     = changeInfo[2]
      local Amount     = changeInfo[3]

      Dprintf([[  line %d:       {"%s", "%s", %d},]],addLineInExml,OptionName,WordID,Amount - 1)

      if WordID ~= previousWordID then -- only do it if WordID changed
        -- update AddReward_table
        AddReward_table[currentWordIDLine] = AddReward_table[currentWordIDLine]:gsub(previousWordID,WordID)
        -- remember it as previousWordID
        previousWordID = WordID
      end
      
      local addTable = {}
      for _ = 1, Amount - 1 do -- -1 because one word already exist
        -- build the ADD table
        addTable = tableUnion(addTable,AddReward_table)
        -- Dprintf("   ==> #addTable = %d",#addTable)
        changeCount = changeCount + 1
      end
      
      if #addTable > 0 then
        -- Insert the string into AlienPuzzle_table at addLineInExml
        Dprintf("   #AlienPuzzle_table = %d",#AlienPuzzle_table)
        
        -- grow the main table by #addTable, moving the insertion position down
        table.move(AlienPuzzle_table, addLineInExml, #AlienPuzzle_table + #addTable, addLineInExml + #addTable)
        Dprint("         ==> grows to = "..#AlienPuzzle_table.." by "..#addTable.." lines")
        
        -- insert addTable into the main table
        table.move(addTable, 1, #addTable, addLineInExml, AlienPuzzle_table)
      end
    end -- for i=#RewardLinesSorted,1,-1 do
    Dprint("")
    Dprint("#PlaqueChanges = "..#PlaqueChanges..", changeCount = "..changeCount)
  end
  
  printf("        ==> Done in %3.3f sec",os.clock() - start)
  return { [AlienPuzzle] = AlienPuzzle_table }
end