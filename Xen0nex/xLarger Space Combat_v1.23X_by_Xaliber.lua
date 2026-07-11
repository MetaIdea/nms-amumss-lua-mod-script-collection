Author = "Xaliber"
AuthorLua = "Xen0nex"
ModName = "Larger Space Combat"
ModNameType = "Tweak"
BaseDescription = "Larger Space Combat - separate from Reworked Space Combat for modularity"
GameVersion = "6.4"
ModVersion = "1.23"

--Adds additional Squadrons to appear at each Wanted Level, for all multiplayer group sizes
AddedSquadrons =
{
	1,													--Wanted Level 1.	Default is 1 Squadron of Interceptors in solo, 2/2/2 in multiplayer groups
	2,													--Wanted Level 2.	Default is 1 Squadron of Interceptors in solo, 2/3/4 in multiplayer groups
	2,													--Wanted Level 3.	Default is 2 Squadron of Interceptors in solo, 3/5/6 in multiplayer groups
	0,													--Wanted Level 4.	Default is 3 Squadron of Interceptors in solo, 4/6/8 in multiplayer groups
	--0													--Wanted Level 5.	Default is 1 Squadron of Sentinel Freighters in solo, 1/1/1 in multiplayer groups (Each Freighter comes with it's own set of 2 Squadrons of 2 Interceptors each, so 4 Interceptors per Freighter)
		--Changing the value for Wanted Level 5 doesn't seem to have an effect
}
--Sets how many Interceptors/Freighters appear in each Squadron at each Wanted level, for all multiplayer group sizes
WantedSquadron1 =		1								--1 Interceptor per Squadron
WantedSquadron2 =		1								--1 Interceptor per Squadron
WantedSquadron3 =		1								--1 Interceptor per Squadron
WantedSquadron4 =		2								--1 Interceptor per Squadron
WantedSquadron5 =		2								--1 Sentinel Freighter per Squadron (Each Freighter comes with it's own set of 2 Squadrons of 2 Interceptors each, so 4 Interceptors per Freighter)

--Adjusts some settings for Planetary Pirate Raids
RaidSpawnRange =				3200						--200	(No apparent effect) How far away from the player they will spawn when the player is not near an eligible building
BuildingRaidSpawnRange =		3200						--800	How far away from the player they will spawn when attacking a building
--RaidSpawnTime =			0								--0		Possibly how long between the event starting and the actual ships appearing? (No apparent effect)

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
					{"Spread",	30,			80},	--20,		30
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
			--This may control several things: it appears to act as a multiplier to the amount of pirates spawned during space station pirate hunting missions. However it does NOT affect the amount of pirates spawned during "hostile scan" space pirate encounters
				{
					"PirateSpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	80,			80},	--80,		80
					{"Count",	2,			2}		--1,		1		(1,			6)		[1,		3]
				}
			},
			{--Standard (regular starship)
			--This acts as a multiplier to the amount of pirates spawned during "hostile scan" space pirate encounters
				{
					"PirateSpawns", "GcAIShipSpawnData", "1",	4
				},
				{
					{"Spread",	80,			80},	--80,		80
					{"Count",	1,			1}		--1,		1		(2,			6)		[1,		3]
				}
			},
		}
	},
	{
		{
			"PlanetaryPirateFlybySpawns"		--These seem to be the pirates spawned when pirates attack you on the surface with no eligible buildings nearby, "PLANET_FLYBY"
		},
		{
			{--Standard (regular starship)
				{
					"PlanetaryPirateFlybySpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		3
				}
			}
		}
	},
	{
		{
			"PlanetaryPirateRaidSpawns"		--These seem to be the pirates spawned when pirates attack a planetary building you are near, "RAID_BUILDING"
		},
		{
			{--Standard (regular starship)
				{
					"PlanetaryPirateRaidSpawns", "GcAIShipSpawnData", "0",	4
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			3},		--1,		1			For each "Count" here, the game appears to randomly spawn 1x~4x actual Pirate Raiders?
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
					{"Count",	5,			12}		--2,		2		(10,			24)
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
					{"Count",	1,			3}		--1,		1
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
}

--Various types of battles (e.g. with or against freighters), reorganized in NMS v6.4
SpaceBattleSpawnsChanges =
{
	{
		{
			"None"				--This seems to be Civilian Freighters / starships? (doesn't attack freighters)
		},
		{
			{--Standard??? (regular starship???)
				{
					"AlliedFlagshipSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Standard??? (regular starship???)
				{
					"AlliedInitialSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Hostile flagship/regular starship??? (doesn't attack freighters)
				{
					"HostileFlagshipSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Hostile Standard??? (Hostile regular starship???)
				{
					"HostileInitialFlybySpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Hostile Standard??? (Hostile regular starship???)
				{
					"HostileInitialSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Hostile Standard repeating every 30 seconds??? (Hostile regular starship???)
				{
					"HostileRecurringSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			
			{--Hostile Standard reinforcements??? (Hostile regular starship???)
				{
					"HostileFrigateReinforcementsSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
		}
	},
	{
		{
			"PirateShipsEasy"				--This seems to be civilian freighter vs. Pirate starship battles
		},
		{
			{--Freighter
				{
					"AlliedFlagshipSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Freighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	7
				},
				{
					{"Spread",	1500,		2000},	--1500,		2000
					{"Count",	2,			5}		--2,		3
				}
			},
			{--SmallFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	9
				},
				{
					{"Spread",	500,		1000},	--500,		1000
					{"Count",	2,			4}		--1,		2
				}
			},
			{--TinyFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	11
				},
				{
					{"Spread",	400,		400},	--400,		400
					{"Count",	2,			3}		--2,		2
				}
			},
			{--Standard (regular starship)
				{
					"AlliedInitialSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	4,			5}		--2,		2
				}
			},
			{--Hostile flagship/regular starship???
				{
					"HostileFlagshipSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	0,			0}		--0,		0
				}
			},
			{--Hostile Standard??? (Hostile regular starship???)	(rewards "PIRATE_BATTLE")
				{
					"HostileInitialFlybySpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		120},	--100,		120
					{"Count",	4,			4}		--2,		2
				}
			},
			{--Hostile Standard??? (Hostile regular starship???)	(uses "PIRATE_EASY" definition)
				{
					"HostileInitialSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Hostile Standard repeating every 30 seconds??? (Hostile regular starship???)	(uses "PIRATE_NOSHIELD" definition)
				{
					"HostileRecurringSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			
			{--Hostile Standard reinforcements??? (Hostile regular starship???)
				{
					"HostileFrigateReinforcementsSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	0,			0}		--0,		0
				}
			},
		}
	},
	{
		{
			"PirateShipsStandard"				--This seems to be civilian freighter vs. Pirate starship battles
		},
		{
			{--CapitalFreighter
				{
					"AlliedFlagshipSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Freighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	7
				},
				{
					{"Spread",	2400,		2500},	--2400,		2500
					{"Count",	5,			8}		--4,		6
				}
			},
			{--SmallFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	9
				},
				{
					{"Spread",	500,		1000},	--500,		1000
					{"Count",	2,			4}		--1,		3
				}
			},
			{--TinyFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	11
				},
				{
					{"Spread",	400,		400},	--400,		400
					{"Count",	2,			4}		--2,		2
				}
			},
			{--Standard (regular starship)
				{
					"AlliedInitialSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	4,			5}		--2,		2
				}
			},
			{--Hostile flagship/regular starship???
				{
					"HostileFlagshipSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	0,			0}		--0,		0
				}
			},
			{--Hostile Standard??? (Hostile regular starship???)	(rewards "PIRATE_BATTLE")
				{
					"HostileInitialFlybySpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		120},	--100,		120
					{"Count",	3,			4}		--2,		2
				}
			},
			{--Hostile Standard??? (Hostile regular starship???)
				{
					"HostileInitialSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Hostile Standard repeating every 30 seconds??? (Hostile regular starship???)	(uses "PIRATE_NOSHIELD" definition)
				{
					"HostileRecurringSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			
			{--Hostile Standard reinforcements??? (Hostile regular starship???)
				{
					"HostileFrigateReinforcementsSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	0,			0}		--0,		0
				}
			},
		}
	},
	{
		{
			"PirateShipsHard"				--This seems to be civilian freighter vs. Pirate starship battles
		},
		{
			{--CapitalFreighter
				{
					"AlliedFlagshipSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Freighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	7
				},
				{
					{"Spread",	3200,		2500},	--3200,		2500
					{"Count",	8,			10}		--7,		8
				}
			},
			--[[
			{--Standard?
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	9
				},
				{
					{"Spread",	1000,		100},	--1000,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--SmallFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "1",	9
				},
				{
					{"Spread",	1000,		1500},	--1000,		1500
					{"Count",	1,			4}		--1,		4
				}
			},
			]]
			{--TinyFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	11
				},
				{
					{"Spread",	500,		700},	--500,		700
					{"Count",	2,			4}		--0,		3
				}
			},
			{--Standard (regular starship)
				{
					"AlliedInitialSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	3,			4}		--2,		2
				}
			},
			{--Hostile flagship/regular starship???
				{
					"HostileFlagshipSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	0,			0}		--0,		0
				}
			},
			{--Hostile Standard??? (Hostile regular starship???)	(rewards "PIRATE_BATTLE")
				{
					"HostileInitialFlybySpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		120},	--100,		120
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Hostile Standard??? (Hostile regular starship???)
				{
					"HostileInitialSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Hostile Standard repeating every 30 seconds??? (Hostile regular starship???)	(uses "PIRATE_NOSHIELD" definition)
				{
					"HostileRecurringSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			
			{--Hostile Standard reinforcements??? (Hostile regular starship???)
				{
					"HostileFrigateReinforcementsSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	0,			0}		--0,		0
				}
			},
		}
	},
	{
		{
			"PirateFreighter"				--This seems to be civilian freighter vs. Pirate Freighter battles
		},
		{
			{--CapitalFreighter		(uses "CIV_LEADER" definition)
				{
					"AlliedFlagshipSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Freighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	7
				},
				{
					{"Spread",	1800,		1800},	--1800,		1800
					{"Count",	4,			8}		--3,		5
				}
			},
			--[[
			{--Standard?
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	9
				},
				{
					{"Spread",	1000,		100},	--1000,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--SmallFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "1",	9
				},
				{
					{"Spread",	1000,		1500},	--1000,		1500
					{"Count",	1,			4}		--1,		4
				}
			},
			]]
			{--TinyFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	11
				},
				{
					{"Spread",	500,		700},	--500,		700
					{"Count",	2,			4}		--0,		3
				}
			},
			{--Standard (regular starship)
				{
					"AlliedInitialSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	3,			4}		--2,		2
				}
			},
			{--CapitalFreighter		(uses "PIRATE_FREIGHT" definition)
				{
					"HostileFlagshipSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Hostile Standard??? (Hostile regular starship???)	(rewards "PIRATE_BATTLE")
				{
					"HostileInitialFlybySpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	0,			0}		--0,		0
				}
			},
			{--Hostile Standard??? (Hostile regular starship???)
				{
					"HostileInitialSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Hostile Standard repeating every 30 seconds??? (Hostile regular starship???)	(uses "PIRATE_NOSHIELD" definition)
				{
					"HostileRecurringSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			
			{--Hostile Frigate reinforcements? (Hostile Frigate)
				{
					"HostileFrigateReinforcementsSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	5000,		2000},	--5000,		2000
					{"Count",	3,			6}		--3,		3
				}
			},
		}
	},
	{
		{
			"SwarmHiveAtlasScripted"				--Presumably unwinnable expedition-related battle vs Hive of Glass? Happens near an Atlas Station?
		},
		{
			{--Standard?
				{
					"AlliedFlagshipSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	0,			0}		--0,		0
				}
			},
			{--Freighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	7
				},
				{
					{"Spread",	1800,		1800},	--1800,		1800
					{"Count",	4,			8}		--3,		5
				}
			},
			--[[
			{--Standard?
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	9
				},
				{
					{"Spread",	1000,		100},	--1000,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--SmallFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "1",	9
				},
				{
					{"Spread",	1000,		1500},	--1000,		1500
					{"Count",	1,			4}		--1,		4
				}
			},
			]]
			{--TinyFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	11
				},
				{
					{"Spread",	500,		700},	--500,		700
					{"Count",	2,			4}		--0,		3
				}
			},
			{--Standard (regular starship)
				{
					"AlliedInitialSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	0,			0}		--0,		0
				}
			},
			{--CapitalFreighter		(uses "HIVE_ATLAS_INV" definition, is invulnerable) attacks freighters
				{
					"HostileFlagshipSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--SwarmDrone	(rewards "HIVE_BATTLE") attacks freighters
				{
					"HostileInitialFlybySpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		120},	--100,		120
					{"Count",	0,			0}		--0,		0
				}
			},
			{--SwarmDrone	(uses "SWARM_DRONE" definition) attacks freighters
				{
					"HostileInitialSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	80,			80},	--80,		80
					{"Count",	3,			5}		--2,		3
				}
			},
			{--SwarmDrone repeating every 30 seconds???
				{
					"HostileRecurringSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	80,			80},	--80,		80
					{"Count",	1,			1}		--1,		1
				}
			},
			
			{--Hostile Frigate reinforcements? (Hostile Frigate)
				{
					"HostileFrigateReinforcementsSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	0,			0}		--0,		0
				}
			},
		}
	},
	{
		{
			"SwarmHiveAtlas"				--Presumably battle vs Hive of Glass? Happens near an Atlas Station?
		},
		{
			{--Standard?
				{
					"AlliedFlagshipSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	0,			0}		--0,		0
				}
			},
			{--Freighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	7
				},
				{
					{"Spread",	1800,		1800},	--1800,		1800
					{"Count",	4,			8}		--3,		5
				}
			},
			--[[
			{--Standard?
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	9
				},
				{
					{"Spread",	1000,		100},	--1000,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--SmallFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "1",	9
				},
				{
					{"Spread",	1000,		1500},	--1000,		1500
					{"Count",	1,			4}		--1,		4
				}
			},
			]]
			{--TinyFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	11
				},
				{
					{"Spread",	500,		700},	--500,		700
					{"Count",	2,			4}		--0,		3
				}
			},
			{--Standard (regular starship)
				{
					"AlliedInitialSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	0,			0}		--0,		0
				}
			},
			{--CapitalFreighter		(uses "HIVE_ATLAS" definition) attacks freighters
				{
					"HostileFlagshipSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--SwarmDrone	(rewards "HIVE_BATTLE") attacks freighters
				{
					"HostileInitialFlybySpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	100,		120},	--100,		120
					{"Count",	0,			0}		--0,		0
				}
			},
			{--SwarmDrone	(uses "SWARM_DRONE" definition) attacks freighters
				{
					"HostileInitialSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	80,			80},	--80,		80
					{"Count",	3,			5}		--2,		3
				}
			},
			{--SwarmDrone repeating every 30 seconds???
				{
					"HostileRecurringSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	80,			80},	--80,		80
					{"Count",	1,			1}		--1,		1
				}
			},
			
			{--Hostile Frigate reinforcements? (Hostile Frigate)
				{
					"HostileFrigateReinforcementsSpawn", "GcAIShipSpawnData", "0",	5
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	0,			0}		--0,		0
				}
			},
		}
	},
}

--Changes various aspects of Pirate Frigates / Dreadnoughts for Pirate Freighter battles
PirateFrigateReinforceAt =			-1						-- -1		Number of remaining Pirate Frigates in Pirate Freighter battle to trigger Pirate Frigate reinforcements from HostileFrigateReinforcementsSpawn
FleeHealthFraction =				0.25					--0.25		Seems to be what percentage of remaining hull health to trigger the Dreadnought to attempt warping (may also attempt warping if all Anti-Freighter Cannons are destroyed)
WarpChargeTime =					35						--35		Roughly how long the Dreadnought takes to warp away. It appears to actually escape once the counter reaches ~6 or 8 seconds remaining
WarpChargeTimePerBrokenEngine =		2						--2			Bugged. This adds time to the UI countdown each time a Warp Engine is destroyed, but does not actually change how long until the Dreadnought warps away

FrigateChanges =
{
	{
		{
			"PirateFreighter"
		},
		{
			{
				{
					"HostileFlagshipSpawn", "GcAIShipSpawnData"
				},
				{--Initial Pirate Frigates in Pirate Freighter battles
					{"Spread",	1200,		1300},	--1200,		1300
					{"Count",	6,			12}		--6,		6
				}
			},
		}
	},
	{
		{
			"SwarmHiveAtlasScripted"
		},
		{
			{
				{
					"HostileFlagshipSpawn", "GcAIShipSpawnData"
				},
				{--Initial Frigates in invulnerable scripted Hive of Glass attacks on Atlas stations?
					{"Spread",	3000,		3000},	--3000,		3000
					{"Count",	40,			50}		--30,		30
				}
			},
		}
	},
	{
		{
			"SwarmHiveAtlas",
		},
		{
			{
				{
					"HostileFlagshipSpawn", "GcAIShipSpawnData"
				},
				{--Initial Frigates in Hive of Glass attacks on Atlas stations?
					{"Spread",	3000,		3000},	--3000,		3000
					{"Count",	40,			50}		--30,		30
				}
			},
		}
	},
}


MiscLargerChanges =
{
	{--Swarmer ships, possibly ones that spawn to reinforce & defend the Hive of Glass?
		{
			"SwarmDroneAttackSpawns", "GcAIShipSpawnData",
		},
		{
			{"Spread",	300,		300},	--200,		200
			{"Count",	5,			7}		--4,		4
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
					{"Count",	1,			5}		--1,		1		(1,			6)
				}
			},
			{--Standard (regular starship				These are the "wandering" pirates		RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "BOUNTY2"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	2,			10}		--1,		1		(3,			12)
				}
			},
			{--Standard (regular starship				These are the "wandering" pirates		RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "BOUNTY3"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	3,			8}		--1,		1		(3,			9)
				}
			},
			--Despite how it seems, the following don't appear to control the space station missions for hunting pirates. At least, the values don't match up with in-game, and changing these seems to have no effect on those missions.
			{--Standard (regular starship
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "EASYBOUNTY1"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			5}		--1,		1		(1,			6)
				}
			},
			{--Standard (regular starship			
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "EASYBOUNTY2"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	2,			7}		--1,		1		(2,			8)		[2,	4]
				}
			},
			{--Standard (regular starship
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "MEDBOUNTY1"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	2,			10}		--1,		1		(3,			12)		[1,	3]
				}
			},
			{--Standard (regular starship
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "MEDBOUNTY2"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	4,			10}		--1,		1		(4,			12)		[1,	3]	(in the original mod, it seems these entries accidentally changed the "Scale" for MEDBOUNTY2 instead of changing the "Spread")
				}
			},
			{--Standard (regular starship
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "HARDBOUNTY1"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	4,			8}		--1,		1		(3,			9)		[2,	3]
				}
			},
			{--Standard (regular starship
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "HARDBOUNTY2"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	4,			6}		--3,		3		(6,			6)		[2,	3]
				}
			},
			{--Standard (regular starship			Base Armourer mission
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "WEAPGUY_BOUNTY"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	4,			8}		--2,		2		(4,			8)
				}
			},
			{--Standard (regular starship			Unknown function
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "PIRATE_SQUAD"
				},
				{
					{"Spread",	800,		800},	--800,		800
					{"Count",	8,			14}		--6,		6		(9,			18)		[6,		10]
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

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "_" .. ModNameType .. "_" .. ModName .. "_v" .. GameVersion .. ModVersion .. "_by_" .. Author .. ".pak",
    ["MOD_DESCRIPTION"] = BaseDescription,
    ["MOD_AUTHOR"] = Author,
    ["LUA_AUTHOR"] = AuthorLua,
    ["NMS_VERSION"] = GameVersion,
	["EXML_CREATE"] = "FALSE",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {	
	["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"},
	["MXML_CHANGE_TABLE"] 	= 
	{
		{
			["PRECEDING_KEY_WORDS"] = {"PlanetaryPirateFlybySpawns"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"MinRange", RaidSpawnRange}
			}
		},
		{
			["PRECEDING_KEY_WORDS"] = {"PlanetaryPirateRaidSpawns"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"MinRange", BuildingRaidSpawnRange}
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
		{
			["PRECEDING_FIRST"] = "true",
			["PRECEDING_KEY_WORDS"] = {"SpaceBattleSpawns"},
			["SPECIAL_KEY_WORDS"] = {"PirateFreighter", "GcSpaceBattleSpawnData"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"HostileFrigateCountForReinforce", PirateFrigateReinforceAt},
				{"FleeHealthFraction", FleeHealthFraction},
				{"WarpChargeTime", WarpChargeTime},
				{"WarpChargeTimePerBrokenEngine", WarpChargeTimePerBrokenEngine}
			}
		},
	}
}
			}
        }
    }
}

local ChangesToLargerBattles =
    NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

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
for i = 1, #SpaceBattleSpawnsChanges do
	local SceneID = SpaceBattleSpawnsChanges[i][1][1]
	local Entries = SpaceBattleSpawnsChanges[i][2]
	
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
				["PRECEDING_KEY_WORDS"] = {"SpaceBattleSpawns"},
				["SPECIAL_KEY_WORDS"] = {SceneID, "GcSpaceBattleSpawnData",		EntryName,	EntryValue},
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
for i = 1, #FrigateChanges do
	local SceneID = FrigateChanges[i][1][1]
	local Entries = FrigateChanges[i][2]
	
	for j = 1, #Entries do
		local EntryName = Entries[j][1][1]
		local EntryValue = Entries[j][1][2]
		
		local SpreadCounts = Entries[j][2]
	
		for k = 1, #SpreadCounts do
		SpreadCount = SpreadCounts[k][1]
			ReplacerX = SpreadCounts[k][2]
			ReplacerY = SpreadCounts[k][3]
	
			ChangesToLargerBattles[#ChangesToLargerBattles+1] =
			{
				["SPECIAL_KEY_WORDS"] = {SceneID, "GcSpaceBattleSpawnData",		EntryName,	EntryValue,		"AIShipRole", "Frigate"},
				["SECTION_UP"] = 2,
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