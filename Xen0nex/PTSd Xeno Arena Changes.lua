ModName = "PTSd Xeno Arena Changes"
GameVersion = "7_06"
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
			"Medium",	"-1",		1.5,		"R_PB_PVE_EASY_W",		"R_PB_PVE_EASY_L"		--"Easy",	"-1",	1,	5~10 nanites + 100% chance for Challenger's Invitation
		}
	},
	{
		{--Battle type					Opponent Preset
			"PB_GAME_PLANET_STANDARD",	"PB_AI_PLANET_STANDARD",						--Opponents at Trading Posts, and also any targets of Challenger's Invitations	(PB_CHALL_WINS reward)
		},
		{--Difficulty	MinLevel	XP mult		Reward Win				Reward Loss
			"Hard",		"-1",		1.5,		"R_PB_PVE_PLAC_W",		"R_PB_PVE_PLAC_L"		--"Medium",	"-1",	1,	12~20 nanites + 3% chance for Retroviral Pellet
		}
	},
	{
		{--Battle type					Opponent Preset
			"PB_GAME_SETTLEMENT",		"PB_AI_SETTLEMENT",								--Opponents in Settlements on planets?
		},
		{--Difficulty	MinLevel	XP mult		Reward Win				Reward Loss
			"Hard",		"-1",		1.5,		"R_PB_PVE_EZ_NI",		"R_PB_PVE_EASY_L"		--"Medium",	"-1",	1,	5~10 nanites
		}
	},
	{
		{--Battle type					Opponent Preset
			"PB_GAME_LARGEBUILDING",	"PB_AI_COL_ARCHIVE",							--Opponents in Colossal Archives when not the target of a Challenger's Invitation	(PB_CHALL_WINS reward)	(Vanilla uses "PB_AI_PLANET_STANDARD")
		},
		{--Difficulty	MinLevel	XP mult		Reward Win				Reward Loss
			"Hard",		"-1",		1.5,		"R_PB_PVE_PLAC_W",		"R_PB_PVE_PLAC_L"		--"Medium",	"-1",	1,	10~20 nanites + 3% chance for Retroviral Pellet		(Vanilla uses "R_PB_PVE_HARD_W",	"R_PB_PVE_HARD_L")
		}
	},
	{
		{--Battle type					Opponent Preset
			"PB_GAME_SYSTEM_STANDARD",	"PB_AI_SYSTEM_STANDARD",						--Regular opponents on Space Stations?
		},
		{--Difficulty	MinLevel	XP mult		Reward Win				Reward Loss
			"Medium",	"-1",		2,			"R_PB_PVE_SYSS_W",		"R_PB_PVE_SYSS_L"		--"Easy",	"-1",	1,	15~30 nanites + 8% chance for Retroviral Pellet
		}
	},
	{
		{--Battle type					Opponent Preset
			"PB_GAME_PIRATESTATION",	"PB_AI_PIRATESTATION",							--Regular opponents in Outlaw Stations?		(PB_CHALL_WINS reward)
		},
		{--Difficulty	MinLevel	XP mult		Reward Win				Reward Loss
			"Medium",	"-1",		2,			"R_PB_PVE_HARD_W",		"R_PB_PVE_HARD_L"		--"Medium",	"-1",	1,	10~20 nanites + 3% chance for Retroviral Pellet
		}
	},
	{
		{--Battle type					Opponent Preset
			"PB_GAME_SYSTEM_CHAMPION",	"PB_AI_SYSTEM_CHAMPION",						--System Champion
		},
		{--Difficulty	MinLevel	XP mult		Reward Win				Reward Loss
			"Hard",		"20",		3,			"R_PB_PVE_SYSC_W",		"R_PB_PVE_SYSC_L"		--"Hard",	"-1",	1,	30~50 nanites + 60% chance for Retroviral Pellet + 100% chance for Challenger's Invitation
		}
	},
	{
		{--Battle type					Opponent Preset
			"PB_GAME_DAILY_NEXUS",		"PB_AI_DAILY_NEXUS_1",							--Daily battle vs. Oceanus?
		},
		{--Difficulty	MinLevel	XP mult		Reward Win				Reward Loss
			"Hard",		"30",		3,			"R_PB_D_NEXUS_W",		"R_PB_D_NEXUS_L"		--"Hard",	"30",	1,	175~200 nanites + 75% chance for Retroviral Pellet
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