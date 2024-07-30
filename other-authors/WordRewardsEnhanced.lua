-- ======= SCRIPT INFO =======
author = "Umaroth"
luaAuthor = "Umaroth"
modName = "WordRewardsEnhanced"
description = "Increases the number of words learned from nearly all sources. Fully configurable. Also optionally adds word rewards to all Atlas Orbs as well as increasing Salvaged Data rewards."
gameVersion = "5.1.1"
modVersion = "1.2"

-- ======== SETTINGS ========
-- Edit to your preference. Have not tested Maximums. Always edits 'METADATA\REALITY\TABLES\REWARDTABLE.MBIN'.
STONE_WORDS        = 2       -- Word Stones.
ENCYCLO_WORDS      = 4       -- Encylopedias, set to 0 for same as Word Stones and to avoid editing 'MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\WORDSTATION\ENTITIES\WORDSTATION.ENTITY.MBIN'
CHAT_WORDS         = 3       -- NPC Dialogue Options. Applies to all races except for Altas. (Including Autophage, but I don't know how you're supposed to speak with them.)
WORD_WORDS         = 5       -- Not 100% sure where these ones are given but I got it once in the main quest from an NPC just after installing Artemis' translator. Only Traders, Explorers and Warriors have these so I believe these are Non-Autophage(Builder) quest rewards.
TEACHWORD_WORDS    = 5       -- This applies to NPCs in Buildings, Ancient Ruins and Ancient Plaques. (I think it also applies to Autophage quests but haven't been able to test that yet.)
ATLAS_WORDS        = 3       -- Atlas glowing orbs are linked to TEACHWORD_ATLAS but I made Atlas a separate option from the other races.
ALL_ATLAS_ORBS     = "Y"     -- Add words to all Atlas Orbs? Y/N - Setting to N avoids editing 'MODELS\SPACE\ATLASSTATION\MODULARPARTS\INTERIOR\PATHORB\PATHORB_DUMMY\ENTITIES\ORBSTONE_DUMMY.ENTITY.MBIN'
KEEP_CATEGORY      = "N"     -- Keep category selected during dialogue with NPC? Y/N | Note: Even if set to "Y" there will always be one random-category word. (so if you only get one word it's because you're out of words in that category and got only the random one)
INCLUDE_SALV_DATA  = "N"     -- Also Boost Salvaged Data? Y/N
SALV_DATA_MIN      = 8
SALV_DATA_MAX      = 16

modNameSub = "Default"       --Subname in produced .pak

-- ========== CODE ==========
--Copies of some code blocks we'll need later. This one is repeated once for each additional word.
REWARDTABLEITEM = [[<Property value="GcRewardTableItem.xml"><Property name="PercentageChance" value="100" /><Property name="LabelID" value="" /><Property name="Reward" value="GcRewardTeachWord.xml"><Property name="Race" value="GcAlienRace.xml"><Property name="AlienRace" value="None" /></Property><Property name="UseCategory" value="False" /><Property name="Category" value="GcWordCategoryTableEnum.xml"><Property name="wordcategorytableEnum" value="MISC" /></Property><Property name="AmountMin" value="1" /><Property name="AmountMax" value="1" /></Property></Property>]]
--This one is needed to be able to give Encyclopedias a different reward from Stones.
GENERICREWARDTABLEENTRY = [[<Property value="GcGenericRewardTableEntry.xml"><Property name="Id" value="WORD_ENCYCLO" /><Property name="List" value="GcRewardTableItemList.xml"><Property name="RewardChoice" value="GiveAll" /><Property name="OverrideZeroSeed" value="False" /><Property name="UseInventoryChoiceOverride" value="False" /><Property name="IncrementStat" value="" /><Property name="List"><Property value="GcRewardTableItem.xml"><Property name="PercentageChance" value="100" /><Property name="LabelID" value="" /><Property name="Reward" value="GcRewardTeachWord.xml"><Property name="Race" value="GcAlienRace.xml"><Property name="AlienRace" value="None" /></Property><Property name="UseCategory" value="False" /><Property name="Category" value="GcWordCategoryTableEnum.xml"><Property name="wordcategorytableEnum" value="MISC" /></Property><Property name="AmountMin" value="1" /><Property name="AmountMax" value="1" /></Property></Property></Property></Property></Property>]]

WORD_ID = {"TRA_WORD","EXP_WORD","WAR_WORD"}                                                          --ID's for each of the "WORD" entries.
WORD_RACE = {"Traders","Explorers","Warriors"}                                                        --Matching values to replace "None" inside REWARDTABLEITEM with to target correct race.

TEACHWORD_ID = {"TEACHWORD_BUI","TEACHWORD_TRA","TEACHWORD_EXP","TEACHWORD_WAR","TEACHWORD_ATLAS"}    --ID's for each of the "TEACHWORD" entries.
TEACHWORD_RACE = {"Builders","Traders","Explorers","Warriors","Atlas"}                                --Matching values to replace "None" inside REWARDTABLEITEM with to target correct race.

CHAT_RACE_ID = {"TRA","EXP","WAR","BUI"}                                                              --First part of the ID's for each of the chat entries
CHAT_TOPIC_ID = {"DIRECT","HELP","TRADE","LORE","TECH","THREAT","MISC"}                               --Second part of the ID's for each of the chat entries.
CHAT_RACE = {"Traders","Explorers","Warriors","Builders"}                                             --Matching values to replace "None" inside REWARDTABLEITEM with to target correct race.
CHAT_TOPIC = {"DIRECTIONS","HELP","TRADE","LORE","TECH","THREAT","MISC"}                              --Matching values to replace "MISC" inside REWARDTABLEITEM with to target correct topic.

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]    = modName.."_"..modNameSub.."_v"..modVersion.."_nms"..gameVersion..".pak",
	["MOD_DESCRIPTION"] = description,
	["MOD_AUTHOR"]      = author,
	["LUA_AUTHOR"]      = luaAuthor,
	["NMS_VERSION"]     = gameVersion,
    -- Only need the structure here. Code below will add all necessary changes based on user settings.
    ["MODIFICATIONS"] = {{["MBIN_CHANGE_TABLE"]={{["MBIN_FILE_SOURCE"]="METADATA\REALITY\TABLES\REWARDTABLE.MBIN",["EXML_CHANGE_TABLE"]={}}}}}
}

MBIN_CHANGE_TABLE = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
REWARDTABLE_EXML = MBIN_CHANGE_TABLE[1]["EXML_CHANGE_TABLE"]

--STONE SECTION
if STONE_WORDS >= 2 then                                                                   --Don't need to add code if only 1 word.
	local STONE_CODE = string.rep(REWARDTABLEITEM, STONE_WORDS - 1)                        --Just have to repeat REWARDTABLEITEM the chosen number of times, -1 because there's one of these reward code blocks already there.
	local temp_table =                                                                     --Create temporary table to add to above ["EXML_CHANGE_TABLE"].
		{
			["SPECIAL_KEY_WORDS"] = {"Id", "WORD", "PercentageChance", "IGNORE"},
			["ADD_OPTION"]  = "ADDafterSECTION",

			["ADD"] = STONE_CODE,
		}
	REWARDTABLE_EXML[#REWARDTABLE_EXML + 1] = temp_table                                   --Add temporary table to the ["EXML_CHANGE_TABLE"].
end

--ENCYCLOPEDIA SECTION
if ENCYCLO_WORDS > 0 and ENCYCLO_WORDS ~= STONE_WORDS then                                 --Check if Encylopedia needs to be set.
	local temp_table =                                                                     --Need to edit entity file for Encylopedias to separate their rewards from Word Stones.
		{
			["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\WORDSTATION\ENTITIES\WORDSTATION.ENTITY.MBIN",
			["EXML_CHANGE_TABLE"] =
			{
				{
					["SPECIAL_KEY_WORDS"] = {"StoryUtilityOverrideData", "GcStoryUtilityOverride.xml"},
					["REPLACE_TYPE"] = "ALL",
					
					["VALUE_CHANGE_TABLE"] = {
						{"Reward", "WORD_ENCYCLO"}                                        --Change Encyclopedias reward from target ID "WORD" to target ID "WORD_ENCYCLO".
					},
				}
			}
		}
	MBIN_CHANGE_TABLE[#MBIN_CHANGE_TABLE + 1] = temp_table                                --Add temporary table to the ["MBIN_CHANGE_TABLE"].
	
	temp_table =                                                                          --Need to add new GENERICREWARDTABLEENTRY for Encylopedias to target.
		{
			["SPECIAL_KEY_WORDS"] = {"Id", "WORD"},
			["ADD_OPTION"]  = "ADDafterSECTION",
			
			["ADD"] = GENERICREWARDTABLEENTRY,
		}
	REWARDTABLE_EXML[#REWARDTABLE_EXML + 1] = temp_table
	
	ENYCLO_CODE = string.rep(REWARDTABLEITEM, ENCYCLO_WORDS - 1)
	temp_table = 
		{
			["SPECIAL_KEY_WORDS"] = {"Id", "WORD_ENCYCLO", "PercentageChance", "IGNORE"},
			["ADD_OPTION"]  = "ADDafterSECTION",
			
			["ADD"] = ENYCLO_CODE,
		}
	if ENCYCLO_WORDS >= 2 then                                                            --Don't need to add this code if only 1 word
		REWARDTABLE_EXML[#REWARDTABLE_EXML + 1] = temp_table
	end
end

--WORD SECTION
for i=1,#WORD_ID do                                                                       --Loop through WORD ID's to target each.
	local ID = WORD_ID[i]
	local WORD_CODE = string.gsub(REWARDTABLEITEM, "None", WORD_RACE[i])                  --Replace "None" with correct race.
	WORD_CODE = string.rep(WORD_CODE, WORD_WORDS - 1)
	local temp_table = 
		{
			["SPECIAL_KEY_WORDS"] = {"Id", ID, "PercentageChance", "IGNORE"},
			["ADD_OPTION"]  = "ADDafterSECTION",
			
			["ADD"] = WORD_CODE,                                                          --Add code formatted above to targeted ID.
		}
	if WORD_WORDS >= 2 then
		REWARDTABLE_EXML[#REWARDTABLE_EXML + 1] = temp_table
	end
end

--TEACHWORD & ATLAS SECTION
for i=1,#TEACHWORD_ID do                                                                  --Same thing as WORD code.
	local ID = TEACHWORD_ID[i]
	local TEACHWORD_CODE = string.gsub(REWARDTABLEITEM, "None", TEACHWORD_RACE[i])
	
	if ID == "TEACHWORD_ATLAS" then
		TEACHWORD_CODE = string.rep(TEACHWORD_CODE, ATLAS_WORDS - 1)
	else
		TEACHWORD_CODE = string.rep(TEACHWORD_CODE, TEACHWORD_WORDS - 1)
	end
	
	local temp_table =
		{
			["SPECIAL_KEY_WORDS"] = {"Id", ID, "PercentageChance", "IGNORE"},
			["ADD_OPTION"]  = "ADDafterSECTION",
			
			["ADD"] = TEACHWORD_CODE,
		}
	
	if TEACHWORD_WORDS >= 2 and ATLAS_WORDS >= 2 then                                    --Need a few checks for whether we should be adding code based on settings since Atlas is separated.
		REWARDTABLE_EXML[#REWARDTABLE_EXML + 1] = temp_table
	elseif TEACHWORD_WORDS < 2 and ATLAS_WORDS >= 2 then
		if ID == "TEACHWORD_ATLAS" then
			REWARDTABLE_EXML[#REWARDTABLE_EXML + 1] = temp_table
		end
	elseif TEACHWORD_WORDS >= 2 and ATLAS_WORDS < 2 then
		if ID ~= "TEACHWORD_ATLAS" then
			REWARDTABLE_EXML[#REWARDTABLE_EXML + 1] = temp_table
		end
	end
end

--CHAT SECTION
for i=1,#CHAT_RACE_ID do
	for e=1, #CHAT_TOPIC_ID do                                               --Need an extra loop to get both Race and Topic because these ID's use both.
		local ID = CHAT_RACE_ID[i].."_WORD_"..CHAT_TOPIC_ID[e]               --Build ID from race and topic.
		local CHAT_CODE = string.gsub(REWARDTABLEITEM, "None", CHAT_RACE[i])
		
		if string.upper(KEEP_CATEGORY) == "Y" then                           --Check if user wants categoried words or random ones and if categoried
			CHAT_CODE = string.gsub(CHAT_CODE, "MISC", CHAT_TOPIC[e])        --set Category in reward block
			CHAT_CODE = string.gsub(CHAT_CODE, "False", "True")              --and set "UseCategory" to True
		end
		
		CHAT_CODE = string.rep(CHAT_CODE, CHAT_WORDS - 2)                    --This one is -2 because the chat entries already have one categoried block and one random block (in case the player was out words in the chosen category).
		
		local temp_table1 =                                                  --Enable "GiveAll", default is "TryEach" which means only 1 word would be given no matter how many reward code blocks we add. (this is because there was already 2 reward blocks, it would try the categoried one first and if it was out of words it would fallback to giving a miscellaneous word.)
			{
				["SPECIAL_KEY_WORDS"] = {"Id", ID},
				["REPLACE_TYPE"] = "ALL",
				
				["VALUE_CHANGE_TABLE"] = {
					{"RewardChoice", "GiveAll"}
				},
			}
		local temp_table2 = 
			{
				["SPECIAL_KEY_WORDS"] = {"Id", ID, "PercentageChance", "IGNORE"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				
				["ADD"] = CHAT_CODE,
			}
		
		if CHAT_WORDS >= 2 then
			REWARDTABLE_EXML[#REWARDTABLE_EXML + 1] = temp_table1       --Don't need to "GiveAll" if only 1 word
			if CHAT_WORDS >= 3 then
				REWARDTABLE_EXML[#REWARDTABLE_EXML + 1] = temp_table2   --Don't need to add code if only 2 words because of "GiveAll"
			end
		end
	end
end

--ALL ATLAS ORBS SECTION
if string.upper(ALL_ATLAS_ORBS) == "Y" then
	local temp_table = 
		{
			["MBIN_FILE_SOURCE"]  = "MODELS\SPACE\ATLASSTATION\MODULARPARTS\INTERIOR\PATHORB\PATHORB_DUMMY\ENTITIES\ORBSTONE_DUMMY.ENTITY.MBIN",
			["EXML_CHANGE_TABLE"] =
			{
				{
					["SPECIAL_KEY_WORDS"] = {"StateID","GIVEWORD"},
					["PRECEDING_KEY_WORDS"] = {"Sound"},
					["ADD_OPTION"]  = "ADDafterSECTION",

					["ADD"] = [[<Property value="GcRewardAction.xml"><Property name="Reward" value="TEACHWORD_ATLAS" /></Property>]],
				}
			}
		}
	MBIN_CHANGE_TABLE[#MBIN_CHANGE_TABLE + 1] = temp_table
end

--SALVAGED DATA SECTION
if string.upper(INCLUDE_SALV_DATA) == "Y" then
	local temp_table = 
		{
			["SPECIAL_KEY_WORDS"] = {"Id", "BP_SALVAGE", "ID", "BP_SALVAGE"},
			["REPLACE_TYPE"] = "ALL",
			
			["VALUE_CHANGE_TABLE"] = {
				{"AmountMin", SALV_DATA_MIN},
				{"AmountMax", SALV_DATA_MAX}
			},
		}
	REWARDTABLE_EXML[#REWARDTABLE_EXML + 1] = temp_table
end