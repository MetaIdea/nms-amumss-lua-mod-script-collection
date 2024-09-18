ModName = "PTSd Fishing Tweaks"
GameVersion = "5_11"
Description = "Changes certain aspects of fishing & baits."

Path1 = "GCFISHINGGLOBALS.GLOBAL.MBIN"
Path2 = "METADATA\REALITY\TABLES\BAITDATATABLE.MBIN"
--Path3 = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/FISHINGMODULE/ENTITIES/DATA.ENTITY.MBIN"
--Path4 = "METADATA\REALITY\TABLES\FISHDATATABLE.MBIN"
--Path5 = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"

--Nanite rewards for releasing fish handled under FishReleaseChanges in "PTSd Rewards Remixer.lua"
--Units value for selling raw & cooked fish handled in "PTSd Resource + Product + Construction Rebalance.lua"

MinWaitTime =	2										--6.5	Presumably the minimum time in seconds until a fish first nibbles on the line
MaxWaitTime =	9.5										--13.5	Presumably the minimum time in seconds until a fish first nibbles on the line
FishCatchAfterBiteTime=	1								--2		Seems to be how long in seconds the window of time you have to catch the fish after it bites, which is adjusted by the in-game Fishing Timing setting (IE this is the duration that the line is colored green)

--Chase Times, presumably how long it takes to reel it in after it bites
CTSmall =		0.5										--1.66
CTMedium =		1										--3
CTLarge =		1.5										--5
CTExtraLarge =	2										--6.5

SeaHarvesterAverageCatchTimeSeconds =	7200			--3600	The average time in seconds until an Automated Trap catches another fish

--Controls the stacksize of how many additional fish can be caught in the same slot in Automated Traps
ATJunk =		5										--10		Automated Traps appear to never catch any Junk?
ATCommon =		10										--20
ATRare =		3										--6
ATEpic =		1										--1
ATLegendary =	1										--1

--Sets the base weights for fish quality chances (including in Automated Traps), which are then affected by any baits used 
BWJunk =		20										--20
BWCommon =		57										--57
BWRare =		25										--25
BWEpic =		3										--3
BWLegendary =	1										--1

--Changes max possible effects of generic bait (using foods, raw fish, etc.) Presumably this value is multiplied by the base weighting for size/rarity and then added to it. IE x*(1+y) where x is the base weighting and y is the generic bait boost value
	--Max possible bonuses for fish Rarity/Quality
GBJunk =		-1										-- -1
GBCommon =		-0.5									-- -0.1
GBRare =		0.5										--1.5
GBEpic =		4										--2
GBLegendary =	3										--2.5
	--Max possible bonuses for fish size
GBSmall =		-0.5									-- -0.5
GBMedium =		1.5										--1.5
GBLarge =		2										--2
GBExtraLarge =	2.5										--2.5

--Changes effects of specialised baits. Presumably the base weights for size/rarity are directly multiplied by these values IE x*y 
SpecBaitChanges =
{
	{--Mealworms		SizeBoosts for Small, Medium, Large, ExtraLarge
		"FISHBAIT_1",	0.9,	1.3,	1.2,	1.1,	--1,	1,		1,		1,
--RarityBoosts for Junk, Common, Rare, Epic, Legendary
				0,		1.2,	2,		2.2,	1.5		--0,	0.9,	2,		1.5,	1.2
	},
	{--Spicy Chum
		"FISHBAIT_2",	0.8,	1.4,	1.3,	1.2,	--1,	1,		1,		1,
				0,		0.3,	2,		5,		2.5		--0,	0.35,	1.1,	5,		1.5
	},
	{--Bionic Lure
		"FISHBAIT_3",	0.7,	1.2,	1.4,	1.3,	--1,	1,		1,		1,
				0,		0.05,	0.4,	5.5,	2.6		--0,	0.1,	0.66,	5,		2.5
	},
	{--Dangling Orb
		"FISHBAIT_DAY",	0.8,	1.4,	1.3,	1.2,	--1,	1,		1,		1,
				0,		0.4,	2,		4.5,	2.25	--0,	1,		1.3,	2,		1.5
	},
	{--Shadow Lure
		"FISHBAIT_NIGHT",0.8,	1.4,	1.3,	1.2,	--1,	1,		1,		1,
				0,		0.4,	2,		4.5,	2.25	--0,	1,		1.3,	2,		1.5
	},
	{--Magpulse Lure
		"FISHBAIT_STORM",0.8,	1.4,	1.3,	1.2,	--1,	1,		1,		1,
				0,		0.4,	2,		4.5,	2.25	--0,	1,		1.3,	2,		1.5
	},
}

--Changes the special weather/time boosts for certain specialized lures
DanglingOrbDayBoost =			12						--8
ShadowLureNightBoost =			12						--8
MagpulseLureStormBoost =		12						--5.2

--Changes to how depth affects fish size chances (Automated Traps appear to ignore depth and can randomly catch any size fish)
	--Final size weighting is the BaseWeight + DepthModifier, however based on the depth of the water where you cast / place a trap, DepthModifier is at 0% strength above MinDepth and 100% strength below MaxDepth, and scales between 0% and 100% strength when between the two
FishSizeDepthChanges =
{
	{--Size				BaseWeight	MinDepth	MaxDepth	DepthModifier
		"Small",		50,			0,			1,			1,				--50,			0,			1,			1,
	},
	{
		"Medium",		10,			5,			25,			55,				--10,			5,			15,			40,
	},
	{
		"Large",		1,			30,			65,			100,			--1,			30,			65,			80,
	},
	{
		"ExtraLarge",	0,			45,			90,			110,			--0,			45,			90,			100,
	},
}

--AddFishTrapFuel =
--[[<Property value="GcMaintenanceElement.xml">
              <Property name="ItemGroupOverride" value="GcMaintenanceElementGroups.xml">
                <Property name="MaintenanceGroup" value="Custom" />
              </Property>
              <Property name="Type" value="GcInventoryType.xml">
                <Property name="InventoryType" value="Technology" />
              </Property>
              <Property name="Id" value="MAINT_FUEL1" />
              <Property name="MinRandAmount" value="0" />
              <Property name="MaxRandAmount" value="0" />
              <Property name="MaxCapacity" value="10" />
              <Property name="AmountEmptyTimePeriod" value="300" />
              <Property name="HideWhenComplete" value="False" />
              <Property name="BlockDiscardWhenAllowedForParent" value="False" />
              <Property name="LocatorOverride" value="" />
              <Property name="UpdateType" value="UpdatesAlways" />
              <Property name="DamagedAfterTimePeriodMin" value="0" />
              <Property name="DamagedAfterTimePeriodMax" value="0" />
              <Property name="DamageStatus" value="Repaired" />
              <Property name="CompletionRequirement" value="AnyChargeAndRepaired" />
            </Property>]]

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "Xen0nex",
	["NMS_VERSION"]			= GameVersion,
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= {Path1},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"MinWaitTime", MinWaitTime},
								{"MaxWaitTime", MaxWaitTime},
								{"FishCatchAfterBiteTime", FishCatchAfterBiteTime},
								{"SeaHarvesterAverageCatchTimeSeconds", SeaHarvesterAverageCatchTimeSeconds},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ChaseTimes"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Small", CTSmall},
								{"Medium", CTMedium},
								{"Large", CTLarge},
								{"ExtraLarge", CTExtraLarge},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BaitRarityBoostTotalScoreQualityScaling"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Junk", GBJunk},
								{"Common", GBCommon},
								{"Rare", GBRare},
								{"Epic", GBEpic},
								{"Legendary", GBLegendary},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BaitSizeBoostTotalScoreQualityScaling"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Small", GBSmall},
								{"Medium", GBMedium},
								{"Large", GBLarge},
								{"ExtraLarge", GBExtraLarge},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"QualityWeights"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Junk", BWJunk},
								{"Common", BWCommon},
								{"Rare", BWRare},
								{"Epic", BWEpic},
								{"Legendary", BWLegendary},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"MaxSeaHarvesterCaughtFish"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Junk", ATJunk},
								{"Common", ATCommon},
								{"Rare", ATRare},
								{"Epic", ATEpic},
								{"Legendary", ATLegendary},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {Path2},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ProductID", "FISHBAIT_DAY"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"DayTimeBoost", DanglingOrbDayBoost}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ProductID", "FISHBAIT_NIGHT"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"NightTimeBoost", ShadowLureNightBoost}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ProductID", "FISHBAIT_STORM"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"StormBoost", MagpulseLureStormBoost}
							}
						},
					}
				},
				--[[
				{
					["MBIN_FILE_SOURCE"] 	= {Path3},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcMaintenanceElement.xml"},
                            ["ADD_OPTION"]  = "ADDbeforeSECTION",
							["ADD"] = AddFishTrapFuel
                        },
					}
				},
				]]
				--[[
				{
					["MBIN_FILE_SOURCE"] 	= {Path4},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"x", x},
							}
						},
					}
				},
				]]
				--[[
				{
					["MBIN_FILE_SOURCE"] 	= {Path5},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"x", x},
							}
						},
					}
				},
				]]
			}
		}
	}
}

local ChangesToFishGlobals = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #FishSizeDepthChanges do
	local Size = FishSizeDepthChanges[i][1]
	local BaseWeight = FishSizeDepthChanges[i][2]
	local DepthRangeMin = FishSizeDepthChanges[i][3]
	local DepthRangeMax = FishSizeDepthChanges[i][4]
	local DepthModifier = FishSizeDepthChanges[i][5]

			ChangesToFishGlobals[#ChangesToFishGlobals+1] =
			{
				["SPECIAL_KEY_WORDS"] = {Size, "GcFishSizeProbability.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BaseWeight", BaseWeight},
					{"DepthRangeMin", DepthRangeMin},
					{"DepthRangeMax", DepthRangeMax},
					{"DepthModifier", DepthModifier},
				}
			}
end

local ChangesToBaitData = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #SpecBaitChanges do
	local BaitID = SpecBaitChanges[i][1]
	local Small = SpecBaitChanges[i][2]
	local Medium = SpecBaitChanges[i][3]
	local Large = SpecBaitChanges[i][4]
	local ExtraLarge = SpecBaitChanges[i][5]
	local Junk = SpecBaitChanges[i][6]
	local Common = SpecBaitChanges[i][7]
	local Rare = SpecBaitChanges[i][8]
	local Epic = SpecBaitChanges[i][9]
	local Legendary = SpecBaitChanges[i][10]

			ChangesToBaitData[#ChangesToBaitData+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ProductID", BaitID},
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Small", Small},
					{"Medium", Medium},
					{"Large", Large},
					{"ExtraLarge", ExtraLarge},
					{"Junk", Junk},
					{"Common", Common},
					{"Rare", Rare},
					{"Epic", Epic},
					{"Legendary", Legendary},
				}
			}
end