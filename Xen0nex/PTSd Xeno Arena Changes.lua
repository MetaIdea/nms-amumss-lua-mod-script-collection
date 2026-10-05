ModName = "PTSd Xeno Arena Changes"
GameVersion = "7_05"
Description = "Changes the AI difficulty, XP multipliers, and minimum level for certain types of Xeno Arena Creature Battles."

--For adjusting the Difficulty & XP mult of XP awarded from different Xeno Arena Creature Battles
	--(nanite & Retroviral Pellet rewards adjusted in "PTSd Rewards Remixer.lua" with LowXenoArenaReward, etc.)
	--NOTE: Changing the Difficulty or MinLevel will apply to all battles using the same Opponent Preset, not just that specific Battle
	--A MinLevel of "-1" means the minimum level will always lower to match your team's level
BattleConfigChanges =
{
	{
		{--Battle type					Opponent Preset
			"PB_GAME_TUTORIAL",			"PB_AI_TUTORIAL_NEXUS",							--Tutorial with Oceanus?
		},
		{--Difficulty	MinLevel	XP mult		Reward Win				Reward Loss
			"Easy",		"-1",		0.3,		"R_PB_TUT_W",			"R_PB_TUT_L"			--"Easy",	"-1",	0.2,	10~20 nanites
		}
	},
	{
		{--Battle type					Opponent Preset
			"PB_GAME_PVE_NEXUS",		"PB_AI_PVE_NEXUS",								--Training vs. Oceanus?
		},
		{--Difficulty	MinLevel	XP mult		Reward Win				Reward Loss
			"Easy",		"-1",		1.2,		"R_PB_PVE_EASY_W",		"R_PB_PVE_EASY_L"		--"Easy",	"-1",	1,	5~10 nanites + 100% chance for Challenger's Invitation
		}
	},
	{
		{--Battle type					Opponent Preset
			"PB_GAME_PLANET_STANDARD",	"PB_AI_PLANET_STANDARD",						--Opponents on planets e.g. Trade Outposts?	(Challenger)
		},
		{--Difficulty	MinLevel	XP mult		Reward Win				Reward Loss
			"Medium",	"-1",		1.33,		"R_PB_PVE_PLAC_W",		"R_PB_PVE_PLAC_L"		--"Medium",	"-1",	1,	12~20 nanites + 3% chance for Retroviral Pellet
		}
	},
	{
		{--Battle type					Opponent Preset
			"PB_GAME_SETTLEMENT",		"PB_AI_SETTLEMENT",								--Regular opponents in Settlements on planets?
		},
		{--Difficulty	MinLevel	XP mult		Reward Win				Reward Loss
			"Medium",	"-1",		1.33,		"R_PB_PVE_EZ_NI",		"R_PB_PVE_EASY_L"		--"Medium",	"-1",	1,	5~10 nanites
		}
	},
	{
		{--Battle type					Opponent Preset
			"PB_GAME_LARGEBUILDING",	"PB_AI_COL_ARCHIVE",							--Opponents in Colossal Archives?	(Challenger)	(Vanilla uses "PB_AI_PLANET_STANDARD")
		},
		{--Difficulty	MinLevel	XP mult		Reward Win				Reward Loss
			"Medium",	"-1",		1.33,		"R_PB_PVE_PLAC_W",		"R_PB_PVE_PLAC_L"		--"Medium",	"-1",	1,	10~20 nanites + 3% chance for Retroviral Pellet		(Vanilla uses "R_PB_PVE_HARD_W",	"R_PB_PVE_HARD_L")
		}
	},
	{
		{--Battle type					Opponent Preset
			"PB_GAME_SYSTEM_STANDARD",	"PB_AI_SYSTEM_STANDARD",						--Regular opponents on Space Stations?
		},
		{--Difficulty	MinLevel	XP mult		Reward Win				Reward Loss
			"Medium",	"4",		1.67,		"R_PB_PVE_SYSS_W",		"R_PB_PVE_SYSS_L"		--"Easy",	"-1",	1,	15~30 nanites + 8% chance for Retroviral Pellet
		}
	},
	{
		{--Battle type					Opponent Preset
			"PB_GAME_PIRATESTATION",	"PB_AI_PIRATESTATION",							--Opponents in Outlaw Stations?		(Challenger)
		},
		{--Difficulty	MinLevel	XP mult		Reward Win				Reward Loss
			"Medium",	"4",		1.67,		"R_PB_PVE_HARD_W",		"R_PB_PVE_HARD_L"		--"Medium",	"-1",	1,	10~20 nanites + 3% chance for Retroviral Pellet
		}
	},
	{
		{--Battle type					Opponent Preset
			"PB_GAME_SYSTEM_CHAMPION",	"PB_AI_SYSTEM_CHAMPION",						--System Champion
		},
		{--Difficulty	MinLevel	XP mult		Reward Win				Reward Loss
			"Hard",		"8",		2.2,		"R_PB_PVE_SYSC_W",		"R_PB_PVE_SYSC_L"		--"Hard",	"-1",	1,	30~50 nanites + 60% chance for Retroviral Pellet + 100% chance for Challenger's Invitation
		}
	},
	{
		{--Battle type					Opponent Preset
			"PB_GAME_DAILY_NEXUS",		"PB_AI_DAILY_NEXUS_1",							--Daily battle vs. Oceanus
		},
		{--Difficulty	MinLevel	XP mult		Reward Win				Reward Loss
			"Hard",		"30",		2.2,		"R_PB_D_NEXUS_W",		"R_PB_D_NEXUS_L"		--"Hard",	"30",	1,	175~200 nanites + 75% chance for Retroviral Pellet
		}
	},
}

--NOTE:
--As of NMS v6.32, the game no longer recognizes any edits to GCGAMETABLEGLOBALS.MBIN.
--So, the the following changes no longer actually have any effect in-game:

--Changes the scaling applied to enemy teams for all difficulty levels
EnemyDifficultyScaling =
{
	{--Difficulty			Min			Max
		"Easy",				0.85,		0.95,			--0.8,		0.9
	},
	{
		"Medium",			1.035,		1.265,			--0.9,		1.1
	},
	{
		"Hard",				1.375,		1.625,			--1.1,		1.3
	},
}

XPReqMult =					1				--1			Applies a multiplier for the XP required to level-up at all levels

--Adjusts the amount of XP required to level-up for each level individually
XPGapPerLevel =
{	--New XP				Vanilla XP
	{350*XPReqMult,			"350"},			--Level 1
	{350*XPReqMult,			"350"},			--Level 2
	{350*XPReqMult,			"400"},			--Level 3
	{350*XPReqMult,			"450"},			--Level 4
	{375*XPReqMult,			"500"},			--Level 5
	{375*XPReqMult,			"500"},			--Level 6
	{375*XPReqMult,			"500"},			--Level 7
	{375*XPReqMult,			"500"},			--Level 8
	{400*XPReqMult,			"500"},			--Level 9
	{400*XPReqMult,			"500"},			--Level 10
	{400*XPReqMult,			"500"},			--Level 11
	{400*XPReqMult,			"650"},			--Level 12
	{425*XPReqMult,			"650"},			--Level 13
	{425*XPReqMult,			"650"},			--Level 14
	{425*XPReqMult,			"650"},			--Level 15
	{425*XPReqMult,			"650"},			--Level 16
	{450*XPReqMult,			"650"},			--Level 17
	{450*XPReqMult,			"650"},			--Level 18
	{450*XPReqMult,			"800"},			--Level 19
	{450*XPReqMult,			"800"},			--Level 20
	{475*XPReqMult,			"800"},			--Level 21
	{475*XPReqMult,			"800"},			--Level 22
	{475*XPReqMult,			"800"},			--Level 23
	{475*XPReqMult,			"800"},			--Level 24
	{500*XPReqMult,			"800"},			--Level 25
	{500*XPReqMult,			"950"},			--Level 26
	{500*XPReqMult,			"950"},			--Level 27
	{500*XPReqMult,			"950"},			--Level 28
	{550*XPReqMult,			"1250"},		--Level 29
	{600*XPReqMult,			"1250"},		--Level 30
}

--Changes stat distributions for creatures
HlthC =						"375"		--425		minimum Base Health at Class C
LvlHlthC =					"188"		--175		increase to Health on levelup at Class C
SpdC =						"48"		--20		minimum Base Speed at Class C
LvlSpdC =					"18"		--13		increase to Speed on levelup at Class C
CmbtPC =					"97"		--100		minimum Base Combat Potential at Class C
LvlCmbtC =					"41"		--41		increase to Combat Potential on levelup at Class C

MaxImp =					1.2			--Varies	How much larger the maximum Base value is compared to the Base min value
ClsImp =					1.2			--Varies	How much larger the minimum/maximum Base or Levelup increase value is at the next higher Class

ClsImpB =		ClsImp					--Varies	How much larger the minimum/maximum Base or Levelup increase value is specifically going from Class C to B
ClsImpA =		ClsImp*ClsImp			--Varies	How much larger the minimum/maximum Base or Levelup increase value is specifically going from Class B to A
ClsImpS =		ClsImp*ClsImp*ClsImp	--Varies	How much larger the minimum/maximum Base or Levelup increase value is specifically going from Class A to S

	--NOTE: Changing the Class Chance will cause your creature species' Class to no longer match vanilla players, i.e. If you & a vanilla plyer look at the same species it will have different Class stats for each of you
CreatureClassStats =
{
	{
		{
			"MaxHealth",	--Stat	
		},
		{
			{--Class	Base min		Base max				Gain on levelup		Chance
				"C",	HlthC,			HlthC*MaxImp,			LvlHlthC,			30		--"425",	"525",	"175",		30
			},
			{
				"B",	HlthC*ClsImpB,	HlthC*MaxImp*ClsImpB,	LvlHlthC*ClsImpB,	30		--"475",	"625",	"225",		30
			},
			{
				"A",	HlthC*ClsImpA,	HlthC*MaxImp*ClsImpA,	LvlHlthC*ClsImpA,	25		--"550",	"650",	"275",		25
			},
			{
				"S",	HlthC*ClsImpS,	HlthC*MaxImp*ClsImpS,	LvlHlthC*ClsImpS,	15		--"575",	"725",	"325",		15
			},
		}
	},
	{
		{
			"Speed",	--Stat	
		},
		{
			{--Class	Base min		Base max				Gain on levelup		Chance
				"C",	SpdC,			SpdC*MaxImp,			LvlSpdC,			30		--"20",		"50",	"13",		30
			},
			{
				"B",	SpdC*ClsImpB,	SpdC*MaxImp*ClsImpB,	LvlSpdC*ClsImpB,	30		--"40",		"60",	"22",		30
			},
			{
				"A",	SpdC*ClsImpA,	SpdC*MaxImp*ClsImpA,	LvlSpdC*ClsImpA,	25		--"50",		"80",	"25",		25
			},
			{
				"S",	SpdC*ClsImpS,	SpdC*MaxImp*ClsImpS,	LvlSpdC*ClsImpS,	15		--"60",		"100",	"30",		15
			},
		}
	},
	{
		{
			"CombatPotential",	--Stat	
		},
		{
			{--Class	Base min		Base max				Gain on levelup		Chance
				"C",	CmbtPC,			CmbtPC*MaxImp,			LvlCmbtC,			30		--"100",	"120",	"41",		30
			},
			{
				"B",	CmbtPC*ClsImpB,	CmbtPC*MaxImp*ClsImpB,	LvlCmbtC*ClsImpB,	30		--"120",	"140",	"48",		30
			},
			{
				"A",	CmbtPC*ClsImpA,	CmbtPC*MaxImp*ClsImpA,	LvlCmbtC*ClsImpA,	25		--"160",	"180",	"63",		25
			},
			{
				"S",	CmbtPC*ClsImpS,	CmbtPC*MaxImp*ClsImpS,	LvlCmbtC*ClsImpS,	15		--"180",	"200",	"70",		15
			},
		}
	},
}

NewColArchivePlayerConfig =
[[<Property name="AIPlayerConfigs" value="GcGameTableAIPlayerConfig" _id="PB_AI_COL_ARCHIVE">
			<Property name="Id" value="PB_AI_COL_ARCHIVE" />
			<Property name="Difficulty" value="GcGameTableAIDifficulty">
				<Property name="GameTableAIDifficulty" value="Medium" />
			</Property>
			<Property name="GameConfig" value="GcGameTableAIPlayerConfigPetBattler">
				<Property name="GcGameTableAIPlayerConfigPetBattler">
					<Property name="PetBattleAITeamSeedSource" value="NPCAndWins" />
					<Property name="CustomTeamSeed" value="NONE" />
					<Property name="SeedMissionId" value="" />
					<Property name="Pets" array_size="3">
						<Property name="Pets" value="GcGameTableAIPlayerPetConfig" _index="0">
							<Property name="PetBattlerAIPetPool" value="FromPlanet" />
							<Property name="MinLevel" value="-1" />
							<Property name="MaxLevel" value="-1" />
							<Property name="AllowedAffinities" array_size="9">
								<Property name="Normal" value="false" />
								<Property name="Lush" value="true" />
								<Property name="Cold" value="true" />
								<Property name="Fire" value="true" />
								<Property name="Toxic" value="true" />
								<Property name="Barren" value="true" />
								<Property name="Radioactive" value="true" />
								<Property name="Weird" value="true" />
								<Property name="Mech" value="true" />
							</Property>
							<Property name="CustomPetPool" />
						</Property>
						<Property name="Pets" value="GcGameTableAIPlayerPetConfig" _index="1">
							<Property name="PetBattlerAIPetPool" value="FromSystem" />
							<Property name="MinLevel" value="-1" />
							<Property name="MaxLevel" value="-1" />
							<Property name="AllowedAffinities" array_size="9">
								<Property name="Normal" value="false" />
								<Property name="Lush" value="true" />
								<Property name="Cold" value="true" />
								<Property name="Fire" value="true" />
								<Property name="Toxic" value="true" />
								<Property name="Barren" value="true" />
								<Property name="Radioactive" value="true" />
								<Property name="Weird" value="true" />
								<Property name="Mech" value="true" />
							</Property>
							<Property name="CustomPetPool" />
						</Property>
						<Property name="Pets" value="GcGameTableAIPlayerPetConfig" _index="2">
							<Property name="PetBattlerAIPetPool" value="FromPlanet" />
							<Property name="MinLevel" value="-1" />
							<Property name="MaxLevel" value="-1" />
							<Property name="AllowedAffinities" array_size="9">
								<Property name="Normal" value="false" />
								<Property name="Lush" value="true" />
								<Property name="Cold" value="true" />
								<Property name="Fire" value="true" />
								<Property name="Toxic" value="true" />
								<Property name="Barren" value="true" />
								<Property name="Radioactive" value="true" />
								<Property name="Weird" value="true" />
								<Property name="Mech" value="true" />
							</Property>
							<Property name="CustomPetPool" />
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>]]

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "Xen0nex",
	["NMS_VERSION"]			= GameVersion,
	--["EXML_CREATE"] = "FALSE",
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\GAMETABLES\GAMETABLESDATATABLE.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"AIPlayerConfigs", "GcGameTableAIPlayerConfig"},
							["ADD"] = NewColArchivePlayerConfig,
							["ADD_OPTION"]  = "ADDafterSECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "PB_GAME_LARGEBUILDING"},
							["VALUE_MATCH"] 	= "PB_AI_PLANET_STANDARD",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"PresetAIPlayers", "PB_AI_COL_ARCHIVE"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"GCGAMETABLEGLOBALS.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						--Blank
					}
				},
			}
		}
	}
}

local ChangesToGameTableData = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

for i = 1, #BattleConfigChanges do
	local BattleType = BattleConfigChanges[i][1][1]
	local OppPreset = BattleConfigChanges[i][1][2]
	local Difficulty = BattleConfigChanges[i][2][1]
	local MinLevel = BattleConfigChanges[i][2][2]
	local XpMult = BattleConfigChanges[i][2][3]
	local RewardIdWin = BattleConfigChanges[i][2][4]
	local RewardIdLoss = BattleConfigChanges[i][2][5]

			ChangesToGameTableData[#ChangesToGameTableData+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", BattleType},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RewardIdWin", RewardIdWin},
					{"RewardIdLoss", RewardIdLoss},
					{"ExperienceRewardMultiplier", XpMult}
				}
			}
			
			ChangesToGameTableData[#ChangesToGameTableData+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", OppPreset},
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"GameTableAIDifficulty", Difficulty},
					{"MinLevel", MinLevel}
				}
			}
end

local ChangesToGameTableGlobals = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["MXML_CHANGE_TABLE"]

for i = 1, #EnemyDifficultyScaling do
	local Difficulty = EnemyDifficultyScaling[i][1]
	local Min = EnemyDifficultyScaling[i][2]
	local Max = EnemyDifficultyScaling[i][2]


			ChangesToGameTableGlobals[#ChangesToGameTableGlobals+1] =
			{
				["PRECEDING_KEY_WORDS"] = {Difficulty},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"X", Min},
					{"Y", Max}
				}
			}
end

for i = 1, #XPGapPerLevel do
	local newXPGap = XPGapPerLevel[i][1]
	--local vanXPGap = XPGapPerLevel[i][2]
	local index = i-1


			ChangesToGameTableGlobals[#ChangesToGameTableGlobals+1] =
			{
				--["SPECIAL_KEY_WORDS"] = {"XPGapPerLevel", vanXPGap},
				["PRECEDING_KEY_WORDS"] = {"XPGapPerLevel"},
				["SECTION_ACTIVE"] = index,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"XPGapPerLevel", newXPGap}
				}
			}
end

for i = 1, #CreatureClassStats do
	local Stat = CreatureClassStats[i][1][1]
	local Classes = CreatureClassStats[i][2]
	
	for j = 1, #Classes do
		local Class = Classes[j][1]
		local BaseMin = math.floor(Classes[j][2]+0.5)
		local BaseMax = math.floor(Classes[j][3]+0.5)
		local LevelUp = math.floor(Classes[j][4]+0.5)
		local Chance = math.floor(Classes[j][5]+0.5)

			ChangesToGameTableGlobals[#ChangesToGameTableGlobals+1] =
			{
				["SPECIAL_KEY_WORDS"] = {Stat, "GcPetBattlerCoreStatRollData"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{Class, Chance}
				}
			}
			
			ChangesToGameTableGlobals[#ChangesToGameTableGlobals+1] =
			{
				["SPECIAL_KEY_WORDS"] = {Stat, "GcPetBattlerCoreStatRangeData"},
				["PRECEDING_KEY_WORDS"] = {Class},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"X", BaseMin},
					{"Y", BaseMax}
				}
			}
			
			ChangesToGameTableGlobals[#ChangesToGameTableGlobals+1] =
			{
				["SPECIAL_KEY_WORDS"] = {Stat, "GcPetBattlerCoreStatRollData"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{Class, LevelUp}
				}
			}
	end
end