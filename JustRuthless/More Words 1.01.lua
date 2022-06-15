-- More Words Settings --
NPC            = "2" -- NPC request to learn a word option
KnowledgeStone = "3" -- words learn from knowledge stones
WordStation    = "4" -- words learn from word stations/encyclopedias
Monolith       = "5" -- Monolith seek help with language option
Monolith_Atlas = "3" -- Monolith atlas word reward from multiple choice questions
Atlas_Orb      = "2" -- Glowing orbs on the atlas stations
-------------------------

-- Reward Function 1 --
local function Reward1(id, race)
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

-- Reward Function 2 --
local function Reward2(race, category, usecategory)
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

-- Reward Function 3 --
local function Reward3(id)
return 
[[
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="]]..id..[[" />
            </Property>
]]
end

-- Reward1 Changes Key:
-- Id: WORD_STATION_R, WORD_ATLAS_ORB are newly added word reward sections
-- Race: Traders(Gek), Explorers(Korvax), Warriors(Vykeen), Atlas, None

-- Reward2 Changes Key:
-- Race: Traders(Gek), Explorers(Korvax), Warriors(Vykeen), Atlas, None
-- Category: MISC, DIRECTIONS, HELP, TRADE, LORE, TECH, THREAT
-- UseCategory: True / False (false would learn a random word)

-- Reward3 Changes Key:
-- Id: TEACHWORD_TRA(Gek), TEACHWORD_EXP(Korvax), TEACHWORD_WAR(Vykeen), TEACHWORD_ATLAS
-- Each Id is from a different race word reward section

-- Reward1 Changes --
  KnowledgeStone_R = Reward1("WORD_STONE_R", "None") -- Function(Id, Race)
  WordStation_R    = Reward1("WORD_STATION_R", "None") 
  Atlas_Orb_R      = Reward1("WORD_ATLAS_ORB", "Atlas")

-- Reward2 Changes --
  KnowledgeStone_W = Reward2("None", "MISC", "False") -- Function(Race, Category, UseCategory)
  WordStation_W    = Reward2("None", "MISC", "False")
  Atlas_Orb_W      = Reward2("Atlas", "MISC", "False")
  
  Gek_Direct = Reward2("Traders", "DIRECTIONS", "True")
  Gek_Help   = Reward2("Traders", "HELP", "True")
  Gek_Trade  = Reward2("Traders", "TRADE", "True")
  Gek_Lore   = Reward2("Traders", "LORE", "True")
  Gek_Tech   = Reward2("Traders", "TECH", "True")
  Gek_Threat = Reward2("Traders", "THREAT", "True")
  Gek_Misc   = Reward2("Traders", "MISC", "True")
  
  Korvax_Direct = Reward2("Explorers", "DIRECTIONS", "True")
  Korvax_Help   = Reward2("Explorers", "HELP", "True")
  Korvax_Trade  = Reward2("Explorers", "TRADE", "True")
  Korvax_Lore   = Reward2("Explorers", "LORE", "True")
  Korvax_Tech   = Reward2("Explorers", "TECH", "True")
  Korvax_Threat = Reward2("Explorers", "THREAT", "True")
  Korvax_Misc   = Reward2("Explorers", "MISC", "True")
  
  Vykeen_Direct = Reward2("Warriors", "DIRECTIONS", "True")
  Vykeen_Help   = Reward2("Warriors", "HELP", "True")
  Vykeen_Trade  = Reward2("Warriors", "TRADE", "True")
  Vykeen_Lore   = Reward2("Warriors", "LORE", "True")
  Vykeen_Tech   = Reward2("Warriors", "TECH", "True")
  Vykeen_Threat = Reward2("Warriors", "THREAT", "True")
  Vykeen_Misc   = Reward2("Warriors", "MISC", "True")

-- Reward3 Changes --
  Gek_Monolith    = Reward3("TEACHWORD_TRA") -- Function(Id)
  Korvax_Monolith = Reward3("TEACHWORD_EXP")
  Vykeen_Monolith = Reward3("TEACHWORD_WAR")
  Atlas_Monolith  = Reward3("TEACHWORD_ATLAS")

-- Word Queues --
  KnowledgeStone_Q = string.rep(KnowledgeStone_W, KnowledgeStone - 1) -- KnoledgeStone_W is repeated as many as KnowledgeStone minus 1. (minus 1 is to account for the original reward section)
  WordStation_Q    = string.rep(WordStation_W, WordStation - 1)
  Atlas_Orb_Q      = string.rep(Atlas_Orb_W, Atlas_Orb - 1)
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
  Atlas_Monolith_Q  = string.rep(Atlas_Monolith, Monolith_Atlas - 1)

-- File Settings --
FileName    = "More Words 1.01.pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
NMS_Version = "Leviathan 3.92"

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"
FileSource2 = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"
FileSource3 = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/RUINPARTS/WORDSTONE/ENTITIES/WORDSTONE.ENTITY.MBIN"
FileSource4 = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/INTERACTIVE/WORDSTATION/ENTITIES/WORDSTATION.ENTITY.MBIN"
FileSource5 = "MODELS/SPACE/ATLASSTATION/MODULARPARTS/INTERIOR/PATHORB/PATHORB/ENTITIES/ORBSTONE_1.ENTITY.MBIN"


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
          ["MBIN_FILE_SOURCE"]  = FileSource1,
          ["EXML_CHANGE_TABLE"] = 
          {
            {-- adds knowledge stone reward section after word section
              ["SPECIAL_KEY_WORDS"] = {"Id", "WORD"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = KnowledgeStone_R,
            },
            {-- adds word station reward section after word section
              ["SPECIAL_KEY_WORDS"] = {"Id", "WORD"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = WordStation_R,
            },
            {-- adds atlas orb word reward section after techword_atlas section
              ["SPECIAL_KEY_WORDS"] = {"Id", "TEACHWORD_ATLAS"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Atlas_Orb_R,
            },
            {-- adds more words to knowledge stones
              ["SPECIAL_KEY_WORDS"] = {"Id", "WORD_STONE_R", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = KnowledgeStone_Q,
            },
            {-- adds more words to word stations/encyclopedias
              ["SPECIAL_KEY_WORDS"] = {"Id", "WORD_STATION_R", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = WordStation_Q,
            },
            {-- adds more words to atlas orbs
              ["SPECIAL_KEY_WORDS"] = {"Id", "WORD_ATLAS_ORB", "PercentageChance", "IGNORE"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = Atlas_Orb_Q,
            },
            {-- changes reward choice to give all for npc learn word option reward
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
            {-- removes the misc word
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
            {-- adds more words to gek learn word options
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
            {-- adds more words to korvax learn word options
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
            {-- adds more words to vykeen learn word options
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
            {-- adds more word rewards to gek monolith plaques
              ["SPECIAL_KEY_WORDS"] = {"Name", "TRA_1_PLAQUE_OPT_1"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["REPLACE_TYPE"] = "ALL",
              ["ADD"] = Gek_Monolith_Q,
            },
            {-- adds more word rewards to korvax monolith plaques
              ["SPECIAL_KEY_WORDS"] = {"Name", "EXP_1_PLAQUE_OPT_1"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["REPLACE_TYPE"] = "ALL",
              ["ADD"] = Korvax_Monolith_Q,
            },
            {-- adds more word rewards to vykeen monolith plaques
              ["SPECIAL_KEY_WORDS"] = {"Name", "WAR_1_PLAQUE_OPT_1"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["REPLACE_TYPE"] = "ALL",
              ["ADD"] = Vykeen_Monolith_Q,
            },
            {-- adds more atlas word rewards to monolith multiple choice questions
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_2", "Name", "TRA_MON_OPT_A_2"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_14", "Name", "TRA_MON_OPT_B_14"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_1", "Name", "TRA_MON_OPT_A_1"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_12", "Name", "TRA_MON_OPT_A_12"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_12", "Name", "TRA_MON_OPT_B_12"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_18", "Name", "TRA_MON_OPT_B_18"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_3", "Name", "TRA_MON_OPT_A_3"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_3", "Name", "TRA_MON_OPT_B_3"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_16", "Name", "TRA_MON_OPT_B_16"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_4", "Name", "TRA_MON_OPT_A_4"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_5", "Name", "TRA_MON_OPT_A_5"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_6", "Name", "TRA_MON_OPT_A_6"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_7", "Name", "TRA_MON_OPT_A_7"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_7", "Name", "TRA_MON_OPT_B_7"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_8", "Name", "TRA_MON_OPT_A_8"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_8", "Name", "TRA_MON_OPT_B_8"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_9", "Name", "TRA_MON_OPT_A_9"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_9", "Name", "TRA_MON_OPT_B_9"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_10", "Name", "TRA_MON_OPT_A_10"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_10", "Name", "TRA_MON_OPT_B_10"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_11", "Name", "TRA_MON_OPT_A_11"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_15", "Name", "TRA_MON_OPT_B_15"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_17", "Name", "TRA_MON_OPT_A_17"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_17", "Name", "TRA_MON_OPT_C_17"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_20", "Name", "TRA_MON_OPT_B_20"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_19", "Name", "TRA_MON_OPT_A_19"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_19", "Name", "TRA_MON_OPT_B_19"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_13", "Name", "TRA_MON_OPT_A_13"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_13", "Name", "TRA_MON_OPT_B_13"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRA_MON_13", "Name", "TRA_MON_OPT_C_13"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_1", "Name", "EXP_MON_OPT_A_1"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_2", "Name", "EXP_MON_OPT_A_2"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_8", "Name", "EXP_MON_OPT_A_8"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_8", "Name", "EXP_MON_OPT_B_8"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_13", "Name", "EXP_MON_OPT_B_13"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_3", "Name", "EXP_MON_OPT_A_3"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_4", "Name", "EXP_MON_OPT_A_4"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_12", "Name", "EXP_MON_OPT_B_12"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_16", "Name", "EXP_MON_OPT_A_16"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_16", "Name", "EXP_MON_OPT_B_16"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_5", "Name", "EXP_MON_OPT_A_5"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_6", "Name", "EXP_MON_OPT_A_6"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_17", "Name", "EXP_MON_OPT_B_17"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_7", "Name", "EXP_MON_OPT_A_7"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_9", "Name", "EXP_MON_OPT_A_9"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_9", "Name", "EXP_MON_OPT_B_9"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_10", "Name", "EXP_MON_OPT_A_10"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_10", "Name", "EXP_MON_OPT_B_10"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_10", "Name", "EXP_MON_OPT_C_10"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_11", "Name", "EXP_MON_OPT_B_11"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_14", "Name", "EXP_MON_OPT_A_14"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_14", "Name", "EXP_MON_OPT_B_14"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_15", "Name", "EXP_MON_OPT_A_15"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_15", "Name", "EXP_MON_OPT_B_15"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_18", "Name", "EXP_MON_OPT_B_18"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXP_MON_19", "Name", "EXP_MON_OPT_A_19"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_11", "Name", "WAR_MON_OPT_B_11"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_1", "Name", "WAR_MON_OPT_A_1"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_12", "Name", "WAR_MON_OPT_A_12"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_12", "Name", "WAR_MON_OPT_B_12"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_12", "Name", "WAR_MON_OPT_C_12"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_2", "Name", "WAR_MON_OPT_A_2"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_3", "Name", "WAR_MON_OPT_A_3"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_13", "Name", "WAR_MON_OPT_B_13"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_4", "Name", "WAR_MON_OPT_A_4"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_20", "Name", "WAR_MON_OPT_B_20"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_5", "Name", "WAR_MON_OPT_A_5"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_5", "Name", "WAR_MON_OPT_B_5"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_6", "Name", "WAR_MON_OPT_A_6"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_6", "Name", "WAR_MON_OPT_B_6"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_14", "Name", "WAR_MON_OPT_A_14"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_14", "Name", "WAR_MON_OPT_B_14"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_15", "Name", "WAR_MON_OPT_A_15"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_7", "Name", "WAR_MON_OPT_A_7"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_7", "Name", "WAR_MON_OPT_B_7"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_8", "Name", "WAR_MON_OPT_A_8"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_9", "Name", "WAR_MON_OPT_A_9"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_10", "Name", "WAR_MON_OPT_B_10"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_10", "Name", "WAR_MON_OPT_C_10"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_16", "Name", "WAR_MON_OPT_A_16"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_16", "Name", "WAR_MON_OPT_B_16"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_17", "Name", "WAR_MON_OPT_B_17"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_18", "Name", "WAR_MON_OPT_B_18"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WAR_MON_19", "Name", "WAR_MON_OPT_A_19"},
              ["PRECEDING_KEY_WORDS"] = {"Rewards"},
              ["ADD"] = Atlas_Monolith_Q,
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