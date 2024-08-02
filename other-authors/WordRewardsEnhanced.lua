-- ======= SCRIPT INFO =======
author = "Umaroth"
luaAuthor = "Umaroth"
modName = "WordRewardsEnhanced"
description = "Increases the number of words learned from nearly all sources. Fully configurable. Also optionally adds word rewards to all Atlas Orbs as well as increasing Salvaged Data rewards."
gameVersion = "5.3"
modVersion = "1.3"

-- ======== SETTINGS ========
-- Edit to your preference. Have not tested Maximums. Always edits 'METADATA\REALITY\TABLES\REWARDTABLE.MBIN'.
STONE_WORDS        = 2       -- Word Stones.
ENCYCLO_WORDS      = 4       -- Encylopedias, set to 0 for same as Word Stones and to avoid editing 'MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\WORDSTATION\ENTITIES\WORDSTATION.ENTITY.MBIN'
CHAT_WORDS         = 3       -- NPC Dialogue Options. Applies to all races except for Altas. (Including Autophage/Builder)
WORD_WORDS         = 5       -- Not 100% certain where these are given but I've had it happen in the main quest from an NPC just after installing Artemis' translator. Only Traders, Explorers and Warriors have these so I believe these are Non-Autophage(Builder) quest rewards.
TEACHWORD_WORDS    = 5       -- This applies to NPCs in Buildings, Ancient Ruins and Ancient Plaques. (I think it also applies to Autophage quests but haven't been able to test that yet.)
ATLAS_WORDS        = 3       -- Atlas glowing orbs are linked to TEACHWORD_ATLAS but I made Atlas a separate option from the other races.
ALL_ATLAS_ORBS     = "Y"     -- Add words to all Atlas Orbs? Y/N - Setting to N avoids editing 'MODELS\SPACE\ATLASSTATION\MODULARPARTS\INTERIOR\PATHORB\PATHORB_DUMMY\ENTITIES\ORBSTONE_DUMMY.ENTITY.MBIN'
KEEP_CATEGORY      = "N"     -- Keep category selected during dialogue with NPC? Y/N | Note: Even if set to "Y" there will always be one random-category word. (so if you only get one word it's because you're out of words in that category and got only the random one)
INCLUDE_SALV_DATA  = "Y"     -- Also Boost Salvaged Data? Y/N
SALV_DATA_MIN      = 8
SALV_DATA_MAX      = 16

modNameSub = "Custom"        --Subname in produced .pak

-- ========== CODE ==========
NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]    = modName.."_"..modNameSub.."_v"..modVersion.."_nms"..gameVersion..".pak",
	["MOD_DESCRIPTION"] = description,
	["MOD_AUTHOR"]      = author,
	["LUA_AUTHOR"]      = luaAuthor,
	["NMS_VERSION"]     = gameVersion,
    -- Only need the structure here. Code below will add all necessary changes based on user settings.
    ["MODIFICATIONS"] = {{["MBIN_CT"]={{["MBIN_FS"]="METADATA\REALITY\TABLES\REWARDTABLE.MBIN",["EXML_CT"]={}}}}}
}

--These variables will be used to add to the above MODIFICATIONS table later
MBIN_CT = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CT"]
REWARDTABLE_EXML_CT = MBIN_CT[1]["EXML_CT"]

--This code block will be repeated once for each additional word
REWARDTABLEITEM = [[<Property value="GcRewardTableItem.xml"><Property name="PercentageChance" value="100" /><Property name="LabelID" value="" /><Property name="Reward" value="GcRewardTeachWord.xml"><Property name="Race" value="GcAlienRace.xml"><Property name="AlienRace" value="None" /></Property><Property name="UseCategory" value="False" /><Property name="Category" value="GcWordCategoryTableEnum.xml"><Property name="wordcategorytableEnum" value="MISC" /></Property><Property name="AmountMin" value="1" /><Property name="AmountMax" value="1" /></Property></Property>]]

--STONE SECTION
if STONE_WORDS >= 2 then                                                                   --Don't need to add code if only 1 word.
	local STONE_CODE = string.rep(REWARDTABLEITEM, STONE_WORDS - 1)                        --Just have to repeat REWARDTABLEITEM the chosen number of times, -1 because there's one of these reward code blocks already there.
	local temp_table =                                                                     --Create temporary table to add to above ["EXML_CT"].
		{
			["SKW"] = {"Id", "WORD", "PercentageChance", "IGNORE"},
			["ADD_OPTION"]  = "ADDafterSECTION",

			["ADD"] = STONE_CODE,
		}
	REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] = temp_table                             --Add temporary table to the ["EXML_CT"].
end

--ENCYCLOPEDIA SECTION
if ENCYCLO_WORDS > 0 and ENCYCLO_WORDS ~= STONE_WORDS then                                 --Check if Encylopedia needs to be set.
	local temp_table =                                                                     --Need to edit entity file for Encylopedias to separate their rewards from Word Stones.
		{
			["MBIN_FS"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\WORDSTATION\ENTITIES\WORDSTATION.ENTITY.MBIN",
			["EXML_CT"] =
			{
				{
					["SKW"] = {"StoryUtilityOverrideData", "GcStoryUtilityOverride.xml"},
					["REPLACE_TYPE"] = "ALL",
					
					["VCT"] = {
						{"Reward", "WORD_ENCYCLO"}                                        --Change Encyclopedias reward from target ID "WORD" to target ID "WORD_ENCYCLO".
					},
				}
			}
		}
	MBIN_CT[#MBIN_CT + 1] = temp_table                                                    --Add temporary table to the ["MBIN_CT"].
	
	temp_table =                                                                          --Need to add new GENERICREWARDTABLEENTRY for Encylopedias to target.
		{
			["SKW"] = {"Id", "WORD"},
			["ADD_OPTION"]  = "ADDafterSECTION",
			
			["ADD"] = [[<Property value="GcGenericRewardTableEntry.xml"><Property name="Id" value="WORD_ENCYCLO" /><Property name="List" value="GcRewardTableItemList.xml"><Property name="RewardChoice" value="GiveAll" /><Property name="OverrideZeroSeed" value="False" /><Property name="UseInventoryChoiceOverride" value="False" /><Property name="IncrementStat" value="" /><Property name="List"><Property value="GcRewardTableItem.xml"><Property name="PercentageChance" value="100" /><Property name="LabelID" value="" /><Property name="Reward" value="GcRewardTeachWord.xml"><Property name="Race" value="GcAlienRace.xml"><Property name="AlienRace" value="None" /></Property><Property name="UseCategory" value="False" /><Property name="Category" value="GcWordCategoryTableEnum.xml"><Property name="wordcategorytableEnum" value="MISC" /></Property><Property name="AmountMin" value="1" /><Property name="AmountMax" value="1" /></Property></Property></Property></Property></Property>]],
		}
	REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] = temp_table
	
	local ENYCLO_CODE = string.rep(REWARDTABLEITEM, ENCYCLO_WORDS - 1)
	temp_table = 
		{
			["SKW"] = {"Id", "WORD_ENCYCLO", "PercentageChance", "IGNORE"},
			["ADD_OPTION"]  = "ADDafterSECTION",
			
			["ADD"] = ENYCLO_CODE,
		}
	if ENCYCLO_WORDS >= 2 then                                                               --Don't need to add this code if only 1 word
		REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] = temp_table
	end
end

--WORD SECTION
WORD_TABLE = {{"TRA_WORD","Traders"},{"EXP_WORD","Explorers"},{"WAR_WORD","Warriors"}}       --Table of WORD ID's and their matching values to replace "None" inside REWARDTABLEITEM to target correct race

for i=1,#WORD_TABLE do                                                                       --Loop through WORD ID's to target each.
	local ID = WORD_TABLE[i][1]
	local WORD_CODE = string.gsub(REWARDTABLEITEM, "None", WORD_TABLE[i][2])                 --Replace "None" with correct race.
	WORD_CODE = string.rep(WORD_CODE, WORD_WORDS - 1)
	
	local temp_table = 
		{
			["SKW"] = {"Id", ID, "PercentageChance", "IGNORE"},
			["ADD_OPTION"]  = "ADDafterSECTION",
			
			["ADD"] = WORD_CODE,                                                             --Add code formatted above to targeted ID.
		}
	
	if WORD_WORDS >= 2 then
		REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] = temp_table
	end
end

--TEACHWORD & ATLAS SECTION
TEACHWORD_TABLE = {{"TEACHWORD_BUI","Builders"},{"TEACHWORD_TRA","Traders"},{"TEACHWORD_EXP","Explorers"},{"TEACHWORD_WAR","Warriors"},{"TEACHWORD_ATLAS","Atlas"}} --Table of TEACHWORD ID's and their matching values to replace "None" inside REWARDTABLEITEM to target correct race

for i=1,#TEACHWORD_TABLE do                                                                  --Same thing as WORD code.
	local ID = TEACHWORD_TABLE[i][1]
	local TEACHWORD_CODE = string.gsub(REWARDTABLEITEM, "None", TEACHWORD_TABLE[i][2])
	
	if ID == "TEACHWORD_ATLAS" then
		TEACHWORD_CODE = string.rep(TEACHWORD_CODE, ATLAS_WORDS - 1)
	else
		TEACHWORD_CODE = string.rep(TEACHWORD_CODE, TEACHWORD_WORDS - 1)
	end
	
	local temp_table =
		{
			["SKW"] = {"Id", ID, "PercentageChance", "IGNORE"},
			["ADD_OPTION"]  = "ADDafterSECTION",
			
			["ADD"] = TEACHWORD_CODE,
		}
	
	if TEACHWORD_WORDS >= 2 and ATLAS_WORDS >= 2 then                                    --Need a few checks for whether we should be adding code based on settings since Atlas is separated.
		REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] = temp_table
	elseif TEACHWORD_WORDS < 2 and ATLAS_WORDS >= 2 then
		if ID == "TEACHWORD_ATLAS" then
			REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] = temp_table
		end
	elseif TEACHWORD_WORDS >= 2 and ATLAS_WORDS < 2 then
		if ID ~= "TEACHWORD_ATLAS" then
			REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] = temp_table
		end
	end
end

--CHAT SECTION
CHAT_TABLE = {
	{{"TRA","Traders"},{"EXP","Explorers"},{"WAR","Warriors"},{"BUI","Builders"}},
	{{"DIRECT","DIRECTIONS"},{"HELP","HELP"},{"TRADE","TRADE"},{"LORE","LORE"},{"TECH","TECH"},{"THREAT","THREAT"},{"MISC","MISC"}}
}                                                                            --Table of needed Race and Topic IDs and their matching values to replace inside REWARDTABLEITEM.

for i=1,#CHAT_TABLE[1] do
	for e=1, #CHAT_TABLE[2] do                                               --Need an extra loop to get both Race and Topic because these ID's use both.
		local ID = CHAT_TABLE[1][i][1].."_WORD_"..CHAT_TABLE[2][e][1]        --Build ID from race and topic.
		local CHAT_CODE = string.gsub(REWARDTABLEITEM, "None", CHAT_TABLE[1][i][2])
		
		if string.upper(KEEP_CATEGORY) == "Y" then                           --Check if user wants categoried words or random ones and if categoried
			CHAT_CODE = string.gsub(CHAT_CODE, "MISC", CHAT_TABLE[2][e][2])  --set Category in reward block
			CHAT_CODE = string.gsub(CHAT_CODE, "False", "True")              --and set "UseCategory" to True
		end
		
		CHAT_CODE = string.rep(CHAT_CODE, CHAT_WORDS - 2)                    --This one is -2 because the chat entries already have one categoried block and one random block (in case the player was out words in the chosen category).
		
		local temp_table1 =                                                  --Enable "GiveAll", default is "TryEach" which means only 1 word would be given no matter how many reward code blocks we add. (this is because there was already 2 reward blocks, it would try the categoried one first and if it was out of words it would fallback to giving a miscellaneous word.)
			{
				["SKW"] = {"Id", ID},
				["REPLACE_TYPE"] = "ALL",
				
				["VCT"] = {
					{"RewardChoice", "GiveAll"}
				},
			}
		local temp_table2 = 
			{
				["SKW"] = {"Id", ID, "PercentageChance", "IGNORE"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				
				["ADD"] = CHAT_CODE,
			}
		
		if CHAT_WORDS >= 2 then
			REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] = temp_table1       --Don't need to "GiveAll" if only 1 word
			if CHAT_WORDS >= 3 then
				REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] = temp_table2   --Don't need to add code if only 2 words because of "GiveAll"
			end
		end
	end
end

--ALL ATLAS ORBS SECTION
if string.upper(ALL_ATLAS_ORBS) == "Y" then
	local temp_table = 
		{
			["MBIN_FS"]  = "MODELS\SPACE\ATLASSTATION\MODULARPARTS\INTERIOR\PATHORB\PATHORB_DUMMY\ENTITIES\ORBSTONE_DUMMY.ENTITY.MBIN",
			["EXML_CT"] =
			{
				{
					["SKW"] = {"StateID","GIVEWORD"},
					["PKW"] = {"Sound"},
					["ADD_OPTION"]  = "ADDafterSECTION",

					["ADD"] = [[<Property value="GcRewardAction.xml"><Property name="Reward" value="TEACHWORD_ATLAS" /></Property>]],
				}
			}
		}
	MBIN_CT[#MBIN_CT + 1] = temp_table
end

--SALVAGED DATA SECTION
if string.upper(INCLUDE_SALV_DATA) == "Y" then
	local SALV_DATA_ID = {"BP_SALVAGE","S3_SALVAGE","BP_SALVAGE_ONLY"}
	
	for i=1,#SALV_DATA_ID do --UNDERGROUNDPROP.ENTITY.MBIN can give several different rewards depending on which quests the player has active so we have to loop through the ones with Salvaged Data.
		local temp_table = 
			{
				["SKW"] = {"Id", SALV_DATA_ID[i], "ID", "BP_SALVAGE"},
				["REPLACE_TYPE"] = "ALL",
				
				["VCT"] = {
					{"AmountMin", SALV_DATA_MIN},
					{"AmountMax", SALV_DATA_MAX}
				},
			}
		REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] = temp_table
	end
end