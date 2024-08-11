-- ======= SCRIPT INFO =======
author = "Umaroth"
luaAuthor = "Umaroth"
modName = "WordRewardsEnhanced"
description = "Increases the number of words learned from nearly all sources. Fully configurable. Also optionally adds word rewards to all Atlas Orbs as well as increasing Salvaged Data rewards."
gameVersion = "5.3"
modVersion = "1.5"

-- ======== SETTINGS ========
-- Edit to your preference. Have not tested Maximums. Always edits 'METADATA\REALITY\TABLES\REWARDTABLE.MBIN'.
STONE_WORDS        = 2       -- Word Stones.
ENCYCLO_WORDS      = 4       -- Encylopedias. Set to 0 or same as Word Stones to avoid editing 'MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\WORDSTATION\ENTITIES\WORDSTATION.ENTITY.MBIN'
CHAT_WORDS         = 3       -- NPC Dialogue Options. Applies to all races except for Altas. (Including Autophage/Builder)
WORD_WORDS         = 5       -- Not 100% certain where these are given but I've had it happen in the main quest from an NPC just after installing Artemis' translator. Only Traders, Explorers and Warriors have these so I believe these are Non-Autophage(Builder) quest rewards.
TEACHWORD_WORDS    = 5       -- This applies to NPCs in Buildings, Ancient Ruins and Ancient Plaques. (Autophage also has this type of reward but I'm not yet sure where it comes from.)
AUTOPHAGE_QUESTS   = 6       -- Original was 2 min - 3 max, but doing it that way you can only get 1 word pop-up so I made it a single number. Set to 0 to make no change.
ATLAS_WORDS        = 2       -- Atlas glowing orbs are linked to TEACHWORD_ATLAS but I made Atlas a separate option from the other races.
ALL_ATLAS_ORBS     = "Y"     -- Add words to all Atlas Orbs? Y/N - Setting to N avoids editing 'MODELS\SPACE\ATLASSTATION\MODULARPARTS\INTERIOR\PATHORB\PATHORB_DUMMY\ENTITIES\ORBSTONE_DUMMY.ENTITY.MBIN'
KEEP_CATEGORY      = "N"     -- Keep category selected during dialogue with NPC? Y/N | Note: Will always give random word if set to "N" and always give categorized word if set to "Y". If set to "Y" you may receive fewer words when finishing the selected category and will receive 0 words if you select a category you already have all words in.
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

--This code block will be repeated once for each additional word with edits to race and category as needed
WORD_REWARDTABLEITEM = [[<Property value="GcRewardTableItem.xml"><Property name="PercentageChance" value="100" /><Property name="LabelID" value="" /><Property name="Reward" value="GcRewardTeachWord.xml"><Property name="Race" value="GcAlienRace.xml"><Property name="AlienRace" value="None" /></Property><Property name="UseCategory" value="False" /><Property name="Category" value="GcWordCategoryTableEnum.xml"><Property name="wordcategorytableEnum" value="MISC" /></Property><Property name="AmountMin" value="1" /><Property name="AmountMax" value="1" /></Property></Property>]]

--STONE SECTION
if STONE_WORDS > 1 then                                                                    --Don't need to add code if only 1 word.
	REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] =                                        --Create and add table to above ["EXML_CT"].
		{
			["SKW"] = {"Id", "WORD"},
			["PKW"] = "GcRewardTableItem.xml",
			["ADD_OPTION"] = "ADDafterSECTION",
			["ADD"] = string.rep(WORD_REWARDTABLEITEM, STONE_WORDS - 1),                   --Just have to repeat WORD_REWARDTABLEITEM the chosen number of times, -1 because there's one of these reward code blocks already there.
		}
end

--ENCYCLOPEDIA SECTION
if ENCYCLO_WORDS > 0 and ENCYCLO_WORDS ~= STONE_WORDS then
	MBIN_CT[#MBIN_CT + 1] =                                                                --Need to edit entity file for Encylopedias to separate their rewards from Word Stones.
		{
			["MBIN_FS"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\WORDSTATION\ENTITIES\WORDSTATION.ENTITY.MBIN",
			["EXML_CT"] =
			{
				{
					["SKW"] = {"StoryUtilityOverrideData", "GcStoryUtilityOverride.xml"},
					["VCT"] = {{"Reward", "WORD_ENCYCLO"}},                                --Change Encyclopedias reward from target ID "WORD" to target ID "WORD_ENCYCLO".
				}
			}
		}
	
	REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] =                                        --Add new GENERICREWARDTABLEENTRY for Encylopedias to target.
		{
			["SKW"] = {"Id", "WORD"},
			["ADD_OPTION"] = "ADDafterSECTION",
			["ADD"] = [[<Property value="GcGenericRewardTableEntry.xml"><Property name="Id" value="WORD_ENCYCLO" /><Property name="List" value="GcRewardTableItemList.xml"><Property name="RewardChoice" value="GiveAll" /><Property name="OverrideZeroSeed" value="False" /><Property name="UseInventoryChoiceOverride" value="False" /><Property name="IncrementStat" value="" /><Property name="List"><Property value="GcRewardTableItem.xml"><Property name="PercentageChance" value="100" /><Property name="LabelID" value="" /><Property name="Reward" value="GcRewardTeachWord.xml"><Property name="Race" value="GcAlienRace.xml"><Property name="AlienRace" value="None" /></Property><Property name="UseCategory" value="False" /><Property name="Category" value="GcWordCategoryTableEnum.xml"><Property name="wordcategorytableEnum" value="MISC" /></Property><Property name="AmountMin" value="1" /><Property name="AmountMax" value="1" /></Property></Property></Property></Property></Property>]],
		}
	
	if ENCYCLO_WORDS > 1 then                                                              --Don't need to add this code if only 1 word
		REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] = 
			{
				["SKW"] = {"Id", "WORD_ENCYCLO"},
				["PKW"] = "GcRewardTableItem.xml",
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = string.rep(WORD_REWARDTABLEITEM, ENCYCLO_WORDS - 1),
			}
	end
end

--WORD SECTION
WORD_TABLE = {{"TRA_WORD","Traders"},{"EXP_WORD","Explorers"},{"WAR_WORD","Warriors"}}       --Table of WORD ID's and their matching values to replace "None" inside WORD_REWARDTABLEITEM to target correct race

if WORD_WORDS > 1 then
	for i=1,#WORD_TABLE do                                                                   --Loop through WORD ID's to target each.
		local WORD_CODE = string.gsub(WORD_REWARDTABLEITEM, "None", WORD_TABLE[i][2])        --Replace "None" with correct race.
		
		REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] = 
			{
				["SKW"] = {"Id", WORD_TABLE[i][1]},
				["PKW"] = "GcRewardTableItem.xml",
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = string.rep(WORD_CODE, WORD_WORDS - 1),                             --Add code formatted above to targeted ID.
			}
	end
end

--TEACHWORD & ATLAS SECTION
TEACHWORD_TABLE = {{"TEACHWORD_BUI","Builders"},{"TEACHWORD_TRA","Traders"},{"TEACHWORD_EXP","Explorers"},{"TEACHWORD_WAR","Warriors"},{"TEACHWORD_ATLAS","Atlas"}} --Table of TEACHWORD ID's and their matching values to replace "None" inside WORD_REWARDTABLEITEM to target correct race

for i=1,#TEACHWORD_TABLE do                                                                  --Same thing as WORD code.
	local ID = TEACHWORD_TABLE[i][1]
	local TEACHWORD_CODE = string.gsub(WORD_REWARDTABLEITEM, "None", TEACHWORD_TABLE[i][2])
	
	if ID ~= "TEACHWORD_ATLAS" then
		TEACHWORD_CODE = string.rep(TEACHWORD_CODE, TEACHWORD_WORDS - 1)
	else
		TEACHWORD_CODE = string.rep(TEACHWORD_CODE, ATLAS_WORDS - 1)
	end
	                                                                                        --Need 2 checks for whether we should be adding code based on settings since Atlas is separated.
	if (ID == "TEACHWORD_ATLAS" and ATLAS_WORDS > 1) or (ID ~= "TEACHWORD_ATLAS" and TEACHWORD_WORDS > 1) then
		REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] = 
			{
				["SKW"] = {"Id", ID},
				["PKW"] = "GcRewardTableItem.xml",
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = TEACHWORD_CODE,
			}
	end
end

--CHAT SECTION
CHAT_TABLE = {
	{{"TRA","Traders"},{"EXP","Explorers"},{"WAR","Warriors"},{"BUI","Builders"}},
	{{"DIRECT","DIRECTIONS"},{"HELP","HELP"},{"TRADE","TRADE"},{"LORE","LORE"},{"TECH","TECH"},{"THREAT","THREAT"},{"MISC","MISC"}}
}                                                                            --Table of needed Race and Topic IDs and their matching values to replace inside WORD_REWARDTABLEITEM.

if CHAT_WORDS > 1 then
	for i=1,#CHAT_TABLE[1] do
		for e=1, #CHAT_TABLE[2] do                                           --Need an extra loop to get both Race and Topic because these ID's use both.
			local ID = CHAT_TABLE[1][i][1].."_WORD_"..CHAT_TABLE[2][e][1]    --Build ID from race and topic.
			local CHAT_CODE = string.gsub(WORD_REWARDTABLEITEM, "None", CHAT_TABLE[1][i][2])
			
			REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] =                  --Enable "GiveAll", default is "TryEach" which means only 1 word would be given no matter how many reward code blocks we add. (this is because there was already 2 reward blocks, it would try the categorized one first and if it was out of words it would fallback to giving a miscellaneous word.)
				{
					["SKW"] = {"Id", ID},
					["VCT"] = {{"RewardChoice", "GiveAll"}},
				}
			if string.upper(KEEP_CATEGORY) == "Y" then                       --Check if user wants categorized words or random ones and if categorized
				CHAT_CODE = string.gsub(CHAT_CODE, "MISC", CHAT_TABLE[2][e][2]) --set category in reward block
				CHAT_CODE = string.gsub(CHAT_CODE, "False", "True")          --and set "UseCategory" to True
				
				REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] =              --and change random reward to categorized
					{
						["SKW"] = {"Id", ID, "wordcategorytableEnum", "MISC"},
						["VCT"] = {{"wordcategorytableEnum", CHAT_TABLE[2][e][2]}},
					}
			else
				REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] =              --Or change categorized reward to random.
					{
						["SKW"] = {"Id", ID, "wordcategorytableEnum", CHAT_TABLE[2][e][2]},
						["VCT"] = {{"wordcategorytableEnum", "MISC"}},
					}
			end
			if CHAT_WORDS > 2 then                                           --Don't need to add code if only 2 words because of "GiveAll"
				REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] =              --Add extra rewards. (already categorized or not above)
					{
						["SKW"] = {"Id", ID},
						["PKW"] = "GcRewardTableItem.xml",
						["ADD_OPTION"] = "ADDafterSECTION",
						["ADD"] = string.rep(CHAT_CODE, CHAT_WORDS - 2),     --This one is -2 because the chat entries already had one categorized block and one random block (in case the player was out words in the chosen category).
					}
			end
		end
	end
end

--AUTOPHAGE QUEST SECTION
--Original reward was set as a minimum and maximum, in which case you only get 1 pop-up
if AUTOPHAGE_QUESTS > 0 then
	REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] = 
		{ --Set original reward to 1
			["SKW"] = {{"Id","R_BUI_WORDS"}},
			["VCT"] = {{"AmountMin",1},{"AmountMax",1}},
		}
	REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] = 
		{ --Add additional rewards
			["SKW"] = {"Id","R_BUI_WORDS"},
			["PKW"] = "GcRewardTableItem.xml",
			["ADD_OPTION"] = "ADDafterSECTION",
			["ADD"] = string.rep(string.gsub(WORD_REWARDTABLEITEM, "None", "Builders"), AUTOPHAGE_QUESTS - 1),
		}
end

--ALL ATLAS ORBS SECTION
if string.upper(ALL_ATLAS_ORBS) == "Y" then
	MBIN_CT[#MBIN_CT + 1] = 
		{
			["MBIN_FS"]  = "MODELS\SPACE\ATLASSTATION\MODULARPARTS\INTERIOR\PATHORB\PATHORB_DUMMY\ENTITIES\ORBSTONE_DUMMY.ENTITY.MBIN",
			["EXML_CT"] =
			{
				{
					["SKW"] = {"StateID","GIVEWORD"},
					["PKW"] = "Sound",
					["ADD_OPTION"] = "ADDafterSECTION",
					["ADD"] = [[<Property value="GcRewardAction.xml"><Property name="Reward" value="TEACHWORD_ATLAS" /></Property>]],
				}
			}
		}
end

--SALVAGED DATA SECTION
if string.upper(INCLUDE_SALV_DATA) == "Y" then
	REWARDTABLE_EXML_CT[#REWARDTABLE_EXML_CT + 1] = 
		{ --UNDERGROUNDPROP.ENTITY.MBIN can give several different rewards depending on which quests the player has active so we have to edit each of the ones with Salvaged Data.
			["SKW"] = {{"Id","BP_SALVAGE","ID","BP_SALVAGE"},{"Id","S3_SALVAGE","ID","BP_SALVAGE"},{"Id","BP_SALVAGE_ONLY","ID","BP_SALVAGE"}},
			["VCT"] = {{"AmountMin",SALV_DATA_MIN},{"AmountMax",SALV_DATA_MAX}},
		}
end