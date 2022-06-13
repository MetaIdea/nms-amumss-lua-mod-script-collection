-- More Words Settings --
NPC            = "2" -- NPC request to learn a word option
KnowledgeStone = "3" -- words learn from knowledge stones
WordStation    = "4" -- words learn from word stations/encyclopedias
Monolith       = "5" -- Monolith seek help with language option
-------------------------

-- Word Function --
local function Word(race, category, usecategory)
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

-- Rewards Function --
local function Rewards(id)
  return 
[[
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="]]..id..[[" />
            </Property>
]]
end

-- Word Station Reward Section --
WordStation_R =
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="WORD_STATION_R" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="None" />
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

-- Word Section Key:
-- Race: Traders(Gek), Explorers(Korvax), Warriors(Vykeen), Atlas, None
-- Category: MISC, DIRECTIONS, HELP, TRADE, LORE, TECH, THREAT
-- UseCategory: True / False (false would learn a random word)

-- Word Changes --
KnowledgeStone_W = Word("None", "MISC", "False") -- Function(Race, Category, UseCategory)
WordStation_W    = Word("None", "MISC", "False")

Gek_Direct = Word("Traders", "DIRECTIONS", "True")
Gek_Help   = Word("Traders", "HELP", "True")
Gek_Trade  = Word("Traders", "TRADE", "True")
Gek_Lore   = Word("Traders", "LORE", "True")
Gek_Tech   = Word("Traders", "TECH", "True")
Gek_Threat = Word("Traders", "THREAT", "True")
Gek_Misc   = Word("Traders", "MISC", "True")

Korvax_Direct = Word("Explorers", "DIRECTIONS", "True")
Korvax_Help   = Word("Explorers", "HELP", "True")
Korvax_Trade  = Word("Explorers", "TRADE", "True")
Korvax_Lore   = Word("Explorers", "LORE", "True")
Korvax_Tech   = Word("Explorers", "TECH", "True")
Korvax_Threat = Word("Explorers", "THREAT", "True")
Korvax_Misc   = Word("Explorers", "MISC", "True")

Vykeen_Direct = Word("Warriors", "DIRECTIONS", "True")
Vykeen_Help   = Word("Warriors", "HELP", "True")
Vykeen_Trade  = Word("Warriors", "TRADE", "True")
Vykeen_Lore   = Word("Warriors", "LORE", "True")
Vykeen_Tech   = Word("Warriors", "TECH", "True")
Vykeen_Threat = Word("Warriors", "THREAT", "True")
Vykeen_Misc   = Word("Warriors", "MISC", "True")

-- Rewards Changes --
Gek_Monolith    = Rewards("TEACHWORD_TRA") -- Function(Reward Id)
Korvax_Monolith = Rewards("TEACHWORD_EXP")
Vykeen_Monolith = Rewards("TEACHWORD_WAR")

-- Word Queues --
-- KnoledgeStone_W is repeated as many as KnowledgeStone minus 1. (minus 1 is to account for the original reward section)
KnowledgeStone_Q = string.rep(KnowledgeStone_W, KnowledgeStone - 1)
WordStation_Q    = string.rep(WordStation_W, WordStation - 1)

Gek_Direct_Q = string.rep(Gek_Direct, NPC - 1)
Gek_Help_Q   = string.rep(Gek_Help, NPC - 1)
Gek_Trade_Q  = string.rep(Gek_Trade, NPC - 1)
Gek_Lore_Q   = string.rep(Gek_Lore, NPC - 1)
Gek_Tech_Q   = string.rep(Gek_Tech, NPC - 1)
Gek_Threat_Q = string.rep(Gek_Threat, NPC - 1)
Gek_Misc_Q   = string.rep(Gek_Misc, NPC - 1)

Korvax_Direct_Q = string.rep(Korvax_Direct, NPC - 1)
Korvax_Help_Q   = string.rep(Korvax_Help, NPC - 1)
Korvax_Trade_Q  = string.rep(Korvax_Trade, NPC - 1)
Korvax_Lore_Q   = string.rep(Korvax_Lore, NPC - 1)
Korvax_Tech_Q   = string.rep(Korvax_Tech, NPC - 1)
Korvax_Threat_Q = string.rep(Korvax_Threat, NPC - 1)
Korvax_Misc_Q   = string.rep(Korvax_Misc, NPC - 1)

Vykeen_Direct_Q = string.rep(Vykeen_Direct, NPC - 1)
Vykeen_Help_Q   = string.rep(Vykeen_Help, NPC - 1)
Vykeen_Trade_Q  = string.rep(Vykeen_Trade, NPC - 1)
Vykeen_Lore_Q   = string.rep(Vykeen_Lore, NPC - 1)
Vykeen_Tech_Q   = string.rep(Vykeen_Tech, NPC - 1)
Vykeen_Threat_Q = string.rep(Vykeen_Threat, NPC - 1)
Vykeen_Misc_Q   = string.rep(Vykeen_Misc, NPC - 1)

Gek_Monolith_Q    = string.rep(Gek_Monolith, Monolith - 1)
Korvax_Monolith_Q = string.rep(Korvax_Monolith, Monolith - 1)
Vykeen_Monolith_Q = string.rep(Vykeen_Monolith, Monolith - 1)

-- File Settings --
FileName    = "More Words 1.0.pak" -- can be changed to the name you want the mod but make sure to keep .pak at the end
ModAuthor   = "JustRuthless" -- only for reference
LuaAuthor   = "JustRuthless" -- only for reference
NMS_Version = "Leviathan 3.91" -- only for reference

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"
FileSource2 = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"
FileSource3 = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/INTERACTIVE/WORDSTATION/ENTITIES/WORDSTATION.ENTITY.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]  = FileName,
  ["MOD_AUTHOR"]    = ModAuthor,
  ["LUA_AUTHOR"]    = LuaAuthor,
  ["NMS_VERSION"]   = NMS_Version,
  ["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= FileSource1,
					["EXML_CHANGE_TABLE"] = 
					{
						{-- adds word station reward section after word reward section
              ["SPECIAL_KEY_WORDS"] = {"Id", "WORD"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = WordStation_R, 
            },
            {-- adds more words to word stations/encyclopedias
              ["SPECIAL_KEY_WORDS"] = {"Id", "WORD_STATION_R", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = WordStation_Q, 
            },
            {-- adds more words to knowledge stones
              ["SPECIAL_KEY_WORDS"] = {"Id", "WORD", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = KnowledgeStone_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_DIRECT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_HELP"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_TRADE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_LORE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_TECH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_THREAT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_MISC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_DIRECT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_HELP"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_TRADE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_LORE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_TECH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_THREAT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_MISC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_DIRECT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_HELP"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_TRADE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_LORE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_TECH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_THREAT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_MISC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RewardChoice", "GiveAll"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_DIRECT", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_HELP", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_TRADE", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_LORE", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_TECH", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_THREAT", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_MISC", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_DIRECT", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_HELP", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_TRADE", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_LORE", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_TECH", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_THREAT", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_MISC", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_DIRECT", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_HELP", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_TRADE", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_LORE", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_TECH", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_THREAT", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_MISC", "UseCategory", "False"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_DIRECT", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Gek_Direct_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_HELP", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Gek_Help_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_TRADE", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Gek_Trade_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_LORE", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Gek_Lore_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_TECH", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Gek_Tech_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_THREAT", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Gek_Threat_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_WORD_MISC", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Gek_Misc_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_DIRECT", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Korvax_Direct_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_HELP", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Korvax_Help_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_TRADE", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Korvax_Trade_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_LORE", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Korvax_Lore_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_TECH", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Korvax_Tech_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_THREAT", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Korvax_Threat_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_WORD_MISC", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Korvax_Misc_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_DIRECT", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Vykeen_Direct_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_HELP", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Vykeen_Help_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_TRADE", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Vykeen_Trade_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_LORE", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Vykeen_Lore_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_TECH", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Vykeen_Tech_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_THREAT", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Vykeen_Threat_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_WORD_MISC", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Vykeen_Misc_Q,
            },
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
            {-- adds more word rewards to monolith plaques
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_1"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_2"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_3"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_4"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_5"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_6"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_7"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_8"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_9"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_10"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_11"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_12"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_13"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_14"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_15"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_16"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_17"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_18"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_19"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_20"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_21"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_22"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_23"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_24"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_25"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_26"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_27"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_28"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_29"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_PLAQUE_30"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Gek_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_1"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_2"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_3"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_4"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_5"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_6"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_7"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_8"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_9"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_10"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_11"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_12"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_13"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_14"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_15"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_16"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_17"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_18"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_19"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_20"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_21"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_22"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_23"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_24"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_25"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_26"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_27"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_28"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_29"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_30"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_31"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_32"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXPLORER_PLAQUE_33"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Korvax_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_1"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_2"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_3"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_4"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_5"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_6"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_7"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_8"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_9"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_10"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_11"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_12"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_13"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_14"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_15"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_16"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_17"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_18"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_19"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_20"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_21"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_22"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_23"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_24"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_25"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_26"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_27"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_28"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_29"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WARRIOR_PLAQUE_30"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["SECTION_ACTIVE"] = 1,
              ["ADD"] = Vykeen_Monolith_Q,
            },
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
            { -- replaces the reward for Word Stations / Encyclopedias to a newly added reward
              ["SPECIAL_KEY_WORDS"] = {"Reward", "WORD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Reward", "WORD_STATION_R"},
              },
            }, -- to separate Knowledge Stone and Encyclopedia rewards
          }
        },
      }
		},
	}
}