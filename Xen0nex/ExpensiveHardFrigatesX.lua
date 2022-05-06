ModName = "Expensive Harder FrigatesX"
GameVersion = "3_87"

PercentChangeOfFrigateBeingPurchasable =			80			--60		Percentage of AI Frigates you encounter surrounding AI freigthers being purchasable
NumberOfFrigatesPurchasedToEndEasyExpeditions =		5			--3			I assume this is how mnay Friagtes you can own before the game stops offering you easy (1 star?) frigate missions
PercentChanceOfFrigateAdditionalSpawnedTrait = 		55			--55		Not sure what this does, maybe chance for extra trait on purchasable frigate in space, or maybe chance for new trait added on levelup for frigate?
FrigateTraitOfferChanceMult =						1			--Multiplier to apply to the ChanceOfBeingOffered for various traits, both positive & negative, which is usually 0, 5, or 15. Not sure if this affects initial traits on a Firgate or also the chance of gaining new traits on levelup

PercentChanceOfDamageOnFailedEvent = 				20			--20
MaxDiceRollWhenCalculatingExpeditionEventResult =	25			--25


MaxExpeditionStatValue = 							500			--150		This seems to limit the max amount of team of frigate's stats for an expedition that will "count" towards it's star ranking. IE, if you set this to less than 20, then your frigate teams will never be able to rate above 1 star, no matter how high their actual stats are.
																			--Also the contribution that your freighter with upgrades and / or consumable missions buff items will be capped such that they will never cause the expedition's stats to exceed this value. I.E. if you set this to 20, and have a single frigate with a stat of 15, the most your freighter with upgrades and / or sonsumable can add will be 5.

--NumberOfExpeditionChoices = 						7			--5			How many choices of expeditions given each day (UI seems limited to 5)
ExpeditionDifficultyVariance = 						5			--5
ExpeditionDifficultyIncreaseForEachAdditionalFrigate = 	1		--1		How much harder a given expedition gets the more frigates you add to the mission

--Adding these 1 or 2 lines allows Frigate missions to be up to  4 and/or 5 star ranking difficulty	(If enabling 4 & 5 star missions, remove the ]] at end of the line with "60")
	--The previous values in this list are 0,	15,	30,	45
AddedDifficultyModifier =[[
<Property value="60" />]]
--<Property value="75" />]]

--"Difficulty" mod for each star rankings of Frigate missions. 		(Listed in reverse order from how it appears in GCFLEETGLOBALS.GLOBAL.MBIN)
	--Increasing this can potentially make a fleet which completes a mission recieve less rewards from it, possibly depending on their stats? May increase the stat requirements to pass the various event checks?
	--The proportional increases to each of these should probably *roughly* match the proportional increases to ExpeditionRankBoundaries below, otherwise you may not see the full range of possible mission star rankings available to choose from.
	--Balanced Expeditions have difficulty & star ranking multiplied by 0.4, Non-Primary encounters on regular expeditions have difficulty multiplied by 0.25
FiveStarMissionDifficultyMod =	225				--N/A	(75)	Only matters if Five Star Missions enabled
FourStarMissionDifficultyMod =	180				--N/A	(60)	Only matters if Four Star Missions enabled
ThreeStarMissionDifficultyMod =	135				--45	[135]
TwoStarMissionDifficultyMod =	60				--30	[60]
OneStarMissionDifficultyMod =	30				--15	[22]
ZeroStarMissionDifficultyMod =	15				--0		[0]


--Multipliers to apply to the base stats for various Frigate cost parameters
FrigateCostChanges =
{
	{
		{
			"FrigateBaseCost",			"*"
		},
		{
			{
				"Combat",			6				--2000000
			},
			{
				"Exploration",		6				--2000000
			},
			{
				"Mining",			6				--2000000
			},
			{
				"Diplomacy",		6				--2000000
			},
			{
				"Support",			6				--2000000
			},
			{
				"Normandy",			1				--200000000
			},
			{
				"DeepSpace",		1				--200000000
			}
		}
	},
	{
		{
			"FrigateCostVariance",		"*"
		},
		{
			{
				"Combat",			6				--500000
			},
			{
				"Exploration",		6				--500000
			},
			{
				"Mining",			6				--500000
			},
			{
				"Diplomacy",		6				--500000
			},
			{
				"Support",			6				--500000
			},
			{
				"Normandy",			0				--0
			},
			{
				"DeepSpace",		0				--0
			}
		}
	},
	{
		{
			"FrigateCostMultiplier",	""			--These are replacers for the vanilla multipliers, not multipliers on top of them
		},
		{
			{
				"C",				1				--1
			},
			{
				"B",				1.5				--2
			},
			{
				"A",				2				--3.5
			},
			{
				"S",				2.5				--5
			}
		}
	}
}

FrigateRankChanges =
{
	{
		{
			"FrigateLevelVictoriesRequired"			--Controls how many missions a Frigate needs to go on in order to level up. I changed it so that the early ranks take a lot of missions to get through, but later ranks go quickly, to incentivize buying higher level Frigates
		},
		{	--Old value		New value		(Listed in reverse order from how it appears in GCFLEETGLOBALS.GLOBAL.MBIN)
			{55,			55},			--55
			{50,			52},			--50
			{45,			49},			--45
			{40,			46},			--40
			{35,			43},			--35
			{30,			40},			--30
			{25,			32},			--25
			{15,			24},			--15
			{8,				16},			--8
			{4,				8}				--4
		}
	},
	{
		{
			"ExpeditionRankBoundaries"				--Seems to be how many stats are needed to qualify a fleet of Frigates for different Star rankings. Also affects how much "difficulty" a mission needs to qualify for different Star rankings. However setting this very low also counter-intuitively makes all missions have low/no Stars???
		},								
		{	--Old value		New value		(Listed in reverse order from how it appears in GCFLEETGLOBALS.GLOBAL.MBIN)		
			{101,			303},			--101		5 stars?		[303]		Careful to keep this below whatever the MaxExpeditionStatValue is set to (150 normally), otherwise this will be unattainable
			{80,			160},			--80		4 stars?		[160]
			{50,			100},			--50		3 stars?		[100]
			{20,			40}				--20		2 stars?		[40]
		}
	}
}

--Nothing below this should need to be changed. All values can be edited in the sections above this line


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= "Makes Frigates more expensive to buy, and enables 4 star difficulty Frigate missions, and increases by 2~3x how many stat points needed to make a fleet of a particular Star ranking",
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"GCFLEETGLOBALS.GLOBAL.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			--This entry intentionally left blank, to be filled in by the FrigateCostChanges at the bottom of this script
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"GCFLEETGLOBALS.GLOBAL.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			--This entry intentionally left blank, to be filled in by the FrigateRankChanges at the bottom of this script
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"GCFLEETGLOBALS.GLOBAL.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"PercentChanceOfDamageOnFailedEvent", "Vector2f.xml"},
				["REPLACE_TYPE"] = "",
				["MATH_OPERATION"] = "", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"y",	PercentChanceOfDamageOnFailedEvent}
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = {""},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] = "", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentChangeOfFrigateBeingPurchasable",	PercentChangeOfFrigateBeingPurchasable},
					{"MaxExpeditionStatValue",	MaxExpeditionStatValue},
					{"PercentChanceOfFrigateAdditionalSpawnedTrait",	PercentChanceOfFrigateAdditionalSpawnedTrait},
					{"NumberOfFrigatesPurchasedToEndEasyExpeditions",	NumberOfFrigatesPurchasedToEndEasyExpeditions},
					{"MaxDiceRollWhenCalculatingExpeditionEventResult",	MaxDiceRollWhenCalculatingExpeditionEventResult},
					--{"NumberOfExpeditionChoices",	NumberOfExpeditionChoices},
					{"ExpeditionDifficultyVariance",	ExpeditionDifficultyVariance},
					{"ExpeditionDifficultyIncreaseForEachAdditionalFrigate",	ExpeditionDifficultyIncreaseForEachAdditionalFrigate}
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = {"DifficultyModifier"},
				["REPLACE_TYPE"] 		= "",
				["LINE_OFFSET"] = "+4",
				["ADD"] 				= AddedDifficultyModifier	
			},
			{
				["PRECEDING_KEY_WORDS"] = {"DifficultyModifier"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] = "", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"75",	FiveStarMissionDifficultyMod},
					{"60",	FourStarMissionDifficultyMod},
					{"45",	ThreeStarMissionDifficultyMod},
					{"30",	TwoStarMissionDifficultyMod},
					{"15",	OneStarMissionDifficultyMod},
					{"0",	ZeroStarMissionDifficultyMod}
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\FRIGATETRAITTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered"},
				["REPLACE_TYPE"] 		= "ALL",
				["MATH_OPERATION"] = "*", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"IGNORE",	FrigateTraitOfferChanceMult}
				}
			},
		}
	},
	{	--Corrects changes to the Normandy or Deepsace Frigate's traits, which have a default chance of 100
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\FRIGATETRAITTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered"},
				["REPLACE_TYPE"] 		= "ALL",
				["MATH_OPERATION"] = "", 
				["VALUE_MATCH"] 		= "0", 
				["VALUE_MATCH_OPTIONS"] = "~=",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Normandy",	"100"},
					{"DeepSpace",	"100"}
				}
			},
		}
	}
}}}}

local ChangesToFrigateCosts = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #FrigateCostChanges do
	local CostType = FrigateCostChanges[i][1][1]
	local Operator = FrigateCostChanges[i][1][2]
	local Costs = FrigateCostChanges[i][2]

	for j = 1, #Costs do
		local CostID = Costs[j][1]
		local CostMult = Costs[j][2]

			ChangesToFrigateCosts_temp =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= Operator,
				--["SPECIAL_KEY_WORDS"] = {"ID", WeaponID, "StatsType", StatID},
				["PRECEDING_KEY_WORDS"] = {CostType},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{CostID, CostMult}
				}
			}
			ChangesToFrigateCosts[#ChangesToFrigateCosts+1] = ChangesToFrigateCosts_temp
	end
end

local ChangesToFrigateRanks = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #FrigateRankChanges do
	local Name = FrigateRankChanges[i][1][1]
	local Values = FrigateRankChanges[i][2]

	for j = 1, #Values do
		local OldValue = Values[j][1]
		local NewValue = Values[j][2]

			ChangesToFrigateRanks_temp =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				--["SPECIAL_KEY_WORDS"] = {"ID", WeaponID, "StatsType", StatID},
				["PRECEDING_KEY_WORDS"] = {Name},
				["VALUE_MATCH"] 		= OldValue, 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{OldValue,	NewValue}
				}
			}
			ChangesToFrigateRanks[#ChangesToFrigateRanks+1] = ChangesToFrigateRanks_temp
	end
end