--|=======================================================================================--
--| USER SETTINGS
--|=======================================================================================--

-- Edit to your preference. Have not tested Maximums. Always edits 'METADATA\REALITY\TABLES\REWARDTABLE.MBIN'.
local _StoneWords        = 2   -- Word Stones.
local _EncycloWords      = 4   -- Encylopedias. Set to 0 or same as Word Stones to avoid editing 'MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\WORDSTATION\ENTITIES\WORDSTATION.ENTITY.MBIN'
local _ChatWords         = 3   -- NPC Dialogue Options. Applies to all races except for Altas. (Including Autophage/Builder)
local _WordWords         = 5   -- Not 100% certain where these are given but I've had it happen in the main quest from an NPC just after installing Artemis' translator. Only Traders, Explorers and Warriors have these so I believe these are Non-Autophage(Builder) quest rewards.
local _TeachwordWords    = 5   -- This applies to NPCs in Buildings, Ancient Ruins and Ancient Plaques. (Autophage also has this type of reward but I'm not yet sure where it comes from.)
local _BuilderQuestWords = 6   -- Original was 2 min - 3 max, but doing it that way you can only get 1 word pop-up so I made it a single number. Set to 0 to make no change.
local _AtlasWords        = 2   -- Atlas glowing orbs are linked to TEACHWORD_ATLAS but I made Atlas a separate option from the other races.
local _AllAtlasOrbs      = "Y" -- Add words to all Atlas Orbs? Y/N - Setting to N avoids editing 'MODELS\SPACE\ATLASSTATION\MODULARPARTS\INTERIOR\PATHORB\PATHORB_DUMMY\ENTITIES\ORBSTONE_DUMMY.ENTITY.MBIN'
local _KeepCategory      = "N" -- Keep category selected during dialogue with NPC? Y/N | Note: Will always give random word if set to "N" and always give categorized word if set to "Y". If set to "Y" you may receive fewer words when finishing the selected category and will receive 0 words if you select a category you already have all words in.
local _IncludeSalvData   = "Y" -- Also Boost Salvaged Data? Y/N
local _SalvDataMin       = 8
local _SalvDataMax       = 16

modNameSub = "Custom" --Subname in produced .pak

--|=======================================================================================--
--| SCRIPT INFO
--|=======================================================================================--

author = "Umaroth"
luaAuthor = "Umaroth"
modName = "WordRewardsEnhanced"
description = "Increases the number of words learned from nearly all sources. Fully configurable. Also optionally adds word rewards to all Atlas Orbs as well as increasing Salvaged Data rewards."
gameVersion = "5.10.0"
modVersion = "1.6"
maintenance = author

--|=======================================================================================--
--| CODE
--|=======================================================================================--

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]    = string.format("%s_%s_v%s_nms%s.pak", modName, modNameSub, modVersion, gameVersion),
	["MOD_DESCRIPTION"] = description,
	["MOD_AUTHOR"]      = author,
	["LUA_AUTHOR"]      = luaAuthor,
	["MAINTENANCE"]     = maintenance,
	["NMS_VERSION"]     = gameVersion,
    -- Only need the structure here. Code below will add all necessary changes based on user settings.
    ["MODIFICATIONS"] = {{["MBIN_CT"]={{["MBIN_FS"]="METADATA\REALITY\TABLES\REWARDTABLE.MBIN",["EXML_CT"]={}}}}}
}

MBIN_CT = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CT"]
RewardTable_EXML_CT = MBIN_CT[1]["EXML_CT"]

--This code block will be repeated once for each additional word with edits to race and category as needed
RewardTableItem_Word = '<Property value="GcRewardTableItem.xml"><Property name="PercentageChance" value="100" /><Property name="LabelID" value="" /><Property name="Reward" value="GcRewardTeachWord.xml"><Property name="Race" value="GcAlienRace.xml"><Property name="AlienRace" value="None" /></Property><Property name="UseCategory" value="False" /><Property name="Category" value="GcWordCategoryTableEnum.xml"><Property name="wordcategorytableEnum" value="MISC" /></Property><Property name="AmountMin" value="1" /><Property name="AmountMax" value="1" /></Property></Property>'

--| Stones
--|=======================================================================================--
if _StoneWords > 1 then
	table.insert(RewardTable_EXML_CT,
	{
		["SKW"] = {"Id", "WORD"},
		["PKW"] = "GcRewardTableItem.xml",
		["ADD_OPTION"] = "ADDafterSECTION",
		["ADD"] = string.rep(RewardTableItem_Word, _StoneWords - 1),
	})
end

--| Encyclopedias
--|=======================================================================================--
if _EncycloWords > 0 and _EncycloWords ~= _StoneWords then
	table.insert(MBIN_CT, --Change Encyclopedia's target reward from "WORD" to "WORD_ENCYCLO"
	{
		["MBIN_FS"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\WORDSTATION\ENTITIES\WORDSTATION.ENTITY.MBIN",
		["EXML_CT"] =
		{
			{
				["SKW"] = {"StoryUtilityOverrideData", "GcStoryUtilityOverride.xml"},
				["VCT"] = {{"Reward", "WORD_ENCYCLO"}},
			}
		}
	})
	
	table.insert(RewardTable_EXML_CT, --Add Encyclopedia's new reward to the RewardTable
	{
		["SKW"] = {"Id", "WORD"},
		["ADD_OPTION"] = "ADDafterSECTION",
		["ADD"] = '<Property value="GcGenericRewardTableEntry.xml"><Property name="Id" value="WORD_ENCYCLO" /><Property name="List" value="GcRewardTableItemList.xml"><Property name="RewardChoice" value="GiveAll" /><Property name="OverrideZeroSeed" value="False" /><Property name="UseInventoryChoiceOverride" value="False" /><Property name="IncrementStat" value="" /><Property name="List">'..RewardTableItem_Word..'</Property></Property></Property>',
	})
	
	if _EncycloWords > 1 then
		table.insert(RewardTable_EXML_CT, --Add additional rewards to match user settings
		{
			["SKW"] = {"Id", "WORD_ENCYCLO"},
			["PKW"] = "GcRewardTableItem.xml",
			["ADD_OPTION"] = "ADDafterSECTION",
			["ADD"] = string.rep(RewardTableItem_Word, _EncycloWords - 1),
		})
	end
end

--| "WORD" words
--|=======================================================================================--
Word_Table = {{"TRA_WORD","Traders"},{"EXP_WORD","Explorers"},{"WAR_WORD","Warriors"}}       --Table of WORD ID's and their matching values to replace "None" inside RewardTableItem_Word to target correct race

if _WordWords > 1 then
	for i=1,#Word_Table do                                                                   --Loop through WORD ID's to target each.
		local Word_Code = string.gsub(RewardTableItem_Word, "None", Word_Table[i][2])        --Replace "None" with correct race.
		
		table.insert(RewardTable_EXML_CT,
		{
			["SKW"] = {"Id", Word_Table[i][1]},
			["PKW"] = "GcRewardTableItem.xml",
			["ADD_OPTION"] = "ADDafterSECTION",
			["ADD"] = string.rep(Word_Code, _WordWords - 1),                             --Add code formatted above to targeted ID.
		})
	end
end

--| "TEACHWORD" and Atlas words
--|=======================================================================================--
Teachword_Table = {{"TEACHWORD_BUI","Builders"},{"TEACHWORD_TRA","Traders"},{"TEACHWORD_EXP","Explorers"},{"TEACHWORD_WAR","Warriors"},{"TEACHWORD_ATLAS","Atlas"}} --Table of TEACHWORD ID's and their matching values to replace "None" inside RewardTableItem_Word to target correct race

for i=1,#Teachword_Table do                                                                  --Same thing as WORD code.
	local ID = Teachword_Table[i][1]
	local Teachword_Code = string.gsub(RewardTableItem_Word, "None", Teachword_Table[i][2])
	
	if ID ~= "TEACHWORD_ATLAS" then
		Teachword_Code = string.rep(Teachword_Code, _TeachwordWords - 1)
	else
		Teachword_Code = string.rep(Teachword_Code, _AtlasWords - 1)
	end
	                                                                                        --Need 2 checks for whether we should be adding code based on settings since Atlas is separated.
	if (ID == "TEACHWORD_ATLAS" and _AtlasWords > 1) or (ID ~= "TEACHWORD_ATLAS" and _TeachwordWords > 1) then
		table.insert(RewardTable_EXML_CT,
		{
			["SKW"] = {"Id", ID},
			["PKW"] = "GcRewardTableItem.xml",
			["ADD_OPTION"] = "ADDafterSECTION",
			["ADD"] = Teachword_Code,
		})
	end
end

--| Chat/Dialogue words
--|=======================================================================================--
Chat_Table = { --Table of needed Race and Topic IDs and their matching values to replace inside RewardTableItem_Word.
	{{"TRA","Traders"},{"EXP","Explorers"},{"WAR","Warriors"},{"BUI","Builders"}},
	{{"DIRECT","DIRECTIONS"},{"HELP","HELP"},{"TRADE","TRADE"},{"LORE","LORE"},{"TECH","TECH"},{"THREAT","THREAT"},{"MISC","MISC"}}
}

if _ChatWords > 1 then
	for i=1,#Chat_Table[1] do
		for e=1, #Chat_Table[2] do
			local ID = Chat_Table[1][i][1].."_WORD_"..Chat_Table[2][e][1]    --Build ID from race and topic.
			local Chat_Code = string.gsub(RewardTableItem_Word, "None", Chat_Table[1][i][2])
			
			table.insert(RewardTable_EXML_CT, --Enable "GiveAll", default is "TryEach" which means only 1 word would be given no matter how many reward code blocks we add. (this is because there was already 2 reward blocks, it would try the categorized one first and if it was out of words it would fallback to giving a miscellaneous word.)
			{
				["SKW"] = {"Id", ID},
				["VCT"] = {{"RewardChoice", "GiveAll"}},
			})
			if string.upper(_KeepCategory) == "Y" then                          --Check if user wants categorized words or random ones and if categorized
				Chat_Code = string.gsub(Chat_Code, "MISC", Chat_Table[2][e][2]) --set category in reward block
				Chat_Code = string.gsub(Chat_Code, "False", "True")             --and set "UseCategory" to True
				table.insert(RewardTable_EXML_CT,                               --and change random reward to categorized
				{
					["SKW"] = {"Id", ID, "wordcategorytableEnum", "MISC"},
					["VCT"] = {{"wordcategorytableEnum", Chat_Table[2][e][2]}},
				})
			else
				table.insert(RewardTable_EXML_CT,                               --Or change categorized reward to random.
				{
					["SKW"] = {"Id", ID, "wordcategorytableEnum", Chat_Table[2][e][2]},
					["VCT"] = {{"wordcategorytableEnum", "MISC"}},
				})
			end
			if _ChatWords > 2 then                                              --Don't need to add rewards if only 2 words because of "GiveAll"
				table.insert(RewardTable_EXML_CT,                               --Add extra rewards. (already categorized or not above)
				{
					["SKW"] = {"Id", ID},
					["PKW"] = "GcRewardTableItem.xml",
					["ADD_OPTION"] = "ADDafterSECTION",
					["ADD"] = string.rep(Chat_Code, _ChatWords - 2),     --Minus 2 rewards here because the chat entries already had one categorized reward and one random reward (in case the player was out words in the chosen category).
				})
			end
		end
	end
end

--| Autophage Quest Rewards
--|=======================================================================================--
--Original reward was set as a minimum and maximum, in which case player only gets 1 pop-up. Changed to 1min/1max + separate rewards so the player gets a pop-up for each word.
if _BuilderQuestWords > 0 then
	table.insert(RewardTable_EXML_CT,
	{   --Set original reward to 1
		["SKW"] = {{"Id","R_BUI_WORDS"}},
		["VCT"] = {{"AmountMin",1},{"AmountMax",1}},
	})
	table.insert(RewardTable_EXML_CT,
	{   --Add additional rewards
		["SKW"] = {"Id","R_BUI_WORDS"},
		["PKW"] = "GcRewardTableItem.xml",
		["ADD_OPTION"] = "ADDafterSECTION",
		["ADD"] = string.rep(string.gsub(RewardTableItem_Word, "None", "Builders"), _BuilderQuestWords - 1),
	})
end

--| All Atlas Orbs
--|=======================================================================================--
if string.upper(_AllAtlasOrbs) == "Y" then
	table.insert(MBIN_CT,
	{
		["MBIN_FS"]  = "MODELS\SPACE\ATLASSTATION\MODULARPARTS\INTERIOR\PATHORB\PATHORB_DUMMY\ENTITIES\ORBSTONE_DUMMY.ENTITY.MBIN",
		["EXML_CT"] =
		{
			{
				["SKW"] = {"StateID","GIVEWORD"},
				["PKW"] = "Sound",
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = '<Property value="GcRewardAction.xml"><Property name="Reward" value="TEACHWORD_ATLAS" /></Property>',
			}
		}
	})
end

--| Salvaged Data
--|=======================================================================================--
if string.upper(_IncludeSalvData) == "Y" then
	table.insert(RewardTable_EXML_CT,
	{   --UNDERGROUNDPROP.ENTITY.MBIN can give several different rewards depending on which quests the player has active so we have to edit each of the ones with Salvaged Data.
		["SKW"] = {{"Id","BP_SALVAGE","ID","BP_SALVAGE"},{"Id","S3_SALVAGE","ID","BP_SALVAGE"},{"Id","BP_SALVAGE_ONLY","ID","BP_SALVAGE"}},
		["VCT"] = {{"AmountMin",_SalvDataMin},{"AmountMax",_SalvDataMax}},
	})
end