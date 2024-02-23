Author = "Xaliber"
AuthorLua = "Xen0nex"
ModName = "Larger Space Combat"
ModNameType = "Tweak"
BaseDescription = "Larger Space Combat - separate from Reworked Space Combat for modularity"
GameVersion = "4.51"
ModVersion = "1.8X"

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

--"Spread" sets how far apart the ships are when they spawn, "Count" sets the minimum & maxmum number of ships which spawn.
--Currently missing 4 sets of changes to Spread and Count (Seems to just be for Freighters though), as I haven't found a way to target the sections they are in
	--Similarly, this mod doesn't change the Scale on line 975 from 1.2 > 1.4
LargerBattleChanges = 
{
	{
		{
			"FlybySpawns"
		},
		{
			{
				{
					"GcAIShipSpawnData.xml"
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
			"SpaceFlybySpawns"
		},
		{
			{
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	300,		300},	--300,		300
					{"Count",	2,			6}		--2,		3		[2,	6]
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	250,		250},	--250,		250
					{"Count",	2,			4}		--2,		2		[2,	4]
				}
			},
			{--2nd "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
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
			{--This may control several things: it appears to act as a multiplier to the amount of pirates spawned during space station pirate hunting missions
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	80,			80},
					{"Count",	1,			4}		--1,		1		(1,			6)		[1,		3]
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
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
			"PlanetaryPirateFlybySpawns"
		},
		{
			{
				{
					"GcAIShipSpawnData.xml"
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
			"PlanetaryPirateRaidSpawns"
		},
		{
			{
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			3}		--1,		1
				}
			}
		}
	},
	{
		{
			"PirateBattleSpawns"			--These DO attack Freighters.	RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
		},
		{
			{
				{
					"GcAIShipSpawnData.xml"
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
			{
				{
					"GcPoliceSpawnWaveData.xml"
				},
				{
					{"Spread",	100,		120},
					{"Count",	WantedSquadron1,	WantedSquadron1}		--1,		1		(1,		2)
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcPoliceSpawnWaveData.xml","GcPoliceSpawnWaveData.xml"
				},
				{
					{"Spread",	100,		120},
					{"Count",	WantedSquadron2,	WantedSquadron2}		--1,		1		(2,		3)
				}
			},
			{--2nd "ChildSpawns" entry, etc.
				{
					"GcPoliceSpawnWaveData.xml","GcPoliceSpawnWaveData.xml","GcPoliceSpawnWaveData.xml"
				},
				{
					{"Spread",	100,		120},
					{"Count",	WantedSquadron3,	WantedSquadron3}		--1,		1		(3,		4)
				}
			},
			{--3rd "ChildSpawns" entry
				{
					"GcPoliceSpawnWaveData.xml","GcPoliceSpawnWaveData.xml","GcPoliceSpawnWaveData.xml","GcPoliceSpawnWaveData.xml"
				},
				{
					{"Spread",	100,		120},
					{"Count",	WantedSquadron4,	WantedSquadron4}		--1,		1		(3,		6)
				}
			},
			{--4th "ChildSpawns" entry
				{
					"GcPoliceSpawnWaveData.xml","GcPoliceSpawnWaveData.xml","GcPoliceSpawnWaveData.xml","GcPoliceSpawnWaveData.xml","GcPoliceSpawnWaveData.xml"
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
			{
				{
					"GcAIShipSpawnData.xml"
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
			"AmbientSpawns"
		},
		{
			{
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	3000,		4500},
					{"Count",	2,			6}		--2,		5
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	1500,		3000},
					{"Count",	0,			4}		--0,		3
				}
			},
			{--2nd "ChildSpawns" entry, etc.
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	1500,		3500},
					{"Count",	0,			7}		--0,		5
				}
			},
			{--3rd "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	400,		1000},
					{"Count",	1,			3}		--1,		3
				}
			}	--Missing change on line 646, no name so can't target
		}
	},
	{
		{
			"BattleSpawns"				--These are Freighters during Freighter-Pirate battles
		},
		{
			{--Freighter
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	0,			0},
					{"Count",	1,			1}		--1,		1
				}
			},
			{--1st "ChildSpawns" entry			--Freighter
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	2000,		4000},
					{"Count",	2,			5}		--2,		3
				}
			},
			{--2nd "ChildSpawns" entry			--SmallFreighter
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	750,		1800},
					{"Count",	2,			4}		--1,		2
				}
			},
			{--3rd "ChildSpawns" entry			--TinyFreighter
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	400,		500},
					{"Count",	2,			3}		--2,		2
				}
			},
			--[[{--4th "ChildSpawns" entry		--CapitalFreighter		(trying to change lines 944, 945 & 948, 949, but this entry targets lines 1051, 1052 & 1055, 1056 instead? the target section has no name, can't target it???) This entry is added manually at the bottom of the MBIN_CHANGE_TABLE.
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			1}		--1,		1
				}
			},
			{--5th "ChildSpawns" entry		--Freighter				(trying to change lines 981, 982 & 985, 986 but same issue as above, this entry targets lines 1241, 1242 & 1245, 1246 instead?)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	2400,		4200},
					{"Count",	6,			12}		--4,		6
				}
			},
			{--6th "ChildSpawns" entry		--SmallFreighter		(trying to change lines 1016, 1017 & 1020, 1021 but same issue as above?)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	800,		1800},
					{"Count",	1,			5}		--1,		3
				}
			},
			{--7th "ChildSpawns" entry		--TinyFreighter			(trying to change lines 1051, 1052 & 1056, 1057 but same issue as above?)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	400,		800},
					{"Count",	2,			3}		--2,		2
				}
			}]]
			
		--[[
			--the following 4 sets of changes omitted because I can't find a way to target them.
			--These also seem to mostly target Freighters.  E.G. CapitalFreighter, Freighter, Standard, SmallFreighter, TinyFreighter
				--The last of these sets of changes (lines 1241 ~ 1246) is added manually at the bottom of the MBIN_CHANGE_TABLE
		]]
			--[[
			{--8th "ChildSpawns" entry			--CapitalFreighter
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	1,			1}		--1,		1
				}
			},
			{--9th "ChildSpawns" entry			--Freighter
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	1800,		1800},	--1800,		1800
					{"Count",	3,			5}		--3,		5
				}
			},
			{--10th "ChildSpawns" entry			--Standard (regular starship???)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	1000,		100},	--1000,		100
					{"Count",	1,			1}		--1,		1
				}
			},
			{--11th "ChildSpawns" entry			--SmallFreighter
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	1000,		1500},	--1000,		1500
					{"Count",	1,			4}		--1,		4
				}
			},
			{--12th "ChildSpawns" entry			--TinyFreighter		(this entry is added manually at the bottom of the MBIN_CHANGE_TABLE)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	500,		700},	--500,		700
					{"Count",	0,			3}		--0,		3
				}
			},]]
		}
	},
	{
		{
			"BattlePirateSpawns"				--These are presumably all related to Pirate Capital battles, as this section was added in the NMS v4.4 update
		},
		{
			{									--Standard (regular starship???)
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	0,			0}		--0,		0
				}
			},
			{--1st "ChildSpawns" entry			--Standard (regular starship???)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	0,			0}		--0,		0
				}
			},
			{--2nd "ChildSpawns" entry			--Standard (regular starship???)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	0,			0}		--0,		0
				}
			},
			{--3rd "ChildSpawns" entry			--CapitalFreighter (this is the Pirate Capital Freighter)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	1,			1}		--1,		1
				}
			},
			{--4th "ChildSpawns" entry			--Frigate	(presumably the pirate torpedo frigates)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
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
			{
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		150},
					{"Count",	4,			14}		--2,		2		(6,			18)
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		150},
					{"Count",	3,			12}		--2,		2		(5,			15)
				}
			},
			{--2nd "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		150},
					{"Count",	4,			8}		--2,		2		(6,			12)
				}
			},
			{--3rd "ChildSpawns" entry		(added in the NMS v4.4 update)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
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
		},			--How these numbers are used by the game is confusing... At the start of the Freighter-Pirate battle, it seems to take 3x the 1st Childspawns value, then adds 1x the 1st Childspawns value under BattleSecondaryPirateSpawns to get the total pirate count at the start of the battle, ignoring the other values?
		{
			{
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	140,		200},
					{"Count",	3,			6}		--2,		2		(2,			8)
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	240,		460},
					{"Count",	3,			15}		--2,		2		(4,			16)
				}
			},
			{--2nd "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	180,		360},
					{"Count",	4,			8}		--1,		1		(6,			12)
				}
			},
			{--3rd "ChildSpawns" entry		(added in the NMS v4.4 update)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
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
			{
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	180,		360},
					{"Count",	4,			10}		--2,		2		(6,			12)
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	140,		280},
					{"Count",	3,			14}		--2,		2		(4,			16)
				}
			},
			{--2nd "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	140,		240},
					{"Count",	3,			6}		--1,		1		(2,			6)
				}
			},
			{--3rd "ChildSpawns" entry		(added in the NMS v4.4 update)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
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
			{
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	180,		360},	--100,		120
					{"Count",	4,			10}		--2,		2
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	140,		280},	--100,		120
					{"Count",	3,			14}		--2,		2
				}
			},
			{--2nd "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	140,		240},	--100,		120
					{"Count",	3,			6}		--1,		1
				}
			},
			{--3rd "ChildSpawns" entry		(added in the NMS v4.4 update)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	140,		280},	--100,		120
					{"Count",	3,			14}		--2,		2
				}
			}
		}
	},
	{
		{
			"BattleReinforcingPirateFrigateSpawn"			--(This section added in the NMS v4.4 update)
		},
		{
			{	--Presumably pirate torpedo frigates that reinforce?
				{
					
				},
				{
					{"Spread",	5000,		2000},	--5000,		2000
					{"Count",	3,			6}		--3,		3
				}
			}
		}
	},
	{
		{
			"PirateBountySpawns"				--These do NOT attack Freighters.	
		},
		{
			{--BOUNTY1					These are the "wandering" pirates				RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
				{
					"GcBountySpawnInfo.xml"				--Remember to switch to "GcBountySpawnInfo.xml" for the Bounty section
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			5}		--1,		1		(1,			6)
				}
			},
			{--BOUNTY2					RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	2,			10}		--1,		1		(3,			12)
				}
			},
			{--BOUNTY3					RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	3,			8}		--1,		1		(3,			9)
				}
			},
			--[[{----	Deprecated as of NMS v3.84	BOUNTY3 1st "ChildSpawns" entry.		This entry doesn't find it here, and instead targets lines 1869, 1870 & 1873, 1874
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			3}		--1,		1		(2,			8)
				}
			},]]
			--Despite how it seems, the following don't appear to control the space station missions for hunting pirates. At least, the values don't match up with in-game, and changing these seems to have no effect.
			{--EASYBOUNTY1
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			5}		--1,		1		(1,			6)
				}
			},
			{--EASYBOUNTY2			
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	2,			7}		--1,		1		(2,			8)		[2,	4]
				}
			},
			{--MEDBOUNTY1
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	2,			10}		--1,		1		(3,			12)		[1,	3]
				}
			},
			{--MEDBOUNTY2
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	4,			10}		--1,		1		(4,			12)		[1,	3]	(in the original mod, it seems these entries accidentally changed the "Scale" for MEDBOUNTY2 instead of changing the "Spread")
				}
			},
			{--HARDBOUNTY1
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	4,			8}		--1,		1		(3,			9)		[2,	3]
				}
			},
			{--HARDBOUNTY2
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	4,			6}		--3,		3		(6,			6)		[2,	3]
				}
			},
			{--WEAPGUY_BOUNTY		Base Armourer mission
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	4,			8}		--2,		2		(4,			8)
				}
			},
			{--PIRATE_SQUAD			Unknown function
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	800,		800},
					{"Count",	8,			14}		--6,		6		(9,			18)		[6,		10]
				}
			},
			{--PP_BOUNTY			Planet Procedural mission
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	2,			4}		--1,		1		(3,			6)
				}
			}
		}
	},
	{
		{
			"FrigateFlybySpawns"		--Probably just decorative frigate spawns
		},
		{
			{
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	1,			1}		--1,		1
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	400,		400},	--400,		400
					{"Count",	2,			5}		--2,		5
				}
			},
			{--2nd "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	800,		800},	--800,		800
					{"Count",	2,			5}		--2,		5
				}
			},
		}
	},
}

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "_" .. ModNameType .. "_" .. ModName .. "_v" .. GameVersion .. ModVersion .. "_by_" .. Author .. ".pak",
    ["MOD_DESCRIPTION"] = BaseDescription,
    ["MOD_AUTHOR"] = Author,
    ["LUA_AUTHOR"] = AuthorLua,
    ["NMS_VERSION"] = GameVersion,
    ["MOD_VERSION"] = ModVersion,
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {	
	["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"},
	["EXML_CHANGE_TABLE"] 	= 
	{
		{--Changes HARDBOUNTY2 to use PIRATE_HARD ships instead of PIRATE ships
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["SPECIAL_KEY_WORDS"] = {"Id","HARDBOUNTY2"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"AttackData", "PIRATE_HARD"}			--"PIRATE"
			}
		},
		{--Changes the Base Armourer mission to use PIRATE ships instead of PIRATE_EASY ships
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["SPECIAL_KEY_WORDS"] = {"Id","WEAPGUY_BOUNTY"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"AttackData", "PIRATE"}			--"PIRATE_EASY"
			}
		},
		{--Was attempting to target lines 945, 946 but this entry targets lines 1051, 1052 instead? The target section has no name, can't target it???
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["PRECEDING_FIRST"] = "True",
			["PRECEDING_KEY_WORDS"] = {"BattleSpawns","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"},
			["SPECIAL_KEY_WORDS"] = {"Spread","Vector2f.xml"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"x", 400},
				{"y", 800}
			}
		},
		{--Was attempting to target lines 948, 949 but this entry targets lines 1055, 1056 instead? the target section has no name, can't target it???
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["PRECEDING_FIRST"] = "True",
			["PRECEDING_KEY_WORDS"] = {"BattleSpawns","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"},
			["SPECIAL_KEY_WORDS"] = {"Count","Vector2f.xml"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"x", 2},		--2
				{"y", 3}		--2
			}
		},
		{--Testing out attempts, this entry targets lines 1241, 1242 instead?
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["PRECEDING_FIRST"] = "True",
			["PRECEDING_KEY_WORDS"] = {"BattleSpawns","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"},
			["SPECIAL_KEY_WORDS"] = {"Spread","Vector2f.xml"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"x", 600},
				{"y", 900}
			}
		},
		{--Testing out attempts, this entry targets lines 1245, 1246 instead?
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["PRECEDING_FIRST"] = "True",
			["PRECEDING_KEY_WORDS"] = {"BattleSpawns","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"},
			["SPECIAL_KEY_WORDS"] = {"Count","Vector2f.xml"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"x", 0},		--0
				{"y", 4}		--3
			}
		},
		--[[	Deprecated as of NMS v3.85
		{--Edits the ChildSpawns for BOUNTY3 which otherwise gets skipped
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["PRECEDING_FIRST"] = "True",
			["PRECEDING_KEY_WORDS"] = {"PirateBountySpawns","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","ChildSpawns"},
			["SPECIAL_KEY_WORDS"] = {"Count","Vector2f.xml"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"x", 1},		--1		(2)
				{"y", 3}		--1		(8)
			}
		}]]
	}
}
			}
        }
    }
}

local ChangesToLargerBattles =
    NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #AddedSquadrons do
	local AddAmount = AddedSquadrons[i]
			
			ChangesToLargerBattles[#ChangesToLargerBattles+1] =
			{
				["MATH_OPERATION"] 		= "+",
				["PRECEDING_KEY_WORDS"] = {"GcPoliceSpawnWaveData.xml", "MaxCountsForFireteamSize"},
				["SECTION_ACTIVE"] = {i,},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"IGNORE", AddAmount}
				}
			}
end
for i = 1, #LargerBattleChanges do
    local SceneID = LargerBattleChanges[i][1][1]
    local ChildLevels = LargerBattleChanges[i][2]
    --local SpreadCounts = LargerBattleChanges[i][2]

    for j = 1, #ChildLevels do
        --local ChildLevel = ChildLevels[j][1]
        --local ChildLevel = table.concat(ChildLevels[j][1])

        local SpreadCounts = ChildLevels[j][2]
        --local Replacers = ChildLevels[j][2]

        for k = 1, #SpreadCounts do
            SpreadCount = SpreadCounts[k][1]
            ReplacerX = SpreadCounts[k][2]
            ReplacerY = SpreadCounts[k][3]

            local ChildLevel1 = ChildLevels[j][1][1]
            local ChildLevel2 = ChildLevels[j][1][2]
            local ChildLevel3 = ChildLevels[j][1][3]
            local ChildLevel4 = ChildLevels[j][1][4]
            local ChildLevel5 = ChildLevels[j][1][5]
            local ChildLevel6 = ChildLevels[j][1][6]
            local ChildLevel7 = ChildLevels[j][1][7]
            local ChildLevel8 = ChildLevels[j][1][8]
            local ChildLevel9 = ChildLevels[j][1][9]
            local ChildLevel10 = ChildLevels[j][1][10]
            local ChildLevel11 = ChildLevels[j][1][11]
            local ChildLevel12 = ChildLevels[j][1][12]
            local ChildLevel13 = ChildLevels[j][1][13]

            ChangesToLargerBattles_temp = {
                ["MATH_OPERATION"] = "",
                ["REPLACE_TYPE"] = "",
                ["PRECEDING_FIRST"] = "True",
                ["PRECEDING_KEY_WORDS"] = {
                    SceneID,
                    ChildLevel1,
                    ChildLevel2,
                    ChildLevel3,
                    ChildLevel4,
                    ChildLevel5,
                    ChildLevel6,
                    ChildLevel7,
                    ChildLevel8,
                    ChildLevel9,
                    ChildLevel10,
                    ChildLevel11,
                    ChildLevel12,
                    ChildLevel13
                },
                --["PRECEDING_KEY_WORDS"] = {ChildLevel},
                ["SPECIAL_KEY_WORDS"] = {SpreadCount, "Vector2f.xml"},
                ["VALUE_CHANGE_TABLE"] = {
                    {"x", ReplacerX},
                    {"y", ReplacerY}
                }
            }
            ChangesToLargerBattles[#ChangesToLargerBattles + 1] = ChangesToLargerBattles_temp
        end
    end
end
