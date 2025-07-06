Author = "Xaliber"
AuthorLua = "Xen0nex"
ModName = "Larger Space Combat"
ModNameType = "Tweak"
BaseDescription = "Larger Space Combat - separate from Reworked Space Combat for modularity"
GameVersion = "5.64"
ModVersion = "1.13X"

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
RaidSpawnRange =		3200							--800	How far away from the player they will spawn.

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
					{"Spread",	30,			80},
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
					{"Spread",	80,			80},
					{"Count",	1,			4}		--1,		1		(1,			6)		[1,		3]
				}
			},
			{--Standard (regular starship)
				{
					"PirateSpawns", "GcAIShipSpawnData", "1",	4
				},
				{
					{"Spread",	80,			80},
					{"Count",	2,			6}		--1,		1		(2,			6)		[1,		3]
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
					{"Spread",	100,		120},
					{"Count",	10,			24}		--2,		2		(10,			24)
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
					{"Spread",	0,			0},
					{"Count",	1,			1}		--1,		1
				}
			},
			{--Freighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	6
				},
				{
					{"Spread",	2000,		4000},
					{"Count",	2,			5}		--2,		3
				}
			},
			{--SmallFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	8
				},
				{
					{"Spread",	750,		1800},
					{"Count",	2,			4}		--1,		2
				}
			},
			{--TinyFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	10
				},
				{
					{"Spread",	400,		500},
					{"Count",	2,			3}		--2,		2
				}
			},
			{--CapitalFreighter
				{
					"BattleSpawns", "GcAIShipSpawnData", "1",	4
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			1}		--1,		1
				}
			},
			--[[--DUPLICATE TARGET
			{--Freighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	6
				},
				{
					{"Spread",	2400,		4200},
					{"Count",	6,			12}		--4,		6
				}
			},
			{--SmallFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	8
				},
				{
					{"Spread",	800,		1800},
					{"Count",	1,			5}		--1,		3
				}
			},
			{--TinyFreighter
				{
					"ChildSpawns", "GcAIShipSpawnData", "0",	10
				},
				{
					{"Spread",	400,		800},
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
					{"Count",	0,			0},		--0,		0
					{"StartTime",	0,		0}		--0,		0			This seems to give these starships a chance to actually spawn?
				}
			},
			{--Standard (regular starship
				{
					"BattlePirateSpawns", "GcAIShipSpawnData", "1",	4
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	0,			0},		--0,		0
					{"StartTime",	0,		0}		--0,		0			This seems to give these starships a chance to actually spawn?
				}
			},
			{--Standard (regular starship
				{
					"BattlePirateSpawns", "GcAIShipSpawnData", "2",	4
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	0,			0},		--0,		0
					{"StartTime",	0,		0}		--0,		0			This seems to give these starships a chance to actually spawn?
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
					{"Spread",	1500,		1800},	--1200,		1300
					{"Count",	6,			12}		--6,		6
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
					{"Spread",	100,		150},
					{"Count",	4,			14}		--2,		2		(6,			18)
				}
			},
			{--Standard (regular starship
				{
					"BattleInitialStandardSpawns", "GcAIShipSpawnData", "1",	4
				},
				{
					{"Spread",	100,		150},
					{"Count",	3,			12}		--2,		2		(5,			15)
				}
			},
			{--Standard (regular starship
				{
					"BattleInitialStandardSpawns", "GcAIShipSpawnData", "2",	4
				},
				{
					{"Spread",	100,		150},
					{"Count",	4,			8}		--2,		2		(6,			12)
				}
			},
			{--Standard (regular starship		(added in the NMS v4.4 update)
				{
					"BattleInitialStandardSpawns", "GcAIShipSpawnData", "3",	4
				},
				{
					{"Spread",	100,		150},
					{"Count",	4,			8}		--2,		2
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
					{"Spread",	140,		200},
					{"Count",	3,			6}		--2,		2		(2,			8)
				}
			},
			{--Standard (regular starship			Game seems to use 3x this Count?
				{--name								value				_index	SubLevel
					"BattleInitialPirateSpawns"	, "GcAIShipSpawnData", "1",		4
				},
				{
					{"Spread",	240,		460},
					{"Count",	3,			15}		--2,		2		(4,			16)
				}
			},
			{--Standard (regular starship
				{--name								value				_index	SubLevel
					"BattleInitialPirateSpawns"	, "GcAIShipSpawnData", "2",		4
				},
				{
					{"Spread",	180,		360},
					{"Count",	4,			8}		--1,		1		(6,			12)
				}
			},
			{--Standard (regular starship		(added in the NMS v4.4 update)
				{--name								value				_index	SubLevel
					"BattleInitialPirateSpawns"	, "GcAIShipSpawnData", "3",		4
				},
				{
					{"Spread",	0,			0},
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
					{"Spread",	180,		360},
					{"Count",	4,			10}		--2,		2		(6,			12)
				}
			},
			{--Standard (regular starship			Game seems to add 1x this Count?
				{--name								value				_index	SubLevel
					"BattleSecondaryPirateSpawns", "GcAIShipSpawnData", "1",	4
				},
				{
					{"Spread",	140,		280},
					{"Count",	3,			14}		--2,		2		(4,			16)
				}
			},
			{--Standard (regular starship
				{--name								value				_index	SubLevel
					"BattleSecondaryPirateSpawns", "GcAIShipSpawnData", "2",	4
				},
				{
					{"Spread",	140,		240},
					{"Count",	3,			6}		--1,		1		(2,			6)
				}
			},
			{--Standard (regular starship		(added in the NMS v4.4 update)
				{--name								value				_index	SubLevel
					"BattleSecondaryPirateSpawns", "GcAIShipSpawnData", "3",	4
				},
				{
					{"Spread",	0,			0},
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
					{"Spread",	180,		360},	--100,		120
					{"Count",	4,			10}		--2,		2
				}
			},
			{--Standard (regular starship
				{
					"BattleRecurringPirateSpawns", "GcAIShipSpawnData", "1",	4
				},
				{
					{"Spread",	140,		280},	--100,		120
					{"Count",	3,			14}		--2,		2
				}
			},
			{--Standard (regular starship
				{
					"BattleRecurringPirateSpawns", "GcAIShipSpawnData", "2",	4
				},
				{
					{"Spread",	140,		240},	--100,		120
					{"Count",	3,			6}		--1,		1
				}
			},
			{--Standard (regular starship		(added in the NMS v4.4 update)
				{
					"BattleRecurringPirateSpawns", "GcAIShipSpawnData", "3",	4
				},
				{
					{"Spread",	140,		280},	--100,		120
					{"Count",	3,			14}		--2,		2
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
			{"Count",	3,			6}		--3,		3
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
					{"Spread",	100,		100},
					{"Count",	1,			5}		--1,		1		(1,			6)
				}
			},
			{--Standard (regular starship				These are the "wandering" pirates		RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "BOUNTY2"
				},
				{
					{"Spread",	100,		100},
					{"Count",	2,			10}		--1,		1		(3,			12)
				}
			},
			{--Standard (regular starship				These are the "wandering" pirates		RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "BOUNTY3"
				},
				{
					{"Spread",	100,		100},
					{"Count",	3,			8}		--1,		1		(3,			9)
				}
			},
			--Despite how it seems, the following don't appear to control the space station missions for hunting pirates. At least, the values don't match up with in-game, and changing these seems to have no effect on those missions.
			{--Standard (regular starship
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "EASYBOUNTY1"
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			5}		--1,		1		(1,			6)
				}
			},
			{--Standard (regular starship			
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "EASYBOUNTY2"
				},
				{
					{"Spread",	100,		100},
					{"Count",	2,			7}		--1,		1		(2,			8)		[2,	4]
				}
			},
			{--Standard (regular starship
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "MEDBOUNTY1"
				},
				{
					{"Spread",	100,		100},
					{"Count",	2,			10}		--1,		1		(3,			12)		[1,	3]
				}
			},
			{--Standard (regular starship
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "MEDBOUNTY2"
				},
				{
					{"Spread",	100,		100},
					{"Count",	4,			10}		--1,		1		(4,			12)		[1,	3]	(in the original mod, it seems these entries accidentally changed the "Scale" for MEDBOUNTY2 instead of changing the "Spread")
				}
			},
			{--Standard (regular starship
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "HARDBOUNTY1"
				},
				{
					{"Spread",	100,		100},
					{"Count",	4,			8}		--1,		1		(3,			9)		[2,	3]
				}
			},
			{--Standard (regular starship
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "HARDBOUNTY2"
				},
				{
					{"Spread",	100,		100},
					{"Count",	4,			6}		--3,		3		(6,			6)		[2,	3]
				}
			},
			{--Standard (regular starship			Base Armourer mission
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "WEAPGUY_BOUNTY"
				},
				{
					{"Spread",	100,		100},
					{"Count",	4,			8}		--2,		2		(4,			8)
				}
			},
			{--Standard (regular starship			Unknown function
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "PIRATE_SQUAD"
				},
				{
					{"Spread",	800,		800},
					{"Count",	8,			14}		--6,		6		(9,			18)		[6,		10]
				}
			},
			{--Standard (regular starship			Planet Procedural mission
				{
					"PirateBountySpawns", "GcBountySpawnInfo", "PP_BOUNTY"
				},
				{
					{"Spread",	100,		100},
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