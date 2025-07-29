Author = "Xaliber"					--Edited by Xen0nex
LuaAuthor = "DeathWrench and Babscoole and Xen0nex"
--ModName = "gExos Challenge"
ModNameSub = "Space Combat+Larger Space BattlesX"
BaseDescription = "Adaptation of part(s) of Xaliber's Space Combat Reworked"
GameVersion = "5_64"
ModVersion = "a"

--Multipliers to apply to the hull & shields of all AI-controlled starships & some freighters (individual ships have additonal multipliers applied)
	--Note that "SpaceCombatDifficultyMultipliers" values in GCGAMEPLAYGLOBALS.GLOBAL.MBIN control additional (or subtract) Hull & Shields for enemy starships depending on Space Combat difficulty setting
	--Multiplied by 1.15 to partially account for how additional supercharged weapon upgrades can increase DPS by up to 1.25~1.3x each time
ShipHull =				2.5*1.15						--Starting AI Hull health for all starships & freighters (except for CIV_LEADER or Dreadnoughts)
ShipHullPerLevel =		2.5*1.15						--Additional AI Hull health added per level for all starships & freighters (except for CIV_LEADER or Dreadnoughts)
ShipShield =			2.5*1.15						--Starting AI Shield health for all starships & freighters (except for CIV_LEADER or Sentinel / Pirate Dreadnoughts)
ShipShieldPerLevel =	2.5*1.15						--Additional AI Shield health added per level for all starships & freighters (except for CIV_LEADER or Sentinel / Pirate Dreadnoughts)
BossFreighterParts =	2.1*1.15						--Starting AI health for enemy freighter parts (and the Dreadnought hull itself) & Pirate Frigates in "boss" freighter battles (Sentinel or Pirate Dreadnought) during Sentinel 5 star / Pirate Dreadnought encounters
BossFreighterPartsPerLevel =2.1*1.15					--Additional AI health added per level for enemy freighter parts (and the Dreadnought hull itself) & Pirate Frigates in "boss" freighter battles
CargoPods =				1								--Both Starting & Additional health for all types of Cargo Pods, both atteched or standalone near freighters

--Adds additional Squadrons to appear at each Wanted Level, for all multiplayer group sizes
AddedSquadrons =
{
	0,													--Wanted Level 1.	Default is 1 Squadron of Interceptors in solo, 2/2/2 in multiplayer groups
	1,													--Wanted Level 2.	Default is 1 Squadron of Interceptors in solo, 2/3/4 in multiplayer groups
	1,													--Wanted Level 3.	Default is 2 Squadron of Interceptors in solo, 3/5/6 in multiplayer groups
	1,													--Wanted Level 4.	Default is 3 Squadron of Interceptors in solo, 4/6/8 in multiplayer groups
	--0													--Wanted Level 5.	Default is 1 Squadron of Sentinel Freighters in solo, 1/1/1 in multiplayer groups (Each Freighter comes with it's own set of 2 Squadrons of 2 Interceptors each, so 4 Interceptors per Freighter)
		--Changing the value for Wanted Level 5 doesn't seem to have an effect
}
--Sets how many Interceptors/Freighters appear in each Squadron at each Wanted level, for all multiplayer group sizes
WantedSquadron1 =		1								--1 Interceptor per Squadron
WantedSquadron2 =		1								--1 Interceptor per Squadron
WantedSquadron3 =		1								--1 Interceptor per Squadron
WantedSquadron4 =		1								--1 Interceptor per Squadron
WantedSquadron5 =		1								--1 Sentinel Freighter per Squadron (Each Freighter comes with it's own set of 2 Squadrons of 2 Interceptors each, so 4 Interceptors per Freighter)

--Adjusts some settings for Planetary Pirate Raids
RaidSpawnRange =		3200							--800	How far away from the player they will spawn.
--RaidSpawnTime =			0								--0		Possibly how long between the event starting and the actual ships appearing? No apparent effect

--Adjusts health, damage multipliers, and possible loot for freighter parts in "boss" freighter battles
BossFreighterPartsChanges =
{
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/DESTRUCTIBLEPARTS/LARGECANNONTURRET/ENTITIES/LARGECANNONTURRET.ENTITY.MBIN",	--Anti-Freighter Cannons during Pirate Dreadnought battles
		math.floor(BossFreighterParts*17000*12),	math.floor(BossFreighterPartsPerLevel*56000*12),	"BOSSFREI_HULL",	--17000 Health,		56000 LevelledExtraHealth,		"FREIGHT_HULL" DamageMultiplier
		"CANNONLOOT" }				--""	Replace with a reward from REWARDTABLE.EXML or leave as "" for no reward
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/DESTRUCTIBLEPARTS/PIRATEFREIGHTERTHRUSTER0/ENTITIES/DATA.ENTITY.MBIN",		--Freighter Warp Drives during Pirate Dreadnought battles
		math.floor(BossFreighterParts*4100*18),	math.floor(BossFreighterPartsPerLevel*32000*18),	"BOSSFREI_HULL",		--4100 Health,		32000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"WARPLOOT" }				--""	Replace with a reward from REWARDTABLE.EXML or leave as "" for no reward
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/DESTRUCTIBLEPARTS/ANTISHIPTURRET/ENTITIES/ANTISHIPTURRET.ENTITY.MBIN",		--Anti-Ship Turrets during Pirate Dreadnought battles
		math.floor(BossFreighterParts*4100*2.5),	math.floor(BossFreighterPartsPerLevel*28000*2.5),	"BOSSFREI_HULL",	--4100 Health,		28000 LevelledExtraHealth,		"FREIGHT_HULL" DamageMultiplier
		"TURRETLOOT" }				--""	Replace with a reward from REWARDTABLE.EXML or leave as "" for no reward
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/DESTRUCTIBLEPARTS/SHIELDGENERATOR0/ENTITIES/SHIELDGENERATOR.ENTITY.MBIN",	--Freighter Shield Generators during Pirate Dreadnought battles
		math.floor(BossFreighterParts*1500*4),	math.floor(BossFreighterPartsPerLevel*8000*4),	"SHIP_SHIELD",				--1500 Health,		8000 LevelledExtraHealth,		"FREIGHT_HULL" DamageMultiplier
		"SHIELDGENLOOT" }			--""	Replace with a reward from REWARDTABLE.EXML or leave as "" for no reward
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/DESTRUCTIBLEPARTS/FUELROD/ENTITIES/ROD.ENTITY.MBIN",							--Exposed Fuel Rods during Pirate Dreadnought battles
		math.floor(BossFreighterParts*2000*8),	math.floor(BossFreighterPartsPerLevel*8000*8),	"BOSSFREI_HULL",			--2000 Health,		8000 LevelledExtraHealth,		"FREIGHT_HULL" DamageMultiplier
		"FUELRODLOOT" }				--""	Replace with a reward from REWARDTABLE.EXML or leave as "" for no reward
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/PIRATECRUISER/ENTITIES/PIRATECRUISERDATA.ENTITY.MBIN",						--Pirate Frigates during Pirate Dreadnought battles
		"10",									"0",									"BOSSFREI_HULL",					--10 Health,	0 LevelledExtraHealth,		"SHIP_HULL" DamageMultiplier		This is a placeholder, actual health contrilled by PIRATE_FRIG Definition below
		"PIRATLTEASY" }				--""	Replace with a reward from REWARDTABLE.EXML or leave as "" for no reward
	},
}

HiddenCargo =		"true"			--"false"	Hides the reward for Cargo Pods so it is not displayed before you open / destroy them, to make it harder to collect the specific reward you are looking for.

--Adjusts health, damage multipliers, and possible loot for various attached and standalone "Cargo Pods" on or near freighters
CargoPodChanges =
{
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CONTAINER/CONTAINERA/ENTITIES/CONTAINER_A.ENTITY.MBIN",	--Attached Freighter Cargo Pod type A
		math.floor(CargoPods*4000*1),	math.floor(CargoPods*16000*1),	"CARGO",						--4000 Health,		16000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CONTAINER/CONTAINERB/ENTITIES/CONTAINER_B.ENTITY.MBIN",	--Attached Freighter Cargo Pod type B
		math.floor(CargoPods*4000*1),	math.floor(CargoPods*16000*1),	"CARGO",						--4000 Health,		16000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CONTAINER/CONTAINERC/ENTITIES/CONTAINER_C.ENTITY.MBIN",	--Attached Freighter Cargo Pod type C
		math.floor(CargoPods*2000*2),	math.floor(CargoPods*9000*1.33),"CARGO",						--2000 Health,		9000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CONTAINER/CONTAINERE/ENTITIES/CONTAINER_E.ENTITY.MBIN",	--Attached Freighter Cargo Pod type E
		math.floor(CargoPods*4000*1),	math.floor(CargoPods*14000*1),	"CARGO",						--4000 Health,		14000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CONTAINER/CONTAINERF/ENTITIES/CONTAINER_F.ENTITY.MBIN",	--Attached Freighter Cargo Pod type F
		math.floor(CargoPods*4000*1),	math.floor(CargoPods*14000*1),	"CARGO",						--4000 Health,		14000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CONTAINER/CONTAINERG/ENTITIES/CONTAINER_G.ENTITY.MBIN",	--Attached Freighter Cargo Pod type G
		math.floor(CargoPods*2000*2),	math.floor(CargoPods*9000*1.33),"CARGO",						--2000 Health,		9000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CONTAINER/CONTAINERH/ENTITIES/CONTAINER_H.ENTITY.MBIN",	--Attached Freighter Cargo Pod type H
		math.floor(CargoPods*2000*2),	math.floor(CargoPods*9000*1.33),"CARGO",						--2000 Health,		9000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
	--The health values for the two standalone Cargo Pods below don't seem to actually be changed by the values set here, nor does adjusting the "CARGO" multiplier in "PTSd Weapons Rebalance.lua" affect them
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTERSMALL_PROC/ENTITIES/SMALLFREIGHTER.ENTITY.MBIN",--Small standalone Cargo Pod near freighters
		math.floor(CargoPods*4000*1.25),	math.floor(CargoPods*14000*1),	"CARGO",					--4000 Health,		0 LevelledExtraHealth,			"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTERTINY_PROC/ENTITIES/_TINY_FREIGHTER.ENTITY.MBIN",--Tiny standalone Cargo Pod near freighters
		math.floor(CargoPods*2000*2.5),		math.floor(CargoPods*14000*1),	"CARGO",					--2000 Health,		14000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
}

--"Spread" sets how far apart the ships are when they spawn, "Count" sets the minimum & maxmum number of ships which spawn.
LargerBattleChanges = 
{
	{
		{
			"FlybySpawns"		--Presumably are the neutral starships which sometimes fly overhead when on planets.
		},
		{
			{--Standard (regular starship)
				{--name				value				_index	SubLevel
					"FlybySpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	20,			30},	--20,		30
					{"Count",	1,			4}		--1,		3
				}
			}
		}
	},
	{
		{
			"SpaceFlybySpawns"		--Presumably are the neutral starships which sometimes fly nearby when in space.
		},
		{
			{--Standard (regular starship)
				{	--name				value				_index	SubLevel
					"SpaceFlybySpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	300,		300},	--300,		300
					{"Count",	2,			6}		--2,		3		[2,	6]
				}
			},
			{--Standard (regular starship)
				{	--name				value				_index	SubLevel
					"SpaceFlybySpawns", "GcAIShipSpawnData", "1",	4
				},
				{
					{"Spread",	250,		250},	--250,		250
					{"Count",	2,			4}		--2,		2		[2,	4]
				}
			},
			{--Standard (regular starship)
				{	--name				value				_index	SubLevel
					"SpaceFlybySpawns", "GcAIShipSpawnData", "2",	4
				},
				{
					{"Spread",	250,		250},	--250,		250
					{"Count",	4,			6}		--3,				[4,	6]
				}
			},
		}
	},
	{
		{
			"PirateSpawns"					--These do NOT attack Freighters.	For the following, RewardMessage is NOTIFY_PIRATE_WIN
		},
		{
			{--Standard (regular starship)
			--This may control several things: it appears to act as a multiplier to the amount of pirates spawned during space station pirate hunting missions
				{
					"PirateSpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	80,			80},	--80,		80
					{"Count",	1,			1}		--1,		1		(1,			6)		[1,		3]
				}
			},
			{--Standard (regular starship)
				{
					"PirateSpawns", "GcAIShipSpawnData", "1",	4
				},
				{
					{"Spread",	80,			80},	--80,		80
					{"Count",	1,			2}		--1,		1		(2,			6)		[1,		3]
				}
			},
		}
	},
	{
		{
			"PlanetaryPirateFlybySpawns"		--Unclear
		},
		{
			{--Standard (regular starship)
				{
					"PlanetaryPirateFlybySpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	2,			4}		--1,		3
				}
			}
		}
	},
	{
		{
			"PlanetaryPirateRaidSpawns"		--These seem to be the pirates spawned when pirates attack a planetary building you are near.
		},
		{
			{--Standard (regular starship)
				{
					"PlanetaryPirateRaidSpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			2},		--1,		1			For each "Count" here, the game appears to randomly spawn 1x~4x actual Pirate Raiders?
					--{"StartTime",	RaidSpawnTime,	math.floor(RaidSpawnTime+1)}		--0,		0
				}
			}
		}
	},
	{
		{
			"PirateBattleSpawns"			--These DO attack Freighters.	RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
		},
		{
			{--Standard (regular starship)
				{
					"PirateBattleSpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	100,		120},	--100,		120
					{"Count",	4,			8}		--2,		2		(10,			24)
				}
			}
		}
	},
	{
		{
			"PoliceSpawns"					--Enemy Sentinel Interceptors for different Wanted Level. Now has a separate "MaxCountsForFireteamSize" paramter, presumably to scale amount with the size of your multiplayer group?
		},
		{
			{--Standard (regular starship)
				{
					"PoliceSpawns", "GcPoliceSpawnWaveData", "0",	5
				},
				{
					{"Spread",	100,		120},
					{"Count",	WantedSquadron1,	WantedSquadron1}		--1,		1		(1,		2)
				}
			},
			{--Standard (regular starship)
				{
					"PoliceSpawns", "GcPoliceSpawnWaveData", "1",	5
				},
				{
					{"Spread",	100,		120},
					{"Count",	WantedSquadron2,	WantedSquadron2}		--1,		1		(2,		3)
				}
			},
			{--Standard (regular starship)
				{
					"PoliceSpawns", "GcPoliceSpawnWaveData", "2",	5
				},
				{
					{"Spread",	100,		120},
					{"Count",	WantedSquadron3,	WantedSquadron3}		--1,		1		(3,		4)
				}
			},
			{--Standard (regular starship)
				{
					"PoliceSpawns", "GcPoliceSpawnWaveData", "3",	5
				},
				{
					{"Spread",	100,		120},
					{"Count",	WantedSquadron4,	WantedSquadron4}		--1,		1		(3,		6)
				}
			},
			{--Freighter
				{
					"PoliceSpawns", "GcPoliceSpawnWaveData", "4",	5
				},
				{
					{"Spread",	200,		600},
					{"Count",	WantedSquadron5,	WantedSquadron5}		--1,		1		(1,		2)
				}
			},
		}
	},
	{
		{
			"TraderSpawns"		--Added by Xen0nex
		},
		{
			{--Standard (regular starship)
				{
					"TraderSpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			2}		--1,		1
				}
			}
		}
	},
	{
		{
			"AmbientSpawns"			--Presumably the neutral Freighter convoys sometimes seems waiting around in systems
		},
		{
			{--Freighter
				{
					"AmbientSpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	3000,		4500},
					{"Count",	2,			6}		--2,		5
				}
			},
			{--Frigate
				{
					"ChildSpawns","GcAIShipSpawnData", "0",	6
				},
				{
					{"Spread",	1500,		3000},
					{"Count",	0,			4}		--0,		3
				}
			},
			{--SmallFreighter
				{
					"ChildSpawns","GcAIShipSpawnData", "1",	6
				},
				{
					{"Spread",	1500,		3500},
					{"Count",	0,			7}		--0,		5
				}
			},
			--[[--DUPLICATE TARGET
			{--TinyFreighter		3rd "ChildSpawns" entry
				{
					"ChildSpawns","GcAIShipSpawnData", "0",	8
				},
				{
					{"Spread",	400,		1000},
					{"Count",	1,			3}		--1,		3
				}
			},
			]]
			{--Freighter
				{
					"AmbientSpawns", "GcAIShipSpawnData", "1",	4
				},
				{
					{"Spread",	3000,		4500},	--3000,		3000
					{"Count",	2,			6}		--2,		5
				}
			},
			--[[--DUPLICATE TARGET
			{--Frigate
				{
					"ChildSpawns","GcAIShipSpawnData", "0",	6
				},
				{
					{"Spread",	1500,		2500},	--1000,		1500
					{"Count",	0,			5}		--0,		3
				}
			},
			]]
			--[[--DUPLICATE TARGET
			{--SmallFreighter
				{
					"ChildSpawns","GcAIShipSpawnData", "1",	6
				},
				{
					{"Spread",	1500,		3500},	--1000,		1000
					{"Count",	0,			7}		--0,		5
				}
			},
			]]
			--[[--DUPLICATE TARGET
			{--TinyFreighter
				{
					"ChildSpawns","GcAIShipSpawnData", "0",	8
				},
				{
					{"Spread",	400,		600},	--400,		600
					{"Count",	1,			4}		--1,		4
				}
			},
			]]
		}
	},
	{
		{
			"BattleSpawns"				--These are Freighters during Freighter-Pirate battles
		},
		{
			{--Freighter
				{
					"BattleSpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Freighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	6
				},
				{
					{"Spread",	1500,		2000},	--1500,		2000
					{"Count",	2,			5}		--2,		3
				}
			},
			{--SmallFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	8
				},
				{
					{"Spread",	500,		1000},	--500,		1000
					{"Count",	2,			3}		--1,		2
				}
			},
			{--TinyFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	10
				},
				{
					{"Spread",	400,		400},	--400,		400
					{"Count",	3,			3}		--2,		2
				}
			},
			{--CapitalFreighter
				{
					"BattleSpawns", "GcAIShipSpawnData", "1",	4
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	1,			1}		--1,		1
				}
			},
			--[[--DUPLICATE TARGET
			{--Freighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	6
				},
				{
					{"Spread",	2400,		4200},	--2400,		2500
					{"Count",	6,			12}		--4,		6
				}
			},
			{--SmallFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	8
				},
				{
					{"Spread",	800,		1800},	--500,		1000
					{"Count",	1,			5}		--1,		3
				}
			},
			{--TinyFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	10
				},
				{
					{"Spread",	400,		800},	--400,		400
					{"Count",	2,			3}		--2,		2
				}
			},
			]]
			{--CapitalFreighter
				{
					"BattleSpawns", "GcAIShipSpawnData", "2",	4
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	1,			1}		--1,		1
				}
			},
			--[[--DUPLICATE TARGET
			{--Freighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	6
				},
				{
					{"Spread",	1800,		1800},	--3200,		2500
					{"Count",	3,			5}		--3,		5
				}
			},
			{--Standard (regular starship)
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	8
				},
				{
					{"Spread",	1000,		100},	--1000,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			]]
			{--SmallFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "1",	8
				},
				{
					{"Spread",	1000,		1500},	--1000,		1500
					{"Count",	1,			4}		--1,		4
				}
			},
			--[[--DUPLICATE TARGET
			{--TinyFreighter		(this entry is added manually at the bottom of the MBIN_CHANGE_TABLE)
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	10
				},
				{
					{"Spread",	600,		900},	--500,		700
					{"Count",	0,			4}		--0,		3
				}
			},
			]]
			{--CapitalFreighter
				{
					"BattleSpawns", "GcAIShipSpawnData", "3",	4
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	1,			1}		--1,		1
				}
			},
			--[[--DUPLICATE TARGET
			{--Freighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	6
				},
				{
					{"Spread",	1800,		1800},	--1800,		1800
					{"Count",	3,			5}		--3,		5
				}
			},
			{--Standard (regular starship)
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	8
				},
				{
					{"Spread",	1000,		100},	--1000,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--SmallFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "1",	8
				},
				{
					{"Spread",	1000,		1500},	--1000,		1500
					{"Count",	1,			4}		--1,		4
				}
			},
			{--TinyFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	10
				},
				{
					{"Spread",	500,		700},	--500,		700
					{"Count",	0,			3}		--0,		3
				}
			},
			]]
		}
	},
	{
		{
			"BattlePirateSpawns"				--These are presumably all related to Pirate Dreadnought battles, as this section was added in the NMS v4.4 update
		},
		{
			{--Standard (regular starship
				{
					"BattlePirateSpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1},		--0,		0
					{"StartTime",	0,		1}		--0,		0			This seems to give these starships a chance to actually spawn?
				}
			},
			{--Standard (regular starship
				{
					"BattlePirateSpawns", "GcAIShipSpawnData", "1",	4
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1},		--0,		0
					{"StartTime",	0,		1}		--0,		0			This seems to give these starships a chance to actually spawn?
				}
			},
			{--Standard (regular starship
				{
					"BattlePirateSpawns", "GcAIShipSpawnData", "2",	4
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1},		--0,		0
					{"StartTime",	0,		1}		--0,		0			This seems to give these starships a chance to actually spawn?
				}
			},
			{--CapitalFreighter (this is the Pirate Capital Freighter)
				{
					"BattlePirateSpawns", "GcAIShipSpawnData", "3",	4
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Pirate Frigates
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	6
				},
				{
					{"Spread",	1200,		1300},	--1200,		1300
					{"Count",	8,			8}		--6,		6
				}
			}
		}
	},
	{
		{
			"BattleInitialStandardSpawns"			--These are presumably friendly ships that fight the pirates during freighter-pirates battles
		},
		{
			{--Standard (regular starship
				{
					"BattleInitialStandardSpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	2,			5}		--2,		2		(6,			18)
				}
			},
			{--Standard (regular starship
				{
					"BattleInitialStandardSpawns", "GcAIShipSpawnData", "1",	4
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	2,			5}		--2,		2		(5,			15)
				}
			},
			{--Standard (regular starship
				{
					"BattleInitialStandardSpawns", "GcAIShipSpawnData", "2",	4
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	2,			5}		--2,		2		(6,			12)
				}
			},
			{--Standard (regular starship		(added in the NMS v4.4 update)
				{
					"BattleInitialStandardSpawns", "GcAIShipSpawnData", "3",	4
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	2,			5}		--2,		2
				}
			}
		}
	},
	{
		{
			"BattleInitialPirateSpawns"			--These DO attack Freighters.	For the following, RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
		},			--How these numbers are used by the game is confusing... At the start of the Freighter-Pirate battle, it seems to take 3x the _index 1 Count, then adds 1x the _index 1 Count from BattleSecondaryPirateSpawns to get the total pirate count at the start of the battle, ignoring the other values?
		{
			{--Standard (regular starship
				{--name								value				_index	SubLevel
					"BattleInitialPirateSpawns"	, "GcAIShipSpawnData", "0",		4
				},
				{
					{"Spread",	100,		120},	--100,		120
					{"Count",	2,			4}		--2,		2		(2,			8)
				}
			},
			{--Standard (regular starship			Game seems to use 3x this Count?
				{--name								value				_index	SubLevel
					"BattleInitialPirateSpawns"	, "GcAIShipSpawnData", "1",		4
				},
				{
					{"Spread",	100,		120},	--100,		120
					{"Count",	2,			4}		--2,		2		(4,			16)
				}
			},
			{--Standard (regular starship
				{--name								value				_index	SubLevel
					"BattleInitialPirateSpawns"	, "GcAIShipSpawnData", "2",		4
				},
				{
					{"Spread",	100,		120},	--100,		120
					{"Count",	2,			3}		--1,		1		(6,			12)
				}
			},
			{--Standard (regular starship		(added in the NMS v4.4 update)
				{--name								value				_index	SubLevel
					"BattleInitialPirateSpawns"	, "GcAIShipSpawnData", "3",		4
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	0,			0}		--0,		0
				}
			}
		}
	},
	{
		{
			"BattleSecondaryPirateSpawns"			--These DO attack Freighters.	For the following, RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
		},
		{
			{--Standard (regular starship
				{--name								value				_index	SubLevel
					"BattleSecondaryPirateSpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	100,		120},	--100,		120
					{"Count",	2,			4}		--2,		2		(6,			12)
				}
			},
			{--Standard (regular starship			Game seems to add 1x this Count?
				{--name								value				_index	SubLevel
					"BattleSecondaryPirateSpawns", "GcAIShipSpawnData", "1",	4
				},
				{
					{"Spread",	100,		120},	--100,		120
					{"Count",	2,			4}		--2,		2		(4,			16)
				}
			},
			{--Standard (regular starship
				{--name								value				_index	SubLevel
					"BattleSecondaryPirateSpawns", "GcAIShipSpawnData", "2",	4
				},
				{
					{"Spread",	100,		120},	--100,		120
					{"Count",	1,			3}		--1,		1		(2,			6)
				}
			},
			{--Standard (regular starship		(added in the NMS v4.4 update)
				{--name								value				_index	SubLevel
					"BattleSecondaryPirateSpawns", "GcAIShipSpawnData", "3",	4
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	0,			0}		--0,		0
				}
			}
		}
	},
	{
		{
			"BattleRecurringPirateSpawns"			--(This section added in the NMS v4.4 update)
		},
		{
			{--Standard (regular starship
				{
					"BattleRecurringPirateSpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	100,		120},	--100,		120
					{"Count",	2,			4}		--2,		2
				}
			},
			{--Standard (regular starship
				{
					"BattleRecurringPirateSpawns", "GcAIShipSpawnData", "1",	4
				},
				{
					{"Spread",	100,		120},	--100,		120
					{"Count",	2,			4}		--2,		2
				}
			},
			{--Standard (regular starship
				{
					"BattleRecurringPirateSpawns", "GcAIShipSpawnData", "2",	4
				},
				{
					{"Spread",	100,		120},	--100,		120
					{"Count",	1,			3}		--1,		1
				}
			},
			{--Standard (regular starship		(added in the NMS v4.4 update)
				{
					"BattleRecurringPirateSpawns", "GcAIShipSpawnData", "3",	4
				},
				{
					{"Spread",	100,		120},	--100,		120
					{"Count",	2,			4}		--2,		2
				}
			}
		}
	},
	--[[
	{
		{
			"FrigateFlybySpawns"		--Probably just decorative frigate spawns on planets
		},
		{
			{--Frigate
				{
					"FrigateFlybySpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Frigate
				{
					"FrigateFlybySpawns", "GcAIShipSpawnData", "1",	4
				},
				{
					{"Spread",	400,		400},	--400,		400
					{"Count",	2,			5}		--2,		5
				}
			},
			{--Frigate
				{
					"FrigateFlybySpawns", "GcAIShipSpawnData", "2",	4
				},
				{
					{"Spread",	800,		800},	--800,		800
					{"Count",	2,			5}		--2,		5
				}
			},
			{--Frigate
				{
					"FrigateFlybySpawns", "GcAIShipSpawnData", "3",	4
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Frigate
				{
					"FrigateFlybySpawns", "GcAIShipSpawnData", "4",	4
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Frigate
				{
					"FrigateFlybySpawns", "GcAIShipSpawnData", "5",	4
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
		}
	}
	]]
}

MiscLargerChanges =
{
	{	--Pirate Frigates that reinforce each time the remaining Pirate Frigate count drops to the value set in "PTSd Black Hole Distance + Ship Scrapping Items + Misc.lua"
		{
			"BattleReinforcingPirateFrigateSpawn", "GcAIShipSpawnData",
		},
		{
			{"Spread",	5000,		2000},	--5000,		2000
			{"Count",	1,			1}		--3,		3
		}
	},
}

LargerPirateBountyChanges =
{
	{
		{
			"PirateBountySpawns"				--These do NOT attack Freighters.
		},
		{
			{--Standard (regular starship				These are the "wandering" pirates		RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "BOUNTY1"				--Remember to switch to "GcBountySpawnInfo" for the Bounty section
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			2}		--1,		1		(1,			6)
				}
			},
			{--Standard (regular starship				These are the "wandering" pirates		RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "BOUNTY2"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	2,			3}		--1,		1		(3,			12)
				}
			},
			{--Standard (regular starship				These are the "wandering" pirates		RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "BOUNTY3"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	3,			4}		--1,		1		(3,			9)
				}
			},
			--Despite how it seems, the following don't appear to control the space station missions for hunting pirates. At least, the values don't match up with in-game, and changing these seems to have no effect on those missions.
			{--Standard (regular starship
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "EASYBOUNTY1"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1		(1,			6)
				}
			},
			{--Standard (regular starship			
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "EASYBOUNTY2"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1		(2,			8)		[2,	4]
				}
			},
			{--Standard (regular starship
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "MEDBOUNTY1"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1		(3,			12)		[1,	3]
				}
			},
			{--Standard (regular starship
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "MEDBOUNTY2"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1		(4,			12)		[1,	3]	(in the original mod, it seems these entries accidentally changed the "Scale" for MEDBOUNTY2 instead of changing the "Spread")
				}
			},
			{--Standard (regular starship
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "HARDBOUNTY1"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	2,			2}		--1,		1		(3,			9)		[2,	3]
				}
			},
			{--Standard (regular starship
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "HARDBOUNTY2"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	2,			2}		--3,		3		(6,			6)		[2,	3]
				}
			},
			{--Standard (regular starship			Base Armourer mission
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "WEAPGUY_BOUNTY"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	2,			2}		--2,		2		(4,			8)
				}
			},
			{--Standard (regular starship			Unknown function
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "PIRATE_SQUAD"
				},
				{
					{"Spread",	800,		800},	--800,		800
					{"Count",	6,			6}		--6,		6		(9,			18)		[6,		10]
				}
			},
			{--Standard (regular starship			Planet Procedural mission
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "PP_BOUNTY"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	2,			4}		--1,		1		(3,			6)
				}
			}
		}
	},
}

--The following functions allow to add new custom ship Behaviours / Shields (Basically to allow for some Easy/Med/Hard variations of Behaviours as in pre-v3.85 NMS)
function AddPlanetBehaviour (BehaviourID)
    return
[[<Property name="BehaviourTable" value="GcShipAIAttackData">
      <Property name="Id" value="]]..BehaviourID..[[" />
      <Property name="GunDispersionAngle" value="5.000000" />
      <Property name="GunFireRate" value="0.150000" />
      <Property name="LaserHealthPoint" value="50.000000" />
      <Property name="AttackWeaponRange" value="500.000000" />
      <Property name="AttackAngle" value="30.000000" />
      <Property name="AttackShootWaitTime" value="0.100000" />
      <Property name="AttackShootTimeMin" value="2.500000" />
      <Property name="AttackShootTimeMax" value="5.000000" />
      <Property name="AttackReadyTime" value="0.300000" />
      <Property name="AttackMaxTime" value="6.000000" />
      <Property name="AttackApproachOffset" value="150.000000" />
      <Property name="AttackApproachMinRange" value="300.000000" />
      <Property name="AttackApproachMaxRange" value="650.000000" />
      <Property name="AttackTooCloseRange" value="150.000000" />
      <Property name="AttackFlybyOffset" value="150.000000" />
      <Property name="AttackBoostTimeToRange" value="1.500000" />
      <Property name="AttackBoostRange" value="550.000000" />
      <Property name="AttackBoostAngle" value="40.000000" />
      <Property name="AttackTurnMultiplier" value="1.000000" />
      <Property name="AttackMaxPlanetHeight" value="1000.000000" />
      <Property name="AttackTurnMultiplierMax" value="1.000000" />
      <Property name="AttackTurnMaxMinTime" value="3.000000" />
      <Property name="AttackTurnMaxTimeRange" value="6.000000" />
      <Property name="NumHitsBeforeBail" value="3000" />
      <Property name="NumHitsBeforeReposition" value="1000" />
      <Property name="FleeBrake" value="0.800000" />
      <Property name="FleeBoost" value="3.000000" />
      <Property name="FleeBrakeTime" value="0.500000" />
      <Property name="FleeRepositionTime" value="5.000000" />
      <Property name="FleeRepositionAngleMin" value="35.000000" />
      <Property name="FleeRepositionAngleMax" value="100.000000" />
      <Property name="FleeUrgentBrake" value="0.800000" />
      <Property name="FleeUrgentBoost" value="1.800000" />
      <Property name="FleeUrgentBrakeTime" value="0.400000" />
      <Property name="FleeRepositionUrgentTime" value="2.000000" />
      <Property name="FleeRepositionUrgentAngleMin" value="50.000000" />
      <Property name="FleeRepositionUrgentAngleMax" value="145.000000" />
      <Property name="FleeRange" value="400.000000" />
      <Property name="FleeMinTime" value="4.000000" />
      <Property name="FleeMaxTime" value="8.000000" />
      <Property name="FleeUrgentRange" value="75.000000" />
      <Property name="PlanetFleeHeightExtra" value="240.000000" />
      <Property name="AttackTargetMinRange" value="200.000000" />
      <Property name="AttackTargetMaxRange" value="1000.000000" />
      <Property name="AttackTargetOffsetMin" value="-200.000000" />
      <Property name="AttackTargetOffsetMax" value="500.000000" />
      <Property name="AttackTargetSwitchTargetTime" value="10.000000" />
    </Property>]]
end

function AddSpaceBehaviour (BehaviourID)
    return
[[<Property name="BehaviourTable" value="GcShipAIAttackData">
      <Property name="Id" value="]]..BehaviourID..[[" />
      <Property name="GunDispersionAngle" value="5.500000" />
      <Property name="GunFireRate" value="0.150000" />
      <Property name="LaserHealthPoint" value="50.000000" />
      <Property name="AttackWeaponRange" value="700.000000" />
      <Property name="AttackAngle" value="30.000000" />
      <Property name="AttackShootWaitTime" value="1.000000" />
      <Property name="AttackShootTimeMin" value="1.000000" />
      <Property name="AttackShootTimeMax" value="3.000000" />
      <Property name="AttackReadyTime" value="0.500000" />
      <Property name="AttackMaxTime" value="10.000000" />
      <Property name="AttackApproachOffset" value="180.000000" />
      <Property name="AttackApproachMinRange" value="300.000000" />
      <Property name="AttackApproachMaxRange" value="800.000000" />
      <Property name="AttackTooCloseRange" value="90.000000" />
      <Property name="AttackFlybyOffset" value="50.000000" />
      <Property name="AttackBoostTimeToRange" value="1.500000" />
      <Property name="AttackBoostRange" value="2000.000000" />
      <Property name="AttackBoostAngle" value="15.000000" />
      <Property name="AttackTurnMultiplier" value="1.150000" />
      <Property name="AttackMaxPlanetHeight" value="100.000000" />
      <Property name="AttackTurnMultiplierMax" value="1.000000" />
      <Property name="AttackTurnMaxMinTime" value="1.000000" />
      <Property name="AttackTurnMaxTimeRange" value="5.000000" />
      <Property name="NumHitsBeforeBail" value="3000" />
      <Property name="NumHitsBeforeReposition" value="2000" />
      <Property name="FleeBrake" value="1.000000" />
      <Property name="FleeBoost" value="8.000000" />
      <Property name="FleeBrakeTime" value="3.000000" />
      <Property name="FleeRepositionTime" value="3.500000" />
      <Property name="FleeRepositionAngleMin" value="140.000000" />
      <Property name="FleeRepositionAngleMax" value="180.000000" />
      <Property name="FleeUrgentBrake" value="2.000000" />
      <Property name="FleeUrgentBoost" value="2.000000" />
      <Property name="FleeUrgentBrakeTime" value="3.000000" />
      <Property name="FleeRepositionUrgentTime" value="1.000000" />
      <Property name="FleeRepositionUrgentAngleMin" value="180.000000" />
      <Property name="FleeRepositionUrgentAngleMax" value="180.000000" />
      <Property name="FleeRange" value="650.000000" />
      <Property name="FleeMinTime" value="0.500000" />
      <Property name="FleeMaxTime" value="10.000000" />
      <Property name="FleeUrgentRange" value="100.000000" />
      <Property name="PlanetFleeHeightExtra" value="200.000000" />
      <Property name="AttackTargetMinRange" value="250.000000" />
      <Property name="AttackTargetMaxRange" value="600.000000" />
      <Property name="AttackTargetOffsetMin" value="100.000000" />
      <Property name="AttackTargetOffsetMax" value="500.000000" />
      <Property name="AttackTargetSwitchTargetTime" value="10.000000" />
    </Property>]]
end

function AddSquadronBehaviour (BehaviourID)
    return
[[<Property name="BehaviourTable" value="GcShipAIAttackData">
      <Property name="Id" value="]]..BehaviourID..[[" />
      <Property name="GunDispersionAngle" value="4.000000" />
      <Property name="GunFireRate" value="0.200000" />
      <Property name="LaserHealthPoint" value="15.000000" />
      <Property name="AttackWeaponRange" value="850.000000" />
      <Property name="AttackAngle" value="40.000000" />
      <Property name="AttackShootWaitTime" value="2.000000" />
      <Property name="AttackShootTimeMin" value="1.500000" />
      <Property name="AttackShootTimeMax" value="2.500000" />
      <Property name="AttackReadyTime" value="1.000000" />
      <Property name="AttackMaxTime" value="8.000000" />
      <Property name="AttackApproachOffset" value="200.000000" />
      <Property name="AttackApproachMinRange" value="350.000000" />
      <Property name="AttackApproachMaxRange" value="600.000000" />
      <Property name="AttackTooCloseRange" value="200.000000" />
      <Property name="AttackFlybyOffset" value="-200.000000" />
      <Property name="AttackBoostTimeToRange" value="1.500000" />
      <Property name="AttackBoostRange" value="2250.000000" />
      <Property name="AttackBoostAngle" value="10.000000" />
      <Property name="AttackTurnMultiplier" value="1.250000" />
      <Property name="AttackMaxPlanetHeight" value="100.000000" />
      <Property name="AttackTurnMultiplierMax" value="1.000000" />
      <Property name="AttackTurnMaxMinTime" value="1.000000" />
      <Property name="AttackTurnMaxTimeRange" value="4.000000" />
      <Property name="NumHitsBeforeBail" value="800" />
      <Property name="NumHitsBeforeReposition" value="1100" />
      <Property name="FleeBrake" value="1.000000" />
      <Property name="FleeBoost" value="6.000000" />
      <Property name="FleeBrakeTime" value="15.000000" />
      <Property name="FleeRepositionTime" value="10.000000" />
      <Property name="FleeRepositionAngleMin" value="90.000000" />
      <Property name="FleeRepositionAngleMax" value="180.000000" />
      <Property name="FleeUrgentBrake" value="1.500000" />
      <Property name="FleeUrgentBoost" value="1.500000" />
      <Property name="FleeUrgentBrakeTime" value="3.000000" />
      <Property name="FleeRepositionUrgentTime" value="3.000000" />
      <Property name="FleeRepositionUrgentAngleMin" value="180.000000" />
      <Property name="FleeRepositionUrgentAngleMax" value="180.000000" />
      <Property name="FleeRange" value="600.000000" />
      <Property name="FleeMinTime" value="1.500000" />
      <Property name="FleeMaxTime" value="8.000000" />
      <Property name="FleeUrgentRange" value="100.000000" />
      <Property name="PlanetFleeHeightExtra" value="200.000000" />
      <Property name="AttackTargetMinRange" value="300.000000" />
      <Property name="AttackTargetMaxRange" value="600.000000" />
      <Property name="AttackTargetOffsetMin" value="100.000000" />
      <Property name="AttackTargetOffsetMax" value="500.000000" />
      <Property name="AttackTargetSwitchTargetTime" value="10.000000" />
    </Property>]]
end

function AddShield (ShieldID)
    return
[[<Property name="ShieldTable" value="GcSpaceshipShieldData">
      <Property name="Id" value="]]..ShieldID..[[" />
      <Property name="Health" value="5600" />
      <Property name="LevelledExtraHealth" value="19000" />
      <Property name="RechargeTime" value="5.000000" />
      <Property name="RechargeDelayTime" value="6.000000" />
	  <Property name="StartDepletedWhenEnabled" value="false" />
      <Property name="DamageMulOverride" value="" />
    </Property>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["LUA_AUTHOR"]		= LuaAuthor,
["NMS_VERSION"]		= GameVersion,
["EXML_CREATE"] = "FALSE",
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {
{	
	["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"},
	["MXML_CHANGE_TABLE"] 	= 
	{
		{
			["PRECEDING_KEY_WORDS"] = {"PlanetaryPirateRaidSpawns"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"MinRange", RaidSpawnRange}
			}
		},
		{--Changes HARDBOUNTY2 to use PIRATE_HARD ships instead of PIRATE ships
			["SPECIAL_KEY_WORDS"] = {"Id","HARDBOUNTY2"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"AttackData", "PIRATE_HARD"}			--"PIRATE"
			}
		},
		{--Changes the Base Armourer mission to use PIRATE ships instead of PIRATE_EASY ships
			["SPECIAL_KEY_WORDS"] = {"Id","WEAPGUY_BOUNTY"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"AttackData", "PIRATE"}			--"PIRATE_EASY"
			}
		},
	}
},
{["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN",
["MXML_CHANGE_TABLE"] = {
	--Adding new custom Behaviours and Shields
	{
		["SPECIAL_KEY_WORDS"] = {"BehaviourTable","GcShipAIAttackData"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPlanetBehaviour ("PLANET_EZ")
	},
	{
		["SPECIAL_KEY_WORDS"] = {"BehaviourTable","GcShipAIAttackData"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPlanetBehaviour ("PLANET_HRD")
	},
	{
		["SPECIAL_KEY_WORDS"] = {"BehaviourTable","GcShipAIAttackData"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddSpaceBehaviour ("SPACE_EZ")
	},
	{
		["SPECIAL_KEY_WORDS"] = {"BehaviourTable","GcShipAIAttackData"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddSpaceBehaviour ("SPACE_HRD")
	},
	{
		["SPECIAL_KEY_WORDS"] = {"BehaviourTable","GcShipAIAttackData"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddSquadronBehaviour ("SQUADRON_MED")
	},
	{
		["SPECIAL_KEY_WORDS"] = {"ShieldTable","GcSpaceshipShieldData"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddShield ("SLOW_STRONG")
	},
	{
		["SPECIAL_KEY_WORDS"] = {"ShieldTable","GcSpaceshipShieldData"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddShield ("HUGE")
	},
	
	--Definitions
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_NOSHIELD"},				--Added in NMS v4.4
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_EZ"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET_EZ"},	--default "PLANET"
		{"Engine", "SPACE_EASY"},			--default "SPACE_EASY"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", "PIRATLTEASY"},			--default "PIRATELOOT"			Note, changing to a custom modded lootpool such as PIRATLTEASY requires it to be defined and added to REWARDTABLE.MBIN, or this won't work.
		{"Health", math.floor(ShipHull*4100*0.75)},				--default 4100
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*15000/1.5)},		--default 15000
		{"Shield", "WEAK"},					--default "WEAK"
		{"LaserDamageLevel", 1},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_EASY"},				--Used in vanilla for BOUNTY1 (wandering easy), EASYBOUNTY1 & EASYBOUNTY2 (space station mission),	PIRATE_SQUAD (Possibly the additional enemy pirates in the space station missions?),	& Base Armourer unique mission
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_EZ"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET_EZ"},	--default "PLANET"
		{"Engine", "SPACE_EASY"},			--default "SPACE_EASY"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", "PIRATLTEASY"},			--default "PIRATELOOT"			Note, changing to a custom modded lootpool such as PIRATLTEASY requires it to be defined and added to REWARDTABLE.MBIN, or this won't work.
		{"Health", math.floor(ShipHull*5200*0.75)},				--default 5200
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*14000*0.75)},		--default 14000
		{"Shield", "STANDARD"},				--default "STANDARD"
		{"LaserDamageLevel", 1},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE"},					--Used in vanilla for BOUNTY2 (wandering medium), MEDBOUNTY1, MEDBOUNTY2, & HARDBOUNTY2 (space station mission), & PP_BOUNTY (planet procedural mission)
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},				--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"Engine", "SPACE_HARD"},			--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", math.floor(ShipHull*5200*1.4)},				--default 5200
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*14000*1.4)},		--default 14000
		{"Shield", "STRONG"},				--default "STRONG"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_HARD"},				--Used in vanilla for BOUNTY3 (wandering hard), HARDBOUNTY1  (space station mission)
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_HRD"},				--default "SPACE"
		{"PlanetBehaviour", "PLANET_HRD"},		--default "PLANET"
		{"Engine", "SPACE_HARD"},			--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", "PIRATLTHARD"},			--default "PIRATELOOT"			(Custom Lootpool)
		{"Health", math.floor(ShipHull*6500*2.3)},			--default 6500
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*14000*3)},	--default 14000
		{"Shield", "SLOW_STRONG"},			--default "FAST_STRONG"
		{"LaserDamageLevel", 3},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","POLICE"},					--Sentinel Interceptors, presumably?
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},				--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"Engine", "SPACE_HARD"},			--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		Probably maps to "POLICELOOT" somehow
		{"Health", math.floor(ShipHull*11500*0.8)},			--default 11500
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*34000*0.8)},	--default 34000
		{"Shield", "FAST"},					--default "FAST"
		{"LaserDamageLevel", 2},			--default 1
		}},	
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADER"},
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_EZ"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"Engine", "SPACE_EASY"},			--default "SPACE_EASY"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", "TRADERLOOT"},			--default "TRADERLOOT"
		{"Health", math.floor(ShipHull*9000*0.13)},			--default 9000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*16000*0.13)},		--default 16000
		{"Shield", "HUGE"},					--default "STANDARD"
		{"LaserDamageLevel",2},				--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADER_ESCORT"},
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_HRD"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"Engine", "SPACE_HARD"},			--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", "ESCORTLOOT"},			--default "TRADERLOOT"			(Custom Lootpool)
		{"Health", math.floor(ShipHull*14000*0.75)},			--default 14000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*36000*0.75)},	--default 36000
		{"Shield", "FAST"},					--default "FAST"
		{"LaserDamageLevel",2},				--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING"},				--Planetary Pirate raids on buildings, while the player is still on the ground. HOWEVER, vanilla seems bugged where at Planetary Archives, pirates use a "normal" behaviour instead of RAID_BUILDING
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},				--default "SPACE"
		{"PlanetBehaviour", "RAID_BUILDING"},	--default "RAID_BUILDING"
		{"Engine", "SPACE_EASY"},			--default "SPACE_EASY"
		{"PlanetEngine", "RAID_BUILDING"},	--default "RAID_BUILDING"
		{"RewardCount", 2},					--default 2
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", math.floor(ShipHull*9000)},			--default 9000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*16000)},		--default 16000
		{"Shield", "STANDARD"},				--default "STANDARD"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","RAID_DOGFIGHT"},				--Planetary Pirate raids on buildings, once the player is in the air in their starship the pirates swap to using this behaviour
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},				--default "SPACE"
		{"PlanetBehaviour", "PLANET_EZ"},	--default "PLANET"
		{"Engine", "SPACE_EASY"},			--default "SPACE_EASY"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 2},					--default 2
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", math.floor(ShipHull*9000)},			--default 9000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*16000)},		--default 16000
		{"Shield", "STANDARD"},				--default "STANDARD"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_FLYBY"},				--Unsure, some kind of pirate attack, maybe on planets?
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_EZ"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET_EZ"},	--default "PLANET"
		{"Engine", "SPACE_EASY"},			--default "SPACE_EASY"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 2},					--default 2
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", math.floor(ShipHull*5200)},			--default 5200
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*14000)},		--default 14000
		{"Shield", "STANDARD"},				--default "STANDARD"
		{"LaserDamageLevel", 2},			--default 1
		}},
			--(Wingmen use SQUADGUN in METADATA\PROJECTILES\PROJECTILETABLE.MBIN for damage purposes)
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_C"},				--Wingmen in the player's squadron, Class C
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SQUADRON_WEAK"},		--default "SQUADRON_WEAK"
		{"PlanetBehaviour", "PLANET_EZ"},	--default "PLANET"
		{"Engine", "SQUADRON_SLOW"},		--default "SQUADRON_SLOW"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", math.floor(ShipHull*3000*0.75)},			--default 3000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*3000*0.75)},		--default 3000
		{"Shield", "NULL"},					--default "NULL"
		{"LaserDamageLevel", 1},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_B"},				--Wingmen in the player's squadron, Class B
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SQUADRON_MED"},		--default "SQUADRON_WEAK"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"Engine", "SQUADRON_SLOW"},		--default "SQUADRON_SLOW"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", math.floor(ShipHull*5000*0.75)},			--default 5000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*5000*0.75)},		--default 5000
		{"Shield", "STANDARD"},				--default "STRONG"
		{"LaserDamageLevel", 1},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_A"},				--Wingmen in the player's squadron, Class A
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SQUADRON_MED"},		--default "SQUADRON_STRONG"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"Engine", "SQUADRON_FAST"},		--default "SQUADRON_FAST"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", math.floor(ShipHull*5000)},			--default 5000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*5000)},		--default 5000
		{"Shield", "STRONG"},				--default "STRONG"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_S"},				--Wingmen in the player's squadron, Class S
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SQUADRON_STRONG"},	--default "SQUADRON_STRONG"
		{"PlanetBehaviour", "PLANET_HRD"},	--default "PLANET"
		{"Engine", "SQUADRON_FAST"},		--default "SQUADRON_FAST"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", math.floor(ShipHull*6000*1.25)},			--default 6000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*6000*1.25)},		--default 6000
		{"Shield", "FAST_STRONG"},			--default "STRONG"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","ALIEN_HOSTILE"},				--ALIEN_PIRATES, possibly part of a Season?
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", math.floor(ShipHull*13000)},			--default 13000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*24000)},		--default 24000
		{"Shield", "NULL"},			--default "NULL"
		{"LaserDamageLevel", 1},			--default 0
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","POLICEFREIGHTER"},				--Sentinel Freighters fought at wanted level 5
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*66000)},					--default 66000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*605000)},	--default 605000
		{"Shield", "PIRATE_FREIGHT"},			--default "PIRATE_FREIGHT"
		{"LaserDamageLevel", 2},			--default 1
		{"DamageMultiplier", "BOSSFREI_HULL"},			--default "FREIGHT_HULL", BOSSFREI_HULL added by PTSd in "PTSd Weapons Rebalance.lua"
		}},
	--The following were added in NMS v4.4:
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER"},					--Neutral Freighters?
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*40000)},					--default 40000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*220000)},	--default 220000
		{"Shield", "FREIGHTER"},				--default "FREIGHTER"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER_TINY"},					--Neutral Tiny Freighters?
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*2000)},					--default 2000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*9000)},	--default 9000
		{"Shield", "FREIGHTER"},				--default "FREIGHTER"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER_SMALL"},					--Neutral Small Freighters?
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*4000)},					--default 4000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*12000)},	--default 12000
		{"Shield", "FREIGHTER"},				--default "FREIGHTER"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","FRIGATE"},					--Neutral Frigates?
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", "PIRATLTEASY"},			--default ""
		{"Health", math.floor(ShipHull*7000)},					--default 7000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*18000)},	--default 18000
		{"Shield", ""},				--default ""
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER_CAP"},					--Neutral Capital Freighters?
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*105000)},					--default 105000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*3200000)},	--default 3200000
		{"Shield", "FREIGHTER"},				--default "FREIGHTER"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FREIGHT"},					--Pirate Dreadnought
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(BossFreighterParts*105000*4)},					--default 105000
		{"LevelledExtraHealth", math.floor(BossFreighterPartsPerLevel*995000*4)},	--default 995000
		{"Shield", "PIRATE_FREIGHT"},				--default "PIRATE_FREIGHT"
		{"LaserDamageLevel", 2},			--default 1
		{"DamageMultiplier", "BOSSFREI_HULL"},			--default "FREIGHT_HULL", BOSSFREI_HULL added by PTSd in "PTSd Weapons Rebalance.lua"
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FRIG"},					--Pirate Frigates
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_EASY"},		--default "SPACE_EASY"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},			--default ""
		{"Health", math.floor(BossFreighterParts*13125*0.25)},					--default 13125
		{"LevelledExtraHealth", math.floor(BossFreighterPartsPerLevel*124375*0.25)},	--default 124375
		{"Shield", ""},				--default ""
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","CIV_LEADER"},					--Civilian freighter fighting pirate dreadnought?
	["PRECEDING_FIRST"] = "true",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_EASY"},		--default "SPACE_EASY"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(1*5000000)},					--default 5000000
		{"LevelledExtraHealth", math.floor(1*0)},	--default 0
		{"Shield", "CIVLEAD_SHIELD"},				--default "CIVLEAD_SHIELD"
		{"LaserDamageLevel", 2},			--default 1
		}},
	
	--Behaviours
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_EZ"},				--Custom Behaviour
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 3},						
		{"GunFireRate", 0.08},							
		{"LaserHealthPoint", 40},							--LaserHealthPoint determines at what % of remaining health the enemy starship will start using their lasers instead of only their "photon cannon"
		{"AttackWeaponRange", 1200},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 1},
		{"AttackShootTimeMax", 10},
		{"AttackMaxTime", 40},
		{"AttackApproachOffset", 800},
		{"AttackApproachMinRange", 40},						
		{"AttackTooCloseRange", 150},						
		{"AttackFlybyOffset", -200},
		{"AttackBoostAngle", 10},
		{"NumHitsBeforeBail", 3000},						
		{"NumHitsBeforeReposition", 2000},					
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.5},						--5.5
		{"GunFireRate", 0.06},								--0.15
		{"LaserHealthPoint", 50},							--50
		{"AttackWeaponRange", 1600},						--700
		{"AttackShootWaitTime", 0.1},						--1
		{"AttackShootTimeMin", 5},							--1
		{"AttackShootTimeMax", 20},							--3
		{"AttackMaxTime", 50},								--10
		{"AttackApproachOffset", 300},						--180
		{"AttackApproachMinRange", 40},						--300
		{"AttackTooCloseRange", 120},						--800
		{"AttackFlybyOffset", 50},							--50
		{"AttackBoostAngle", 10},							--15
		{"NumHitsBeforeBail", 4500},						--3000
		{"NumHitsBeforeReposition", 3000},					--2000
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_HRD"},				--Custom Behaviour
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1},
		{"GunFireRate", 0.04},								
		{"LaserHealthPoint", 70},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 10},
		{"AttackShootTimeMax", 40},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						
		{"AttackTooCloseRange", 100},						
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 6000},						
		{"NumHitsBeforeReposition", 4000},					
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_EZ"},				--Custom Behaviour
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 2.7},
		{"GunFireRate", 0.08},
		{"LaserHealthPoint", 40},
		{"AttackWeaponRange", 800},
		{"AttackShootWaitTime", 0.1},						--N/A			(0)
		{"AttackShootTimeMin", 5},
		{"AttackShootTimeMax", 15},
		{"AttackMaxTime", 20},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},
		{"AttackTooCloseRange", 150},
		{"AttackFlybyOffset", -150},
		{"AttackBoostAngle", 10},
		{"NumHitsBeforeBail", 3000},
		{"NumHitsBeforeReposition", 1000},
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.35},						--5
		{"GunFireRate", 0.06},								--0.15
		{"LaserHealthPoint", 50},							--50
		{"AttackWeaponRange", 1100},						--500
		{"AttackShootWaitTime", 0.1},						--0.1			(0)
		{"AttackShootTimeMin", 10},							--2.5
		{"AttackShootTimeMax", 30},							--5
		{"AttackMaxTime", 30},								--6
		{"AttackApproachOffset", 250},						--150
		{"AttackApproachMinRange", 40},						--300
		{"AttackTooCloseRange", 120},						--650
		{"AttackFlybyOffset", 50},							--150
		{"AttackBoostAngle", 210},							--40
		{"NumHitsBeforeBail", 4500},						--3000
		{"NumHitsBeforeReposition", 1500},					--1000
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_HRD"},			--Custom Behaviour
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 0.9},
		{"GunFireRate", 0.04},
		{"LaserHealthPoint", 70},
		{"AttackWeaponRange", 1400},
		{"AttackShootWaitTime", 0.1},						--N/A			(0)
		{"AttackShootTimeMin", 20},
		{"AttackShootTimeMax", 40},
		{"AttackMaxTime", 40},
		{"AttackApproachOffset", 300},
		{"AttackApproachMinRange", 40},
		{"AttackTooCloseRange", 100},
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 6000},
		{"NumHitsBeforeReposition", 2000},
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 2},							--3				(0.9)
		{"GunFireRate", 0.09},								--0.15			(0.06)
		{"LaserHealthPoint", 30},							--0
		{"AttackWeaponRange", 500},							--500
		{"AttackShootWaitTime", 0.1},						--0.1			(0)
		{"AttackShootTimeMin", 5},							--2.5
		{"AttackShootTimeMax", 10},							--5
		{"AttackMaxTime", 12},								--6
		{"AttackApproachOffset", 100},						--150
		{"AttackApproachMinRange", 200},					--300
		{"AttackTooCloseRange", 400},						--650
		{"AttackFlybyOffset", 100},							--150
		{"AttackBoostAngle", 60},							--40
		{"NumHitsBeforeBail", 5000},						--3000
		{"NumHitsBeforeReposition", 1750},					--1000
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_WEAK"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 5},							--6
		{"GunFireRate", 0.3},								--0.3
		{"LaserHealthPoint", 10},							--0
		{"AttackWeaponRange", 700},							--700
		{"AttackShootWaitTime", 3},							--4
		{"AttackShootTimeMin", 1},							--1
		{"AttackShootTimeMax", 1.5},						--1.5
		{"AttackMaxTime", 7},								--10
		{"AttackApproachOffset", 200},						--200
		{"AttackApproachMinRange", 350},					--400
		{"AttackTooCloseRange", 225},						--250
		{"AttackFlybyOffset", -200},						--	-200
		{"AttackBoostAngle", 10},							--10
		{"NumHitsBeforeBail", 700	},						--600
		{"NumHitsBeforeReposition", 1100},					--1000
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_MED"},			--Custom Behaviour
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 3},							--4
		{"GunFireRate", 0.2},								--0.2
		{"LaserHealthPoint", 15},							--15
		{"AttackWeaponRange", 850},							--850
		{"AttackShootWaitTime", 2},							--2
		{"AttackShootTimeMin", 1.5},						--1.5
		{"AttackShootTimeMax", 2.5},						--2.5
		{"AttackMaxTime", 8.5},								--8
		{"AttackApproachOffset", 200},						--200
		{"AttackApproachMinRange", 300},					--350
		{"AttackTooCloseRange", 200},						--200
		{"AttackFlybyOffset", -200},						--	-200
		{"AttackBoostAngle", 10},							--10
		{"NumHitsBeforeBail", 800	},						--800
		{"NumHitsBeforeReposition", 1300},					--1100
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_STRONG"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.5},						--2
		{"GunFireRate", 0.1},								--0.1
		{"LaserHealthPoint", 20},							--0
		{"AttackWeaponRange", 1000},						--1000
		{"AttackShootWaitTime", 1},							--2
		{"AttackShootTimeMin", 2},							--2
		{"AttackShootTimeMax", 3},							--3
		{"AttackMaxTime", 10},								--10
		{"AttackApproachOffset", 200},						--200
		{"AttackApproachMinRange", 250},					--300
		{"AttackTooCloseRange", 175},						--200
		{"AttackFlybyOffset", -200},						--	-200
		{"AttackBoostAngle", 10},							--10
		{"NumHitsBeforeBail", 900	},						--600
		{"NumHitsBeforeReposition", 1500},					--1000
		}},
	
	--Engines
		--Applying the same PowerSettingEngineMul multiplier from "PTSd Power Settings.lua" to BoostSpeed, to compensate how diverting power to engines makes it easier to escape pirates
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_EASY"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--10
		{"MaxSpeed", 140},									--60		(200)
		{"BoostSpeed", 1067*1.3},								--900		NOTE: Often you can still outrun enemy ships even if your ship's "CombatEngine" 's "BoostMaxSpeed" is only ~75% of this value, presumably due to how the enemy ships occassionally stop boosting when pursuing the player
		{"TurnMin", 0.6},									--0.6
		{"DirectionBrake", 4},								--5
		{"Roll", 2},										--1
		{"MinHeight", 15},									--30
		{"Hovering", "false"},								--"false"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_HARD"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--20
		{"MaxSpeed", 200},									--90		(250)
		{"BoostSpeed", 1600*1.3},								--1200		(e.g. a value of 1600 means in practice you can generally outrun them with ~1200u/s space combat speed)
		{"TurnMin", 0.7},									--0.7
		{"DirectionBrake", 2.5},							--3
		{"Roll", 1.2},										--0.6
		{"MinHeight", 15},									--30
		{"Hovering", "false"},								--"false"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_EASY"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--50
		{"MaxSpeed", 100},									--80
		{"BoostSpeed", 120*1.3},								--180
		{"TurnMin", 0.6},									--0.4
		{"DirectionBrake", 2.5},							--3
		{"Roll", 2},										--1
		{"MinHeight", 25},									--50
		{"Hovering", "true"},								--"false"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_HARD"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 15},									--60
		{"MaxSpeed", 160},									--130
		{"BoostSpeed", 180*1.3},								--180
		{"TurnMin", 1.2},									--0.8
		{"DirectionBrake", 1},								--1.2
		{"Roll", 2},										--1
		{"MinHeight", 12},									--25
		{"Hovering", "true"},								--"false"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--10
		{"MaxSpeed", 60},									--60
		{"BoostSpeed", 120*1.3},								--120
		{"TurnMin", 1},										--1
		{"DirectionBrake", 20},								--20
		{"Roll", 1},										--1
		{"MinHeight", 20},									--30
		{"Hovering", "false"},								--"false"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_SLOW"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 0},									--0
		{"MaxSpeed", 200},									--200
		{"BoostSpeed", 1200},								--1000
		{"TurnMin", 0.6},									--0.6
		{"DirectionBrake", 8},								--8
		{"Roll", 1},										--1
		{"MinHeight", 30},									--30
		{"Hovering", "false"},								--"false"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_FAST"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 0},									--0
		{"MaxSpeed", 300},									--300
		{"BoostSpeed", 1800},								--1500
		{"TurnMin", 0.8},									--0.8
		{"DirectionBrake", 10},								--10
		{"Roll", 1.5},										--1.5
		{"MinHeight", 15},									--15
		{"Hovering", "false"},								--"false"
		}},
	
	--Shields
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER"},			--added in NMS v4.4
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*25000*0.67)},						--25000
		{"LevelledExtraHealth", math.floor(ShipShield*120000*0.67)},		--120000
		{"RechargeTime", 0},										--0
		{"RechargeDelayTime", 0},									--0
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","CIVLEAD_SHIELD"},		--added in NMS v4.4
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(1*5000000*1)},								--5000000
		{"LevelledExtraHealth", math.floor(1*19000*1)},					--19000
		{"RechargeTime", 0},										--0
		{"RechargeDelayTime", 0},									--0
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FREIGHT"},		--added in NMS v4.4
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(1*10000000*1)},								--10000000
		{"LevelledExtraHealth", math.floor(1*0*1)},					--0
		{"RechargeTime", 0},										--0
		{"RechargeDelayTime", 0},									--0
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","WEAK"},					--added in NMS v4.4
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*1200*0.75)},								--1200
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*12000*0.75)},					--12000
		{"RechargeTime", 18},										--10
		{"RechargeDelayTime", 10},									--12
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","STANDARD"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*5600*0.667)},								--5600
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*19000*0.667)},					--19000
		{"RechargeTime", 11},										--5
		{"RechargeDelayTime", 6},									--6
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","STRONG"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*10000*0.75)},								--10000
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*35000*0.667)},					--35000
		{"RechargeTime", 18},										--8
		{"RechargeDelayTime", 10},									--10
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","FAST"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*2000)},								--2000
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*10000*0.667)},					--10000
		{"RechargeTime", 4},										--1
		{"RechargeDelayTime", 4},									--3
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","FAST_STRONG"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*10000*0.75)},								--10000
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*25000*0.75)},					--25000
		{"RechargeTime", 8},										--3
		{"RechargeDelayTime", 5},									--4
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","NULL"},
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*0)},									--0		A value of 0 makes the shield invincible
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*0)},						--0
		{"RechargeTime", 5},										--5
		{"RechargeDelayTime", 10},									--10
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SLOW_STRONG"},					--Custom Shield
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*15000)},										--Custom	[60000]
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*38000)},					--Custom	[150000]
		{"RechargeTime", 54},										--Custom	[48]
		{"RechargeDelayTime", 6},									--Custom	[4]
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","HUGE"},							--Custom Shield
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*23000)},								--Custom	[90000]
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*55000)},					--Custom	[220000]
		{"RechargeTime", 72},										--Custom	[96]
		{"RechargeDelayTime", 12},									--Custom	[12]
		}},
	}},
--WIP
--[[
{	
	["MBIN_FILE_SOURCE"] 	= {"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_TURRET_L/ENTITIES/TURRET_L.ENTITY.MBIN"},
	["MXML_CHANGE_TABLE"] 	= 
	{
		{--Applies health increases to civilian Freighter turrets??
			["MATH_OPERATION"] 		= "*",
			["REPLACE_TYPE"] 		= "",
			["INTEGER_TO_FLOAT"] = "PRESERVE",
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Health", 10 * ShipHull}						--3000
			}
		},
		{--Applies health increases to civilian Freighter turrets??
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["INTEGER_TO_FLOAT"] = "PRESERVE",
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"LevelledExtraHealth", math.floor(10 * ShipHullPerLevel * 14000)}				--0
			}
		},
	}
},
{	
	["MBIN_FILE_SOURCE"] 	= {"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_TURRET_R/ENTITIES/TURRET_R.ENTITY.MBIN"},
	["MXML_CHANGE_TABLE"] 	= 
	{
		{--Applies health increases to civilian Freighter turrets??
			["MATH_OPERATION"] 		= "*",
			["REPLACE_TYPE"] 		= "",
			["INTEGER_TO_FLOAT"] = "PRESERVE",
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Health", 10 * ShipHull}						--3000
			}
		},
		{--Applies health increases to civilian Freighter turrets??
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["INTEGER_TO_FLOAT"] = "PRESERVE",
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"LevelledExtraHealth", math.floor(10 * ShipHullPerLevel * 14000)}				--0
			}
		},
	}
},
{	
	["MBIN_FILE_SOURCE"] 	= {"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_TURRET/ENTITIES/TURRET.ENTITY.MBIN"},
	["MXML_CHANGE_TABLE"] 	= 
	{
		{--Applies health increases to civilian Freighter turrets??
			["MATH_OPERATION"] 		= "*",
			["REPLACE_TYPE"] 		= "",
			["INTEGER_TO_FLOAT"] = "PRESERVE",
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Health", 10 * ShipHull}						--3000
			}
		},
		{--Applies health increases to civilian Freighter turrets??
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["INTEGER_TO_FLOAT"] = "PRESERVE",
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"LevelledExtraHealth", math.floor(10 * ShipHullPerLevel * 14000)}				--0
			}
		},
	}
},
]]
}}}}

local ChangesToLargerBattles = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

for i = 1, #AddedSquadrons do
	local AddAmount = AddedSquadrons[i]
			
			ChangesToLargerBattles[#ChangesToLargerBattles+1] =
			{
				["MATH_OPERATION"] 		= "+",
				["SPECIAL_KEY_WORDS"] = {"PoliceSpawns", "GcPoliceSpawnWaveData"},
				["SECTION_ACTIVE"] = {i-1,},
				["AFTER_KEY_WORDS"] = {"MaxCountsForFireteamSize"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"MaxCountsForFireteamSize", AddAmount},
					{"MaxCountsForFireteamSize", AddAmount},
					{"MaxCountsForFireteamSize", AddAmount},
					{"MaxCountsForFireteamSize", AddAmount}
				}
			}
end
for i = 1, #LargerBattleChanges do
	local SceneID = LargerBattleChanges[i][1][1]
	local Entries = LargerBattleChanges[i][2]
	
	for j = 1, #Entries do
		local EntryName = Entries[j][1][1]
		local EntryValue = Entries[j][1][2]
		local EntryIndex = Entries[j][1][3]
		local EntrySubLevel = Entries[j][1][4]
		
		local SpreadCounts = Entries[j][2]
	
		for k = 1, #SpreadCounts do
		SpreadCount = SpreadCounts[k][1]
			ReplacerX = SpreadCounts[k][2]
			ReplacerY = SpreadCounts[k][3]
	
			ChangesToLargerBattles[#ChangesToLargerBattles+1] =
			{
				["PRECEDING_FIRST"] = "true",
				["PRECEDING_KEY_WORDS"] = {SceneID},
				["SPECIAL_KEY_WORDS"] = {EntryName,	EntryValue},
				["SECTION_ACTIVE"] = {EntryIndex,},
				["AFTER_KEY_WORDS"] = {SpreadCount},
				["SUB_LEVEL"] = EntrySubLevel,
				["REPLACE_TYPE"]         = "ONCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"X", ReplacerX},
					{"Y", ReplacerY}
				}
			}
		end
	end
end
for i = 1, #LargerPirateBountyChanges do
	local SceneID = LargerPirateBountyChanges[i][1][1]
	local Entries = LargerPirateBountyChanges[i][2]
	
	for j = 1, #Entries do
		--local EntryName = Entries[j][1][1]
		--local EntryValue = Entries[j][1][2]
		local EntryId = Entries[j][1][3]
		
		local SpreadCounts = Entries[j][2]
	
		for k = 1, #SpreadCounts do
		SpreadCount = SpreadCounts[k][1]
			ReplacerX = SpreadCounts[k][2]
			ReplacerY = SpreadCounts[k][3]
	
			ChangesToLargerBattles[#ChangesToLargerBattles+1] =
			{
				["PRECEDING_FIRST"] = "true",
				["PRECEDING_KEY_WORDS"] = {SceneID},
				["SPECIAL_KEY_WORDS"] = {"Id", EntryId},
				["AFTER_KEY_WORDS"] = {SpreadCount},
				["REPLACE_TYPE"]         = "ONCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"X", ReplacerX},
					{"Y", ReplacerY}
				}
			}
		end
	end
end
for i = 1, #MiscLargerChanges do
	local Name = MiscLargerChanges[i][1][1]
	local Value = MiscLargerChanges[i][1][2]
	local SpreadCounts = MiscLargerChanges[i][2]
	
		for j = 1, #SpreadCounts do
		SpreadCount = SpreadCounts[j][1]
			ReplacerX = SpreadCounts[j][2]
			ReplacerY = SpreadCounts[j][3]
	
			ChangesToLargerBattles[#ChangesToLargerBattles+1] =
			{
				["SPECIAL_KEY_WORDS"] = {Name, Value},
				["PRECEDING_KEY_WORDS"] = {SpreadCount},
				["REPLACE_TYPE"]         = "ONCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"X", ReplacerX},
					{"Y", ReplacerY}
				}
			}
		end
end

local ChangesToMBINChangeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]

for i = 1, #BossFreighterPartsChanges do
	local FilePath = BossFreighterPartsChanges[i][1][1]
	local Health = BossFreighterPartsChanges[i][1][2]
	local LevelledExtraHealth = BossFreighterPartsChanges[i][1][3]
	local DamageMultiplier = BossFreighterPartsChanges[i][1][4]
	local GivesReward = BossFreighterPartsChanges[i][1][5]
			
			ChangesToMBINChangeTable[#ChangesToMBINChangeTable+1] =
			{
				["MBIN_FILE_SOURCE"] 	= {FilePath},
				["MXML_CHANGE_TABLE"] 	= 
				{
					{
						["INTEGER_TO_FLOAT"] = "PRESERVE",
						["VALUE_CHANGE_TABLE"] 	=
						{
							{"Health", 	Health},
							{"LevelledExtraHealth", 	LevelledExtraHealth},
							{"DamageMultiplier", 	DamageMultiplier},
							{"GivesReward", 	GivesReward},
							{"HideReward", 	"true"},	--"false"
						}
					}
				}
			}
end

for i = 1, #CargoPodChanges do
	local FilePath = CargoPodChanges[i][1][1]
	local Health = CargoPodChanges[i][1][2]
	local LevelledExtraHealth = CargoPodChanges[i][1][3]
	local DamageMultiplier = CargoPodChanges[i][1][4]
	local GivesReward = CargoPodChanges[i][1][5]
	local OutLawReward = CargoPodChanges[i][1][6]
			
			ChangesToMBINChangeTable[#ChangesToMBINChangeTable+1] =
			{
				["MBIN_FILE_SOURCE"] 	= {FilePath},
				["MXML_CHANGE_TABLE"] 	= 
				{
					{
						["INTEGER_TO_FLOAT"] = "PRESERVE",
						["VALUE_CHANGE_TABLE"] 	=
						{
							{"Health", 	Health},
							{"LevelledExtraHealth", 	LevelledExtraHealth},
							{"DamageMultiplier", 	DamageMultiplier},
							{"GivesReward", 	GivesReward},
							{"PirateSystemAltReward", 	OutLawReward},
							{"HideReward", 	HiddenCargo},	--"false"
						}
					}
				}
			}
end