Author = "Xaliber"					--Edited by Xen0nex
LuaAuthor = "DeathWrench and Babscoole and Xen0nex"
--ModName = "gExos Challenge"
ModNameSub = "Space Combat+Larger Space BattlesX"
BaseDescription = "Adaptation of part(s) of Xaliber's Space Combat Reworked"
GameVersion = "444"
ModVersion = "a"

--Multipliers to apply to the hull & shields of all AI-controlled starships & some freighters (individual ships have additonal multipliers applied)
	--Note that "SpaceCombatDifficultyMultipliers" values in GCGAMEPLAYGLOBALS.GLOBAL.MBIN control additional (or subtract) Hull & Shields for enemy starships depending on Space Combat difficulty setting
	--Multiplied by 1.15 to partially account for how additional supercharged weapon upgrades can increase DPS by up to 1.25~1.3x each time
ShipHull =				2.5*1.15						--Starting AI Hull health for all starships & freighters (except for CIV_LEADER )
ShipHullPerLevel =		2.5*1.15						--Additional AI Hull health added per level for all starships & freighters (except for CIV_LEADER )
ShipShield =			2.5*1.15						--Starting AI Shield health for all starships, not freighters
ShipShieldPerLevel =	2.5*1.15						--Additional AI Shield health added per level for all starships, not freighters

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
					{"Count",	1,			1}		--1,		1		(1,			6)		[1,		3]
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	80,			80},
					{"Count",	1,			2}		--1,		1		(2,			6)		[1,		3]
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
					{"Count",	6,			9}		--6,		6
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
					{"Count",	2,			5}		--2,		2		(6,			18)
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		150},
					{"Count",	2,			5}		--2,		2		(5,			15)
				}
			},
			{--2nd "ChildSpawns" entry, etc.
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		150},
					{"Count",	2,			5}		--2,		2		(6,			12)
				}
			},
			{--3rd "ChildSpawns" entry		(added in the NMS v4.4 update)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		150},
					{"Count",	2,			5}		--2,		2
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
					{"Count",	2,			4}		--2,		2		(2,			8)
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	240,		460},
					{"Count",	2,			4}		--2,		2		(4,			16)
				}
			},
			{--2nd "ChildSpawns" entry, etc.
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	180,		360},
					{"Count",	2,			3}		--1,		1		(6,			12)
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
					{"Count",	2,			4}		--2,		2		(6,			12)
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	140,		280},
					{"Count",	2,			4}		--2,		2		(4,			16)
				}
			},
			{--2nd "ChildSpawns" entry, etc.
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	140,		240},
					{"Count",	1,			3}		--1,		1		(2,			6)
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
					{"Count",	2,			4}		--2,		2
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	140,		280},	--100,		120
					{"Count",	2,			4}		--2,		2
				}
			},
			{--2nd "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	140,		240},	--100,		120
					{"Count",	1,			3}		--1,		1
				}
			},
			{--3rd "ChildSpawns" entry		(added in the NMS v4.4 update)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	140,		280},	--100,		120
					{"Count",	2,			4}		--2,		2
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
					{"Count",	3,			4}		--3,		3
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
					{"Count",	1,			2}		--1,		1		(1,			6)
				}
			},
			{--BOUNTY2					RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	2,			3}		--1,		1		(3,			12)
				}
			},
			{--BOUNTY3					RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	3,			4}		--1,		1		(3,			9)
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
					{"Count",	1,			1}		--1,		1		(1,			6)
				}
			},
			{--EASYBOUNTY2			
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			1}		--1,		1		(2,			8)		[2,	4]
				}
			},
			{--MEDBOUNTY1
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			1}		--1,		1		(3,			12)		[1,	3]
				}
			},
			{--MEDBOUNTY2
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			1}		--1,		1		(4,			12)		[1,	3]	(in the original mod, it seems these entries accidentally changed the "Scale" for MEDBOUNTY2 instead of changing the "Spread")
				}
			},
			{--HARDBOUNTY1
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	2,			2}		--1,		1		(3,			9)		[2,	3]
				}
			},
			{--HARDBOUNTY2
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	2,			2}		--3,		3		(6,			6)		[2,	3]
				}
			},
			{--WEAPGUY_BOUNTY		Base Armourer mission
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	2,			2}		--2,		2		(4,			8)
				}
			},
			{--PIRATE_SQUAD			Unknown function
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	800,		800},
					{"Count",	6,			6}		--6,		6		(9,			18)		[6,		10]
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

--THe following functions allow to add new custom ship Behaviours / Shields (Basically to allow for some Easy/Med/Hard variations of Behaviours as in pre-v3.85 NMS)
function AddPlanetBehaviour (BehaviourID)
    return
[[<Property value="GcShipAIAttackData.xml">
      <Property name="Id" value="]]..BehaviourID..[[" />
      <Property name="GunDispersionAngle" value="5" />
      <Property name="GunFireRate" value="0.15" />
      <Property name="LaserHealthPoint" value="50" />
      <Property name="AttackWeaponRange" value="500" />
      <Property name="AttackAngle" value="30" />
      <Property name="AttackShootWaitTime" value="0.1" />
      <Property name="AttackShootTimeMin" value="2.5" />
      <Property name="AttackShootTimeMax" value="5" />
      <Property name="AttackReadyTime" value="0.3" />
      <Property name="AttackMaxTime" value="6" />
      <Property name="AttackApproachOffset" value="150" />
      <Property name="AttackApproachMinRange" value="300" />
      <Property name="AttackApproachMaxRange" value="650" />
      <Property name="AttackTooCloseRange" value="150" />
      <Property name="AttackFlybyOffset" value="150" />
      <Property name="AttackBoostTimeToRange" value="1.5" />
      <Property name="AttackBoostRange" value="550" />
      <Property name="AttackBoostAngle" value="40" />
      <Property name="AttackTurnMultiplier" value="1" />
      <Property name="AttackMaxPlanetHeight" value="1000" />
      <Property name="AttackTurnMultiplierMax" value="1" />
      <Property name="AttackTurnMaxMinTime" value="3" />
      <Property name="AttackTurnMaxTimeRange" value="6" />
      <Property name="NumHitsBeforeBail" value="3000" />
      <Property name="NumHitsBeforeReposition" value="1000" />
      <Property name="FleeBrake" value="0.8" />
      <Property name="FleeBoost" value="3" />
      <Property name="FleeBrakeTime" value="0.5" />
      <Property name="FleeRepositionTime" value="5" />
      <Property name="FleeRepositionAngleMin" value="35" />
      <Property name="FleeRepositionAngleMax" value="100" />
      <Property name="FleeUrgentBrake" value="0.8" />
      <Property name="FleeUrgentBoost" value="1.8" />
      <Property name="FleeUrgentBrakeTime" value="0.4" />
      <Property name="FleeRepositionUrgentTime" value="2" />
      <Property name="FleeRepositionUrgentAngleMin" value="50" />
      <Property name="FleeRepositionUrgentAngleMax" value="145" />
      <Property name="FleeRange" value="400" />
      <Property name="FleeMinTime" value="4" />
      <Property name="FleeMaxTime" value="8" />
      <Property name="FleeUrgentRange" value="75" />
      <Property name="PlanetFleeHeightExtra" value="240" />
      <Property name="AttackTargetMinRange" value="200" />
      <Property name="AttackTargetMaxRange" value="1000" />
      <Property name="AttackTargetOffsetMin" value="-200" />
      <Property name="AttackTargetOffsetMax" value="500" />
      <Property name="AttackTargetSwitchTargetTime" value="10" />
    </Property>]]
end

function AddSpaceBehaviour (BehaviourID)
    return
[[<Property value="GcShipAIAttackData.xml">
      <Property name="Id" value="]]..BehaviourID..[[" />
      <Property name="GunDispersionAngle" value="5.5" />
      <Property name="GunFireRate" value="0.15" />
      <Property name="LaserHealthPoint" value="50" />
      <Property name="AttackWeaponRange" value="700" />
      <Property name="AttackAngle" value="30" />
      <Property name="AttackShootWaitTime" value="1" />
      <Property name="AttackShootTimeMin" value="1" />
      <Property name="AttackShootTimeMax" value="3" />
      <Property name="AttackReadyTime" value="0.5" />
      <Property name="AttackMaxTime" value="10" />
      <Property name="AttackApproachOffset" value="180" />
      <Property name="AttackApproachMinRange" value="300" />
      <Property name="AttackApproachMaxRange" value="800" />
      <Property name="AttackTooCloseRange" value="90" />
      <Property name="AttackFlybyOffset" value="50" />
      <Property name="AttackBoostTimeToRange" value="1.5" />
      <Property name="AttackBoostRange" value="2000" />
      <Property name="AttackBoostAngle" value="15" />
      <Property name="AttackTurnMultiplier" value="1.15" />
      <Property name="AttackMaxPlanetHeight" value="100" />
      <Property name="AttackTurnMultiplierMax" value="1" />
      <Property name="AttackTurnMaxMinTime" value="1" />
      <Property name="AttackTurnMaxTimeRange" value="5" />
      <Property name="NumHitsBeforeBail" value="3000" />
      <Property name="NumHitsBeforeReposition" value="2000" />
      <Property name="FleeBrake" value="1" />
      <Property name="FleeBoost" value="8" />
      <Property name="FleeBrakeTime" value="3" />
      <Property name="FleeRepositionTime" value="3.5" />
      <Property name="FleeRepositionAngleMin" value="140" />
      <Property name="FleeRepositionAngleMax" value="180" />
      <Property name="FleeUrgentBrake" value="2" />
      <Property name="FleeUrgentBoost" value="2" />
      <Property name="FleeUrgentBrakeTime" value="3" />
      <Property name="FleeRepositionUrgentTime" value="1" />
      <Property name="FleeRepositionUrgentAngleMin" value="180" />
      <Property name="FleeRepositionUrgentAngleMax" value="180" />
      <Property name="FleeRange" value="650" />
      <Property name="FleeMinTime" value="0.5" />
      <Property name="FleeMaxTime" value="10" />
      <Property name="FleeUrgentRange" value="100" />
      <Property name="PlanetFleeHeightExtra" value="200" />
      <Property name="AttackTargetMinRange" value="250" />
      <Property name="AttackTargetMaxRange" value="600" />
      <Property name="AttackTargetOffsetMin" value="100" />
      <Property name="AttackTargetOffsetMax" value="500" />
      <Property name="AttackTargetSwitchTargetTime" value="10" />
    </Property>]]
end

function AddSquadronBehaviour (BehaviourID)
    return
[[<Property value="GcShipAIAttackData.xml">
      <Property name="Id" value="]]..BehaviourID..[[" />
      <Property name="GunDispersionAngle" value="4" />
      <Property name="GunFireRate" value="0.2" />
      <Property name="LaserHealthPoint" value="15" />
      <Property name="AttackWeaponRange" value="850" />
      <Property name="AttackAngle" value="40" />
      <Property name="AttackShootWaitTime" value="2" />
      <Property name="AttackShootTimeMin" value="1.5" />
      <Property name="AttackShootTimeMax" value="2.5" />
      <Property name="AttackReadyTime" value="1" />
      <Property name="AttackMaxTime" value="8" />
      <Property name="AttackApproachOffset" value="200" />
      <Property name="AttackApproachMinRange" value="350" />
      <Property name="AttackApproachMaxRange" value="600" />
      <Property name="AttackTooCloseRange" value="200" />
      <Property name="AttackFlybyOffset" value="-200" />
      <Property name="AttackBoostTimeToRange" value="1.5" />
      <Property name="AttackBoostRange" value="2250" />
      <Property name="AttackBoostAngle" value="10" />
      <Property name="AttackTurnMultiplier" value="1.25" />
      <Property name="AttackMaxPlanetHeight" value="100" />
      <Property name="AttackTurnMultiplierMax" value="1" />
      <Property name="AttackTurnMaxMinTime" value="1" />
      <Property name="AttackTurnMaxTimeRange" value="4" />
      <Property name="NumHitsBeforeBail" value="800" />
      <Property name="NumHitsBeforeReposition" value="1100" />
      <Property name="FleeBrake" value="1" />
      <Property name="FleeBoost" value="6" />
      <Property name="FleeBrakeTime" value="15" />
      <Property name="FleeRepositionTime" value="10" />
      <Property name="FleeRepositionAngleMin" value="90" />
      <Property name="FleeRepositionAngleMax" value="180" />
      <Property name="FleeUrgentBrake" value="1.5" />
      <Property name="FleeUrgentBoost" value="1.5" />
      <Property name="FleeUrgentBrakeTime" value="3" />
      <Property name="FleeRepositionUrgentTime" value="3" />
      <Property name="FleeRepositionUrgentAngleMin" value="180" />
      <Property name="FleeRepositionUrgentAngleMax" value="180" />
      <Property name="FleeRange" value="600" />
      <Property name="FleeMinTime" value="1.5" />
      <Property name="FleeMaxTime" value="8" />
      <Property name="FleeUrgentRange" value="100" />
      <Property name="PlanetFleeHeightExtra" value="200" />
      <Property name="AttackTargetMinRange" value="300" />
      <Property name="AttackTargetMaxRange" value="600" />
      <Property name="AttackTargetOffsetMin" value="100" />
      <Property name="AttackTargetOffsetMax" value="500" />
      <Property name="AttackTargetSwitchTargetTime" value="10" />
    </Property>]]
end

function AddShield (ShieldID)
    return
[[<Property value="GcSpaceshipShieldData.xml">
      <Property name="Id" value="]]..ShieldID..[[" />
      <Property name="Health" value="5600" />
      <Property name="LevelledExtraHealth" value="19000" />
      <Property name="RechargeTime" value="5" />
      <Property name="RechargeDelayTime" value="6" />
	  <Property name="StartDepletedWhenEnabled" value="False" />
      <Property name="DamageMulOverride" value="" />
    </Property>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["LUA_AUTHOR"]		= LuaAuthor,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
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
},
{["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN",
["EXML_CHANGE_TABLE"] = {
	--Adding new custom Behaviours and Shields
	{
		["PRECEDING_KEY_WORDS"] = {"BehaviourTable",	"GcShipAIAttackData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPlanetBehaviour ("PLANET_EZ")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"BehaviourTable",	"GcShipAIAttackData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPlanetBehaviour ("PLANET_HRD")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"BehaviourTable",	"GcShipAIAttackData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddSpaceBehaviour ("SPACE_EZ")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"BehaviourTable",	"GcShipAIAttackData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddSpaceBehaviour ("SPACE_HRD")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"BehaviourTable",	"GcShipAIAttackData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddSquadronBehaviour ("SQUADRON_MED")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"ShieldTable",	"GcSpaceshipShieldData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddShield ("SLOW_STRONG")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"ShieldTable",	"GcSpaceshipShieldData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddShield ("HUGE")
	},
	
	--Definitions
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_NOSHIELD"},				--Added in NMS v4.4
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
		}},
	--The following were added in NMS v4.4:
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER"},					--Neutral Freighters?
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
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
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*7000)},					--default 7000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*18000)},	--default 18000
		{"Shield", ""},				--default ""
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER_CAP"},					--Neutral Capital Freighters?
	["PRECEDING_FIRST"] = "True",
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
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FREIGHT"},					--Pirate Freighters?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*105000)},					--default 105000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*995000)},	--default 995000
		{"Shield", "PIRATE_FREIGHT"},				--default "PIRATE_FREIGHT"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FRIG"},					--Pirate Frigates?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_EASY"},		--default "SPACE_EASY"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*13125)},					--default 13125
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*124375)},	--default 124375
		{"Shield", ""},				--default ""
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","CIV_LEADER"},					--Civilian freighter fighting pirate freighter?
	["PRECEDING_FIRST"] = "True",
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
	--[[	Deprecated as of NMS v3.85
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","AI_EASY"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 25000},			--default 6200
		{"LaserDamageLevel", 1},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","AI_MEDIUM"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 32000},			--default 8000
		{"LaserDamageLevel",2},		--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","AI_HARD"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 56000},			--default 14000
		{"LaserDamageLevel", 3},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","AI_SOLO"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 120000},			--default 30000
		{"LaserDamageLevel", 3},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FREIGHT"},			--Note, this does not seem to control the pirates in the Frieghter-pirate battles, at least not the ones with Capital Freighters
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 18000},			--default 3600
		{"LaserDamageLevel", 1},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADE_EASY"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 24000},			--default 6000
		{"LaserDamageLevel", 1},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADE_MED"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 32000},			--default 8000
		{"LaserDamageLevel",2},		--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADE_HARD"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 56000},			--default 14000
		{"LaserDamageLevel", 3},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","BOUNTY"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 800000},			--default 20000
		{"LaserDamageLevel", 3},	--default 1
		}},]]
	
	--Behaviours
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_EZ"},				--Custom Behaviour
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	--[[	Deprecated as of NMS v3.85
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE"},
	["PRECEDING_FIRST"] = "True",
	--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml"}, --PIRATE
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 2.8},						--X
		{"GunFireRate", 0.075},								--X 0.07
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 1500},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 10},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 800},
		{"AttackApproachMinRange", 40},						--(40)
		{"AttackTooCloseRange", 120},						--250	(0)
		{"AttackFlybyOffset", -200},
		{"AttackBoostAngle", 10},
		{"NumHitsBeforeBail", 1200},						--600
		}},
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --EASY
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 3.5},						--X
		{"GunFireRate", 0.085},								--X	0.12
		{"LaserHealthPoint", 0},
		{"AttackWeaponRange", 1000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 10},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 800},
		{"AttackApproachMinRange", 40},						--(40)
		{"AttackTooCloseRange", 150},						--250	(0)
		{"AttackFlybyOffset", -200},
		{"AttackBoostAngle", 10},
		{"NumHitsBeforeBail", 900},							--600
		}},
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --MEDIUM
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 2.8},						--X
		{"GunFireRate", 0.07},							--X	0.1
		{"LaserHealthPoint", 25},
		{"AttackWeaponRange", 1500},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 10},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 800},
		{"AttackApproachMinRange", 40},						--(40)
		{"AttackTooCloseRange", 120},						--250	(0)
		{"AttackFlybyOffset", -200},
		{"AttackBoostAngle", 10},
		{"NumHitsBeforeBail", 2000},						--1000
		}},	
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --HARD
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.5},						--X
		{"GunFireRate", 0.06},							--X	0.05
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 100},						--150	(0)
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 2500},						--1000
		}},			
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --SOLO
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1},
		{"GunFireRate", 0.04},	--0.05
		{"LaserHealthPoint", 75},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 100},						--50	(0)
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 3000},						--2000
		}},		
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --POLICE
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.5},						--X
		{"GunFireRate", 0.05},						--X	0.06
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 120},						--150	(0)
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 2000},							--600
		}},		
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --TRADER		(added by Xen0nex)
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.5},						--X
		{"GunFireRate", 0.05},						--X	0.06
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 120},						--150	(0)
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 900},							--600
		}},		
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --BOUNTY
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1},						--X
		{"GunFireRate", 0.04},						--X 0.05
		{"LaserHealthPoint", 75},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 120},						--150	(0)
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 1500},							--600
		}},	
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --PIRATE_FREIGHT
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 2},
		{"GunFireRate", 0.06},	--0.06
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 2000},
		{"AttackAngle", 50},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 120},						--150	(150)
		{"AttackFlybyOffset", -200},
		{"NumHitsBeforeBail", 900},							--600
		}},]]
	
	--Engines
		--Applying the same PowerSettingEngineMul multiplier from "PTSd Power Settings.lua" to BoostSpeed, to compensate how diverting power to engines makes it easier to escape pirates
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_EASY"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--10
		{"MaxSpeed", 140},									--60		(200)
		{"BoostSpeed", 1067*1.3},								--900		NOTE: Often you can still outrun enemy ships even if your ship's "CombatEngine" 's "BoostMaxSpeed" is only ~75% of this value, presumably due to how the enemy ships occassionally stop boosting when pursuing the player
		{"TurnMin", 0.6},									--0.6
		{"DirectionBrake", 4},								--5
		{"Roll", 2},										--1
		{"MinHeight", 15},									--30
		{"Hovering", "False"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_HARD"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--20
		{"MaxSpeed", 200},									--90		(250)
		{"BoostSpeed", 1600*1.3},								--1200		(e.g. a value of 1600 means in practice you can generally outrun them with ~1200u/s space combat speed)
		{"TurnMin", 0.7},									--0.7
		{"DirectionBrake", 2.5},							--3
		{"Roll", 1.2},										--0.6
		{"MinHeight", 15},									--30
		{"Hovering", "False"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_EASY"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--50
		{"MaxSpeed", 100},									--80
		{"BoostSpeed", 120*1.3},								--180
		{"TurnMin", 0.6},									--0.4
		{"DirectionBrake", 2.5},							--3
		{"Roll", 2},										--1
		{"MinHeight", 25},									--50
		{"Hovering", "True"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_HARD"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 15},									--60
		{"MaxSpeed", 160},									--130
		{"BoostSpeed", 180*1.3},								--180
		{"TurnMin", 1.2},									--0.8
		{"DirectionBrake", 1},								--1.2
		{"Roll", 2},										--1
		{"MinHeight", 12},									--25
		{"Hovering", "True"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--10
		{"MaxSpeed", 60},									--60
		{"BoostSpeed", 120*1.3},								--120
		{"TurnMin", 1},										--1
		{"DirectionBrake", 20},								--20
		{"Roll", 1},										--1
		{"MinHeight", 20},									--30
		{"Hovering", "False"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_SLOW"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 0},									--0
		{"MaxSpeed", 200},									--200
		{"BoostSpeed", 1200},								--1000
		{"TurnMin", 0.6},									--0.6
		{"DirectionBrake", 8},								--8
		{"Roll", 1},										--1
		{"MinHeight", 30},									--30
		{"Hovering", "False"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_FAST"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 0},									--0
		{"MaxSpeed", 300},									--300
		{"BoostSpeed", 1800},								--1500
		{"TurnMin", 0.8},									--0.8
		{"DirectionBrake", 10},								--10
		{"Roll", 1.5},										--1.5
		{"MinHeight", 15},									--15
		{"Hovering", "False"},								--"False"
		}},
	--[[	Deprecated as of NMS v3.85
	{--["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml"}, --STANDARD
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},
		{"MaxSpeed", 200},
		{"BoostSpeed", 1200},
		{"TurnMin", 0.6},
		{"DirectionBrake", 4},
		{"PlanetMinSpeed", 10},
		{"PlanetMaxSpeed", 120},
		{"PlanetDirectionBrake", 5.2},
		{"Roll", 2},
		{"MinHeight", 15},
		{"Hovering", "True"},
		}},	
	{--["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml"}, --SOLO
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},
		{"MaxSpeed", 250},
		{"BoostSpeed", 3000},
		{"TurnMin", 0.6},
		{"DirectionBrake", 2.5},
		{"PlanetMinSpeed", 10},
		{"PlanetMaxSpeed", 120},
		{"PlanetDirectionBrake", 5.2},
		{"Roll", 2},
		{"MinHeight", 15},
		{"Hovering", "False"},
		}},	
	{--["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml"}, --PIRATE
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},
		{"MaxSpeed", 250},
		{"BoostSpeed", 3000},
		{"TurnMin", 0.6},
		{"DirectionBrake", 4},
		{"PlanetMinSpeed", 10},
		{"PlanetMaxSpeed", 140},
		{"PlanetDirectionBrake", 5.2},
		{"Roll", 3},
		{"MinHeight", 50},
		{"Hovering", "False"},
		}},
	{--["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml"}, --POLICE
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},
		{"MaxSpeed", 250},
		{"BoostSpeed", 3000},
		{"TurnMin", 0.6},
		{"DirectionBrake", 4},
		{"PlanetMinSpeed", 10},
		{"PlanetMaxSpeed", 140},
		{"PlanetDirectionBrake", 5.2},
		{"Roll", 4},
		{"MinHeight", 30},
		{"Hovering", "False"},
		}},	
	{--["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml"}, --BOUNTY
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},
		{"MaxSpeed", 400},
		{"BoostSpeed", 3000},
		{"TurnMin", 0.6},
		{"DirectionBrake", 4},
		{"PlanetMinSpeed", 10},
		{"PlanetMaxSpeed", 140},
		{"PlanetDirectionBrake", 5.2},
		{"Roll", 2},
		{"MinHeight", 30},
		{"Hovering", "False"},
		}},]]
	
	--Shields
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER"},			--added in NMS v4.4
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(1*25000*1)},								--25000
		{"LevelledExtraHealth", math.floor(1*120000*1)},					--120000
		{"RechargeTime", 0},										--0
		{"RechargeDelayTime", 0},									--0
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","CIVLEAD_SHIELD"},		--added in NMS v4.4
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(1*5000000*1)},								--5000000
		{"LevelledExtraHealth", math.floor(1*19000*1)},					--19000
		{"RechargeTime", 0},										--0
		{"RechargeDelayTime", 0},									--0
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FREIGHT"},		--added in NMS v4.4
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(1*10000000*1)},								--10000000
		{"LevelledExtraHealth", math.floor(1*0*1)},					--0
		{"RechargeTime", 0},										--0
		{"RechargeDelayTime", 0},									--0
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","WEAK"},					--added in NMS v4.4
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*1200*0.75)},								--1200
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*12000*0.75)},					--12000
		{"RechargeTime", 18},										--10
		{"RechargeDelayTime", 10},									--12
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","STANDARD"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*5600*0.667)},								--5600
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*19000*0.667)},					--19000
		{"RechargeTime", 11},										--5
		{"RechargeDelayTime", 6},									--6
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","STRONG"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*10000*0.75)},								--10000
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*35000*0.667)},					--35000
		{"RechargeTime", 18},										--8
		{"RechargeDelayTime", 10},									--10
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","FAST"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*2000)},								--2000
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*10000*0.667)},					--10000
		{"RechargeTime", 4},										--1
		{"RechargeDelayTime", 4},									--3
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","FAST_STRONG"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*10000*0.75)},								--10000
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*25000*0.75)},					--25000
		{"RechargeTime", 8},										--3
		{"RechargeDelayTime", 5},									--4
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","NULL"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*0)},									--0
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*0)},						--0
		{"RechargeTime", 5},										--5
		{"RechargeDelayTime", 10},									--10
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SLOW_STRONG"},					--Custom Shield
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*15000)},										--Custom	[60000]
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*38000)},					--Custom	[150000]
		{"RechargeTime", 54},										--Custom	[48]
		{"RechargeDelayTime", 6},									--Custom	[4]
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","HUGE"},							--Custom Shield
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*23000)},								--Custom	[90000]
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*55000)},					--Custom	[220000]
		{"RechargeTime", 72},										--Custom	[96]
		{"RechargeDelayTime", 12},									--Custom	[12]
		}},
	}}
}}}}

local ChangesToLargerBattles = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

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
	
			ChangesToLargerBattles_temp =
			{
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] 		= "",
				["PRECEDING_FIRST"] = "True",
				["PRECEDING_KEY_WORDS"] = {SceneID,ChildLevel1,ChildLevel2,ChildLevel3,ChildLevel4,ChildLevel5,ChildLevel6,ChildLevel7,ChildLevel8,ChildLevel9,ChildLevel10,ChildLevel11,ChildLevel12,ChildLevel13},
				--["PRECEDING_KEY_WORDS"] = {ChildLevel},
				["SPECIAL_KEY_WORDS"] = {SpreadCount,"Vector2f.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"x", ReplacerX},
					{"y", ReplacerY}
				}
			}
			ChangesToLargerBattles[#ChangesToLargerBattles+1] = ChangesToLargerBattles_temp
		end
	end
end